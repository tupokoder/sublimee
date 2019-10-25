<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\OrdersSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Заказы';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="test">

</div>
<div class="container">

    <h1><?= Html::encode($this->title) ?></h1>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">id Заказа</th>
            <th scope="col">Фамилия</th>
            <th scope="col">Имя</th>
            <th scope="col">Телефон</th>
            <th scope="col">Адресс доставки</th>
            <th scope="col">Продукт</th>
            <th scope="col">Количество</th>
            <th scope="col">Цена</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($orders as $item): ?>
            <tr>
                <td><?= $item->id_order ?></td>
                <td><?= $item->user->lastname ?></td>
                <td><?= $item->user->firstname ?></td>
                <td><?= $item->user->phone ?></td>
                <td><?= $item->user->address_delivery ?></td>
                <td><?= $item->product ?></td>
                <td><?= $item->quantity ?></td>
                <td><?= $item->price ?></td>
            </tr>
        <?php endforeach ?>
        </tbody>
    </table>
</div>
