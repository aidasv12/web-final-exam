<?php 

namespace App\Controller; 

use App\Model\Post;

class PostController {

    public static function index() {
        if (!isloggedin()) {
            return redirect('/webprogramming3/login');
        }
        $posts = Post::where('user_id', $_SESSION['user_id'])->get();
        
        return view("posts/index.php", ['posts' => $posts]);
    }

    public static function create() {
        if (!isloggedin()) {
            return redirect('/webprogramming3/login');
        }
        return view("posts/create.php");
    }

    public static function show() {
        if (!isloggedin()) {
            return redirect('/webprogramming3/login');
        }
        $id = $_GET['id'] ?? 0;
        $post = Post::find($id);

        if (!$post || $post->user_id != $_SESSION['user_id']) {
            return view('posts/show.php', ['error' => 'Post not found or unauthorized']);
        }

        return view('posts/show.php', ['post' => $post]);
    }

    public static function store() {
        if (!isloggedin()) {
            return redirect('/webprogramming3/login');
        }

        $title = $_POST['title'] ?? '';
        $body = $_POST['body'] ?? '';
        $user_id = $_SESSION['user_id'];

        if (empty($title) || empty($body)) {
            return redirect('/webprogramming3/post/create?error=empty_fields');
        }

        Post::create([
            'title'   => $title,
            'body'    => $body,
            'user_id' => $user_id
        ]);

        return redirect("/webprogramming3/post?success=created");
    }

    public static function edit() {
        if (!isloggedin()) {
            return redirect('/webprogramming3/login');
        }

        $id = $_GET['id'] ?? 0;
        $post = Post::find($id);

        if (!$post || $post->user_id != $_SESSION['user_id']) {
            return view('posts/edit.php', ['error' => 'Post not found or unauthorized']);
        }

        return view('posts/edit.php', ['post' => $post]);
    }

    public static function update() {
    if (!isloggedin()) {
        return redirect('/webprogramming3/login');
    }

    $id = $_POST['id'] ?? 0;
    $title = $_POST['title'] ?? '';
    $body = $_POST['body'] ?? '';

    $post = Post::find($id);

    if (!$post || $post->user_id != $_SESSION['user_id']) {
        return redirect("/webprogramming3/post/edit?id=$id&error=unauthorized");
    }

    if (empty($title) || empty($body)) {
        return redirect("/webprogramming3/post/edit?id=$id&error=empty_fields");
    }

    // اینجا باید روی شیء فراخوانی کنید
    $post->update([
        'title' => $title,
        'body'  => $body
    ]);

    return redirect("/webprogramming3/post/show?id=$id&success=updated");
}


    public static function destroy() {
    if (!isloggedin()) {
        return redirect('/webprogramming3/login');
    }

    $id = $_POST['id'] ?? 0;
    $post = Post::find($id);

    if (!$post || $post->user_id != $_SESSION['user_id']) {
        return redirect('/webprogramming3/post?error=unauthorized');
    }

    // اینجا هم باید روی شیء فراخوانی کنید
    $post->delete();

    return redirect('/webprogramming3/post?success=deleted');
}

}