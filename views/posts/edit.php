<?php include(ROOT_PATH . '/views/header_user.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Edit Post</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous" />
</head>
<body>
<div class="container my-5">
    <h1 class="mb-4">Edit Post</h1>

    <?php if (!empty($error)): ?>
        <div class="alert alert-danger"><?= htmlspecialchars($error) ?></div>
    <?php endif; ?>

    <?php if (!empty($post)): ?>
    <form action="/webprogramming3/post/update" method="POST" class="mx-auto" style="max-width:600px;">
        <input type="hidden" name="id" value="<?= htmlspecialchars($post->id) ?>" />
        <div class="mb-3">
            <label for="title" class="form-label">Title</label>
            <input
                type="text"
                name="title"
                id="title"
                class="form-control"
                required
                value="<?= htmlspecialchars($post->title) ?>"
            />
        </div>
        <div class="mb-3">
            <label for="body" class="form-label">Text</label>
            <textarea
                name="body"
                id="body"
                class="form-control"
                rows="6"
                required
            ><?= htmlspecialchars($post->body) ?></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
        <a href="/webprogramming3/post" class="btn btn-secondary ms-2">Cancel</a>
    </form>
    <?php else: ?>
        <div class="alert alert-warning">Post data not available.</div>
        <a href="/webprogramming3/post" class="btn btn-secondary">Back to Posts</a>
    <?php endif; ?>
</div>
</body>
</html>
<?php include(ROOT_PATH . '/views/footer.php'); ?>