<h1>لیست پست‌های مرتبط</h1>

<ul>
    <?php foreach ($relations as $item): ?>
        <li>
            <?= htmlspecialchars($item->post1->title ?? '—') ?> ➝ <?= htmlspecialchars($item->post2->title ?? '—') ?>
        </li>
    <?php endforeach; ?>
</ul>
