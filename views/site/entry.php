<?php
/**
 * Created by PhpStorm.
 * User: Andrey
 * Date: 06.06.2018
 * Time: 19:04
 */

use yii\helpers\Html;
use yii\widgets\ActiveForm;

?>

<?php $form = ActiveForm::begin(); ?>

<?= $form->field($model, 'firstName') ?>

<?= $form->field($model, 'lastName') ?>

<?= $form->field($model, 'email') ?>

<?= $form->field($model, 'password') ?>

<div class="form-group">
    <?= Html::submitButton('Submit', ['class' => 'btn btn-primary']) ?>
</div>

<?php ActiveForm::end(); ?>
