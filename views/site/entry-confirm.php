<?php
/**
 * Created by PhpStorm.
 * User: Andrey
 * Date: 06.06.2018
 * Time: 19:01
 */
use yii\helpers\Html;
?>

<p>You have entered the following information:</p>

<ul>
    <li><label>First Name</label>: <?= Html::encode($model->firstName) ?></li>
    <li><label>Last Name</label>: <?= Html::encode($model->lastName) ?></li>
    <li><label>Email</label>: <?= Html::encode($model->email) ?></li>
    <li><label>Password</label>: <?= Html::encode($model->password) ?></li>
</ul>
