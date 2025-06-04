<h1>لیست پست‌های مرتبط</h1>
<ul>
<?php foreach ($relations as $item): ?>
    <li><?= $item->post_1_id ?> ➝ <?= $item->post_2_id ?></li>
<?php endforeach; ?>
</ul>
