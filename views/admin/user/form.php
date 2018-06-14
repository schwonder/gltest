<?php
/**
 * Created by PhpStorm.
 * User: Andrey
 * Date: 10.06.2018
 * Time: 21:11
 */

use yii\widgets\ActiveForm;

?>
<?php $form = ActiveForm::begin()?>
<?= $form->field($user, 'first_name')->textInput() ?>
<?= $form->field($user, 'last_name')->input('text') ?>
<?= $form->field($user, 'email')->input('email') ?>
<?= $form->field($user, 'password')->passwordInput() ?>
<button type="submit">Save</button>
<?php ActiveForm::end()?>
