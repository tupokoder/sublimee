<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ProductSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
use app\assets\AppCategoriesAssets;
use yii\widgets\ActiveForm;
use yii\widgets\LinkPager;
use yii\widgets\Pjax;

$this->title = 'Каталог товаров';
$this->params['breadcrumbs'][] = $this->title;
AppCategoriesAssets::register($this);
?>
<div class="super_container">

    <div class="home">
        <div class="home_container">
            <div class="home_background" style="background-image:url(/web/images/categories.jpg)"></div>
            <div class="home_content_container">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="home_content">
                                <div class="home_title">Смартфоны<span>.</span></div>
                                <div class="home_text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam a ultricies metus. Sed nec molestie eros. Sed viverra velit venenatis fermentum luctus.</p></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Products -->

    <div class="products">
        <div class="container">
            <div class="row">
                <div class="col">

                    <!-- Product Sorting -->
                    <div class="sorting_bar d-flex flex-md-row flex-column align-items-md-center justify-content-md-start">
                        <div class="results">Показывается   <span><?
                                $count = \app\models\Product::find()->count();
                                echo $count; ?>
                            </span>    элементов</div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div style="margin-bottom: 2%;">
                        <?= Yii::$app->user->identity->username == 'admin' ? Html::a('Create Product', ['create'], ['class' => 'btn btn-success']): ''?>
                    </div>
                    <div class="product_grid">
                        <!-- Product -->
                        <?php foreach ($catalog as $item): ?>
                            <div class="product">
                                <div class="product_image"><?=Html::a(Html::img('/'.$item->image, ['alt' => $item->titleproduct]), ['product', 'id'=>$item->id_product])?>
                                </div>
                                <div style="width: 25%; display: flex; flex-direction: row; align-items: center; justify-content: space-around;">
                                    <?= Yii::$app->user->identity->username == 'admin' ? Html::a(Html::img('/web/images/update_icon.png', ['class' => 'img-fluid', 'alt'=>'update']), ['update', 'id'=>$item->id_product]): '' ?>
                                    <?= Yii::$app->user->identity->username == 'admin' ? Html::a(Html::img('/web/images/delete_icon.png', ['class' => 'img-fluid', 'alt'=>'delete']), ['delete' , 'id'=>$item->id_product], ['data-method'=>'post']): '' ?>
                                </div>
                                <div class="product_content">
                                    <div class="product_title"><?= Html::a(Html::encode($item->titleproduct) , ['product', 'id'=>$item->id_product] )?></div>
                                    <div class="product_price"><?php echo $item->price ?></div>
                                </div>
                            </div>
                        <?php endforeach ?>
                    </div>
                    <div class="product_pagination">
                        <?= LinkPager::widget([
                            'pagination' => $pagination,
                            'prevPageLabel' => false,
                            'nextPageLabel' => false,
                            'options' => ['class' => '']
                        ]) ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Icon Boxes -->

    <div class="icon_boxes">

    </div>

</div>
