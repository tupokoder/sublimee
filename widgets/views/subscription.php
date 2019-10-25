<?php
use yii\widgets\ActiveForm;
use yii\helpers\Html;
use yii\widgets\Pjax;
?>
<div class="sidebar_section subscription">
    <h4>Подписка</h4>
    <?php Pjax::begin(['enablePushState' => false, 'id' => 'pjax_form']); ?>
    <?php $form = ActiveForm::begin([
        'action' => yii\helpers\Url::to(['site/subscription']),
        'options' => [
            'data-pjax' => true,
        ],
    ]); ?>
    <?=$form->field($model, 'email')->textInput(['placeholder'=>'E-mail'])->label(false);?>
    <?=Html::submitButton('Подписаться',  ['class' => 'submit btn btn-default']); ?>
    <?php ActiveForm::end(); ?>
    <?php Pjax::end(); ?>
    <div style="clear:both;"></div>
</div>