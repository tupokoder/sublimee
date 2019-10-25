<?php

//use app\models\Product;
//use yii\helpers\Html;
//use yii\web\View;
use app\assets\AppProduct;
use yii\helpers\Html;

AppProduct::register($this);

/* @var $this yii\web\View */
/* @var $model app\models\Product */

?>
    <!-- Home -->

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

    <!-- Product Details -->

    <div class="product_details">
        <div class="container">
            <div class="row details_row">

                <!-- Product Image -->
                <?php foreach ($catalog as $item): ?>
                    <div class="col-lg-6">
                        <div class="details_image" style="text-align: center">
                            <div class="details_image_large"><?= Html::img('/'.$item->image, ['alt' => $item->titleproduct, 'width' => 500]) ?></div>
                        </div>
                    </div>
                <?php endforeach ?>
                <!-- Product Content -->
                <?php foreach ($catalog as $item): ?>
                    <div class="col-lg-6">
                        <div class="details_content">
                            <div class="details_name"><?php echo $item->titleproduct ?></div>

                            <div class="details_price"><?php echo $item->price ?></div>

                            <!-- Android -->
                            <div class="in_stock_container_one">
                                <div class="availability">Android:</div>
                                <span><?php echo $item->os ?></span>
                            </div>
                            <!-- Display -->
                            <div class="in_stock_container_one">
                                <div class="availability">Display:</div>
                                <span><?php echo $item->display ?></span>
                            </div>
                            <!-- Cpu -->
                            <div class="in_stock_container_one">
                                <div class="availability">CPU:</div>
                                <span><?php echo $item->cpu ?></span>
                            </div>
                            <!-- Camera -->
                            <div class="in_stock_container_one">
                                <div class="availability">Camera:</div>
                                <span><?php echo $item->camera ?></span>
                            </div>
                            <!-- Ram -->
                            <div class="in_stock_container_one">
                                <div class="availability">Ram:</div>
                                <span><?php echo $item->ram ?></span>
                            </div>
                            <!-- Rom -->
                            <div class="in_stock_container_one">
                                <div class="availability">Rom:</div>
                                <span><?php echo $item->rom ?></span>
                            </div>
                            <!-- Battery -->
                            <div class="in_stock_container_one">
                                <div class="availability">Battery:</div>
                                <span><?php echo $item->battery ?></span>
                            </div>
                            <!-- In Stock -->
                            <div class="in_stock_container">
                                <div class="availability">Availability:</div>
                                <span>In Stock</span>
                            </div>

                            <!-- Product Quantity -->
                            <div class="product_quantity_container">
                                <div class="button cart_button" style="margin-left: 0px"><?= Html::a('Добавить в корзину', ['cart/add', 'id'=>$item->id_product])?></div>

                            </div>

                            <!-- Share -->
                            <div class="details_share" style="margin-top: 46px">
                                <span>Share:</span>
                                <ul>
                                    <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                <?php endforeach ?>

            </div>
            <?php foreach ($catalog as $item): ?>
                <div class="row description_row">
                    <div class="col">
                        <div class="description_title_container">
                            <div class="description_title">Описание</div>
                        </div>
                        <div class="description_text">
                            <p><?php echo $item->description ?></p>
                        </div>
                    </div>
                </div>
            <?php endforeach ?>
        </div>
    </div>

    <!-- Products -->

    <div class="products">
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <div class="products_title">Другие продукты</div>
                </div>
            </div>
            <div class="row">
                <div class="col">

                    <div class="product_grid">
                        <?php foreach ($product as $item): ?>
                                <!-- Product -->
                                <div class="product">
                                    <div class="product_image"><?=Html::a(Html::img('/'.$item->image, ['alt' => $item->titleproduct, 'width' => 500]), ['product', 'id'=>$item->id_product])?></div>

                                    <div class="product_content">
                                        <div class="product_title"><?= Html::a(Html::encode($item->titleproduct) , ['product', 'id'=>$item->id_product] )?></div>
                                        <div class="product_price"><?= $item->price ?></div>
                                    </div>
                                </div>
                        <?php endforeach ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
