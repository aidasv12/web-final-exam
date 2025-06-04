<?php
namespace App\Controller;

use App\Model\Post;
use App\Model\PostView;

class PostViewController {

    public static function generateRandomViews() {
        $posts = Post::all();

        PostView::truncate();

        foreach ($posts as $post) {
            $viewsCount = rand(100, 1000);

            PostView::create([
                'post_id' => $post->id,
                'user_id' => null,
                'views' => $viewsCount,
                // حذف viewed_at
            ]);
        }

        return "Random post views generated successfully.";
    }

    public function index() {
        $postViews = PostView::with('post')->get();
        return view('post_views/index.php', ['postViews' => $postViews]);
    }
}
