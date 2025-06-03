<?php include(ROOT_PATH . '/views/header_user.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Create Post</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous" />
</head>
<body>
<div class="container my-5">
    <h1 class="mb-4">Create Post</h1>

    <?php if (!empty($_GET['error'])): ?>
        <div class="alert alert-danger">
            <?php
                if ($_GET['error'] === 'empty_fields') {
                    echo "Please fill in all fields.";
                } else {
                    echo htmlspecialchars($_GET['error']);
                }
            ?>
        </div>
    <?php endif; ?>

    <form action="/webprogramming3/post/store" method="POST" class="mx-auto" style="max-width:600px;">
        <div class="mb-3">
            <label for="title" class="form-label">Title</label>
            <input
                type="text"
                name="title"
                id="title"
                class="form-control"
                placeholder="Enter post title"
                required
                value="<?= isset($_POST['title']) ? htmlspecialchars($_POST['title']) : '' ?>"
            />
        </div>
        <div class="mb-3">
            <label for="body" class="form-label">Text</label>
            <textarea
                name="body"
                id="body"
                class="form-control"
                rows="6"
                placeholder="Enter your post content"
                required
            ><?= isset($_POST['body']) ? htmlspecialchars($_POST['body']) : '' ?></textarea>
        </div>
        <button type="submit" class="btn btn-success">Save</button>
        <a href="/webprogramming3/post" class="btn btn-secondary ms-2">Cancel</a>
    </form>
</div>
</body>
</html>
<?php include(ROOT_PATH . '/views/footer.php'); ?>