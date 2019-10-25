<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\ProductSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="catalog-search" style="margin-top: 7%">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>
<!---->
<!--    --><?//= $form->field($model, 'id_product') ?>

    <?= $form->field($model, 'titleproduct') ?>

<!--    --><?//= $form->field($model, 'price') ?>

<!--    --><?//= $form->field($model, 'image') ?>
<!---->
<!--    --><?//= $form->field($model, 'typeproduct') ?>

    <?php // echo $form->field($model, 'description') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
<!--        --><?//= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
