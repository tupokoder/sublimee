<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $orders app\models\Orders */
/* @var $form ActiveForm */
/* @var $cart \devanych\cart\Cart */
/* @var $item \devanych\cart\CartItem */
/* @var $buyers app\models\Buyers */

$this->title = 'Оформление заказа';
?>
<div class="container" style="margin-top: 7%">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($buyers, 'firstname') ?>

    <?= $form->field($buyers, 'lastname') ?>

    <?= $form->field($buyers, 'surname') ?>

    <?= $form->field($buyers, 'phone') ?>

    <?= $form->field($buyers, 'address_delivery') ?>

    <? $cartItems = Yii::$app->cart->getItems(); ?>

    <?php foreach ($cartItems as $item): ?>
        <?= $form->field($orders, 'product')->hiddenInput(['value' => $item->getProduct()->titleproduct])->label(false) ?>
    <?php endforeach; ?>

    <?= $form->field($orders, 'quantity')->hiddenInput(['value' => Yii::$app->cart->getTotalCount()])->label(false) ?>

    <?= $form->field($orders, 'price')->hiddenInput(['value' => Yii::$app->cart->getTotalCost() . '$'])->label(false) ?>

    <?= $form->field($orders, 'id_user')->hiddenInput(['value' => ''])->label(false) ?>

    <?= $form->field($orders, 'id_product')->hiddenInput(['value' => $item->getProduct()->id_product])->label(false) ?>

    <div class="form-group">
        <?= Html::submitButton('Submit', ['class' => 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div><!-- cart-Orders -->
