<?php include(ROOT_PATH . '/views/header_user.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Show Post</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous" />
</head>
<body>
<div class="container my-5">
    <?php if (!empty($error)): ?>
        <div class="alert alert-danger"><?= htmlspecialchars($error) ?></div>
        <a href="/webprogramming3/post" class="btn btn-secondary mt-3">Back to Posts</a>
    <?php elseif (!empty($post)): ?>
        <h1 class="mb-3"><?= htmlspecialchars($post->title) ?></h1>
        <p style="white-space: pre-wrap;"><?= htmlspecialchars($post->body) ?></p>
        <a href="/webprogramming3/post" class="btn btn-secondary mt-4">Back to Posts</a>
    <?php else: ?>
        <div class="alert alert-warning">No post data available.</div>
        <a href="/webprogramming3/post" class="btn btn-secondary mt-3">Back to Posts</a>
    <?php endif; ?>
</div>
</body>
</html>
<?php include(ROOT_PATH . '/views/footer.php'); ?>