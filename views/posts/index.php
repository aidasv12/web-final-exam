<?php include(ROOT_PATH . '/views/header_user.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>List of Posts</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous" />
</head>
<body>
<div class="container my-5">
    <h1 class="mb-4">List of Posts</h1>

    <?php if (!empty($_GET['success'])): ?>
        <div class="alert alert-success"><?= htmlspecialchars($_GET['success']) ?></div>
    <?php elseif (!empty($_GET['error'])): ?>
        <div class="alert alert-danger"><?= htmlspecialchars($_GET['error']) ?></div>
    <?php endif; ?>

    <div class="mb-3">
        <a href="/webprogramming3/post/create" class="btn btn-success">Add New Post</a>
    </div>

    <?php if (empty($posts)): ?>
        <div class="alert alert-info">No posts found.</div>
    <?php else: ?>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Post Number</th>
                    <th>Title</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($posts as $post): ?>
                <tr>
                    <td><?= htmlspecialchars($post->id) ?></td>
                    <td><?= htmlspecialchars($post->title) ?></td>
                    <td>
                        <a class="btn btn-primary btn-sm" href="/webprogramming3/post/show?id=<?= urlencode($post->id) ?>">Show</a>
                        <a class="btn btn-warning btn-sm" href="/webprogramming3/post/edit?id=<?= urlencode($post->id) ?>">Edit</a>
                        <form action="/webprogramming3/post/delete" method="POST" style="display:inline-block" onsubmit="return confirm('Are you sure?');">
                            <input type="hidden" name="id" value="<?= htmlspecialchars($post->id) ?>">
                            <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                        </form>
                    </td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    <?php endif; ?>
</div>
</body>
</html>
<?php include(ROOT_PATH . '/views/footer.php'); ?>