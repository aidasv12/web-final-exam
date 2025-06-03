<?php if (!empty($_GET['success']) && $_GET['success'] === 'logged_out'): ?>
    <div class="alert alert-success">You have been logged out successfully.</div>
<?php endif; ?>

<?php include(ROOT_PATH . '/views/head.php'); ?>

<?php
// اطمینان از فعال بودن سشن
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
?>

<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>ورود</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center mb-4">login page</h1>

        <?php if (!empty($_SESSION['error'])): ?>
            <div class="alert alert-danger">
                <?php 
                    echo $_SESSION['error']; 
                    unset($_SESSION['error']);
                ?>
            </div>
        <?php endif; ?>

        <form action="/webprogramming3/login" method="POST" class="col-md-6 mx-auto">
            <div class="form-group mb-3">
                <label for="email">Email</label>
                <input type="email" name="email" id="email" class="form-control" placeholder="your email" required />
            </div>
            <div class="form-group mb-4">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" class="form-control" placeholder="your password" required />
            </div>
            <div class="form-group text-center">
                <input type="submit" value="login" class="btn btn-success px-4" />
                <p class="mt-3">
                    Dont have an account<a href="/webprogramming3/register" class="btn btn-link">register</a>
                </p>
            </div>
        </form>
    </div>
</body>
</html>
<?php include(ROOT_PATH . '/views/footer.php'); ?>