<?php
namespace App\Controller;

use App\Model\Post;
use App\Model\RelatedPost;
use App\Model\PostView;

class RankingController {

    public static function showRanking() {
        

        

        $posts = Post::all();
        $postIds = $posts->pluck('id')->toArray();
        $n = count($postIds);

        // بارگذاری تعداد بازدید هر پست در آرایه
        $viewsMap = [];
        foreach ($posts as $post) {
            $postView = PostView::where('post_id', $post->id)->first();
            $viewsMap[$post->id] = $postView ? $postView->views : 0;
        }

        // ساخت ماتریس A صفر با ابعاد n*n
        $A = array_fill(0, $n, array_fill(0, $n, 0.0));

        for ($i = 0; $i < $n; $i++) {
            $postId_i = $postIds[$i];
            $relatedPosts = RelatedPost::where('post_1_id', $postId_i)->get();

            $sumViews = 0;
            foreach ($relatedPosts as $rel) {
                $sumViews += $viewsMap[$rel->post_2_id] ?? 0;
            }

            if ($sumViews == 0) {
                continue;
            }

            foreach ($relatedPosts as $rel) {
                $j = array_search($rel->post_2_id, $postIds);
                if ($j !== false) {
                    $A[$i][$j] = $viewsMap[$rel->post_2_id] / $sumViews;
                }
            }
        }

        $v = self::powerMethod($A, $n);

        $rankedPosts = [];
        foreach ($postIds as $index => $pid) {
            $rankedPosts[] = [
                'post' => $posts->find($pid),
                'score' => $v[$index]
            ];
        }

        usort($rankedPosts, function($a, $b) {
            return $b['score'] <=> $a['score'];
        });

        return view('ranking/index.php', ['rankedPosts' => $rankedPosts]);
    }

    private static function powerMethod($matrix, $n, $iterations = 100, $tolerance = 1e-6) {
        $v = array_fill(0, $n, 1 / $n);

        for ($iter = 0; $iter < $iterations; $iter++) {
            $v_new = array_fill(0, $n, 0.0);

            for ($i = 0; $i < $n; $i++) {
                for ($j = 0; $j < $n; $j++) {
                    $v_new[$i] += $matrix[$i][$j] * $v[$j];
                }
            }

            $sum = array_sum($v_new);
            if ($sum == 0) break;

            for ($i = 0; $i < $n; $i++) {
                $v_new[$i] /= $sum;
            }

            $diff = 0;
            for ($i = 0; $i < $n; $i++) {
                $diff += abs($v_new[$i] - $v[$i]);
            }

            $v = $v_new;

            if ($diff < $tolerance) break;
        }

        return $v;
    }
}
