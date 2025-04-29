<?php
$rows = [
 ['#'=>1, 'first'=>'Ali', 'last'=>'Ahmadi', 'handle'=>'@ali'], ['#'=>2, 'first'=>'Sara', 'last'=>'Kiani', 'handle'=>'@sara'],
];
?>
<!DOCTYPE html>
<html lang="fa">
<head>
<meta charset="UTF-8">
<title>مشاهده اطلاعات</title> <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4">
<h1>اطلاعات</h1>
<table class="table table-striped">
<thead> <tr><th>#</th><th>نام</th><th>نام خانوادگی</th><th>شناسه</th></tr>
</thead>
<tbody>
<?php foreach ($rows as $row): ?>
<tr>
<td><?= $row['#'] ?></td>
<td><?= $row['first'] ?></td>
<td><?= $row['last'] ?></td>
<td><?= $row['handle'] ?></td>
</tr>
<?php endforeach; ?>
</tbody>
</table>
</div>
</body>
</html>