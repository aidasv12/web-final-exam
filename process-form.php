<?php
$name = '';
$last_name = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
 $name = $_POST['name'] ?? '';
 $last_name = $_POST['last_name'] ?? '';
}
?>
<!DOCTYPE html>
<html lang="fa">
<head>
<meta charset="UTF-8">
<title>نتیجه فرم</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4">
<h1>نتیجه ارسال فرم</h1>
<table class="table">
<tr><td>نام:</td><td><?= htmlspecialchars($name) ?></td></tr>
<tr><td>نام خانوادگی:</td><td><?= htmlspecialchars($last_name) ?></td></tr>
</table>
<a href="index.php" class="btn btn-secondary">بازگشت</a>
</div>
</body>
</html>