<?php
namespace App\Controller;

use App\Model\Post;
use App\Model\RelatedPost;

class RelatedPostController {

    // تولید روابط تصادفی بین پست‌ها
    public  function generateRandomRelations() {
        $posts = Post::all();

        // اول پاک می‌کنیم روابط قبلی رو
        RelatedPost::truncate();

        foreach ($posts as $post) {
            // تعداد روابط تصادفی بین 1 تا 3 برای هر پست
            $count = rand(1, 3);

            $relatedIds = [];

            while (count($relatedIds) < $count) {
                $randomPost = $posts->random();

                // شرط اینکه پست خودش نباشد و رابطه تکراری نباشد
                if ($randomPost->id !== $post->id && !in_array($randomPost->id, $relatedIds)) {
                    $relatedIds[] = $randomPost->id;

                    RelatedPost::create([
                        'post_1_id' => $post->id,
                        'post_2_id' => $randomPost->id,
                    ]);
                }
            }
        }

        // بعد از تولید، میتونی redirect یا پیام موفقیت بدی
        return "Related posts generated successfully.";
    }
    public function index()
{
    $relations = \App\Model\RelatedPost::with(['post1', 'post2'])->get();
    view('related_posts/index.php', ['relations' => $relations]);
}

 

}
