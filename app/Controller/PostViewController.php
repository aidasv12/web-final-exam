<?php
namespace App\Controller;

use App\Model\Post;
use App\Model\PostView;

class PostViewController {

    // ساخت بازدیدهای تصادفی برای پست‌ها
    public static function generateRandomViews() {
        $posts = Post::all();

        // پاک کردن داده‌های قبلی
        PostView::truncate();

        foreach ($posts as $post) {
            $viewsCount = rand(100, 1000);

            PostView::create([
                'post_id' => $post->id,
                'user_id' => null, // اگر نیاز به user_id داری، مقداردهی کن
                'viewed_at' => date('Y-m-d H:i:s'),
                'views' => $viewsCount,
            ]);
        }

        // بازگشت پیام موفقیت (می‌توان اینجا به ریدایرکت یا نمایش پیام تغییر داد)
        return "Random post views generated successfully.";
    }

    // نمایش لیست بازدیدها
    public function index() {
        $postViews = PostView::with('post')->get();
        // نام متغیر باید با ویو هماهنگ باشد
        return view('post_views/index.php', ['postViews' => $postViews]);
    }
}
