<?php include(ROOT_PATH . '/views/head.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
</head>
<body>
    <h1 class="text-center mt-4">Register</h1>

    <div class="col-md-6 offset-md-3 mt-3">
        <?php if (!empty($_SESSION['error'])): ?>
            <div class="alert alert-danger">
                <?= $_SESSION['error']; unset($_SESSION['error']); ?>
            </div>
        <?php endif; ?>

        <?php if (!empty($_SESSION['success'])): ?>
            <div class="alert alert-success">
                <?= $_SESSION['success']; unset($_SESSION['success']); ?>
            </div>
        <?php endif; ?>
    </div>

    <form action="/webprogramming3/register" method="POST" class="col-md-6 offset-md-3 mt-2">
        <div class="form-group mb-3">
            <label for="name">Name</label>
            <input type="text" name="name" id="name" class="form-control" placeholder="Your name" required>
        </div>
        <div class="form-group mb-3">
            <label for="email">Email</label>
            <input type="email" name="email" id="email" class="form-control" placeholder="Your email" required>
        </div>
        <div class="form-group mb-3">
            <label for="password">Password</label>
            <input type="password" name="password" id="password" class="form-control" placeholder="Your password" required>
        </div>
        <div class="form-group mb-3">
            <label for="confirm_password">Confirm Password</label>
            <input type="password" name="confirm_password" id="confirm_password" class="form-control" placeholder="Retype password" required>
        </div>
        <div class="form-group mb-3 text-center">
            <input type="submit" value="Register" class="btn btn-success">
            <p class="mt-3">
                Already have an account? <a href="/webprogramming3/login" class="btn btn-primary">Login</a>
            </p>
        </div>
    </form>

    <script>
        document.querySelector('form').addEventListener('submit', function(e) {
            const pass = document.getElementById('password').value;
            const confirm = document.getElementById('confirm_password').value;
            if (pass !== confirm) {
                alert('Passwords do not match.');
                e.preventDefault();
            }
        });
    </script>
</body>
</html>
<?php include(ROOT_PATH . '/views/footer.php'); ?>