<h1>لیست بازدیدهای پست‌ها</h1>

<table border="1" cellpadding="8" cellspacing="0">
    <thead>
        <tr>
            <th>شناسه بازدید</th>
            <th>شناسه پست</th>
            <th>عنوان پست</th>
            <th>تعداد بازدید</th>
            <!-- حذف ستون تاریخ بازدید -->
        </tr>
    </thead>
    <tbody>
        <?php foreach ($postViews as $view): ?>
            <tr>
                <td><?= htmlspecialchars($view->id) ?></td>
                <td><?= htmlspecialchars($view->post_id) ?></td>
                <td><?= htmlspecialchars($view->post->title ?? '—') ?></td>
                <td><?= htmlspecialchars($view->views) ?></td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
