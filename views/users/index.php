<?php
/**
 * Created by PhpStorm.
 * User: Andrey
 * Date: 10.06.2018
 * Time: 15:50
 */

use yii\helpers\Html;
use yii\widgets\LinkPager;
?>
    <h1>Users</h1>
    <ul>
        <?php foreach ($users as $user): ?>
            <li>
                <?= Html::encode("{$user->code} ({$user->firstName})") ?>:
                <?= $user->lastName ?>
                <?= $user->email ?>
                <?= $user->password ?>
            </li>
        <?php endforeach; ?>
    </ul>

<?= LinkPager::widget(['pagination' => $pagination]) ?>