<?php include(ROOT_PATH . '/views/head.php'); ?>

<section class="container my-5 text-center">
    <div class="p-5 bg-light rounded shadow-sm">
        <h1 class="display-4 mb-4">Welcome to the Blog App</h1>
        <p class="lead text-muted mb-4">A simple and clean platform to share your thoughts.</p>

        <?php if (isloggedin()): ?>
            <a href="/webprogramming3/dashboard" class="btn btn-info btn-lg px-5">Go to Dashboard</a>
        <?php endif; ?>
    </div>
</section>


<?php include(ROOT_PATH . '/views/footer.php'); ?>