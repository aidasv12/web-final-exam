<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <title>رتبه‌بندی پست‌ها</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">
    <h1 class="mb-4">رتبه‌بندی پست‌ها بر اساس اهمیت (PageRank)</h1>

    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>ردیف</th>
                <th>عنوان پست</th>
                <th>نویسنده</th>
                <th>امتیاز</th>
            </tr>
        </thead>
        <tbody>
        <?php foreach ($rankedPosts as $index => $item): ?>
            <tr>
                <td><?= $index + 1 ?></td>
                <td><?= htmlspecialchars($item['post']->title ?? '---') ?></td>
                <td><?= htmlspecialchars($item['post']->user->name ?? 'ناشناخته') ?></td>
                <td><?= number_format($item['score'], 4) ?></td>
            </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
</body>
</html>
