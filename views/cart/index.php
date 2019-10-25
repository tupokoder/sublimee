<?php
/* @var $this yii\web\View */
/* @var $cart \devanych\cart\Cart */
/* @var $item \devanych\cart\CartItem */
/* @var $orders app\models\Orders */

use app\assets\AppCart;
use app\models\Orders;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\web\View;use yii\widgets\ActiveForm;
AppCart::register($this);
$this->title = 'Корзина';
?>
    <!-- Home -->

    <div class="home">
        <div class="home_container">
            <div class="home_background" style="background-image:url(/web/images/cart.jpg)"></div>
            <div class="home_content_container">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="home_content">
                                <div class="breadcrumbs">
                                    <ul>
                                        <li><a href="<? echo Url::toRoute('/');?>">Главная</a></li>
                                        <li><a href="<? echo Url::toRoute('catalog/');?>">Каталог</a></li>
                                        <li>Корзина</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php if(!empty($cartItems = $cart->getItems())): ?>
    <div class="cart_info">
        <div class="container">
            <div class="row">
                <div class="col">
                    <!-- Column Titles -->
                    <div class="cart_info_columns clearfix">
                        <div class="cart_info_col cart_info_col_product">Продукт</div>
                        <div class="cart_info_col cart_info_col_price">Цена</div>
                        <div class="cart_info_col cart_info_col_quantity">Количество</div>
                        <div class="cart_info_col cart_info_col_total">Всего</div>
                    </div>
                </div>
            </div>
            <?php foreach($cartItems as $item): ?>
                <div class="row cart_items_row">
                    <div class="col">
                         <!-- Cart Item -->
                        <div class="cart_item d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-start">
                            <!-- Name -->
                            <div class="cart_item_product d-flex flex-row align-items-center justify-content-start">
                                <div class="cart_item_image" style="text-align: center">
                                    <div><?=Html::a(Html::img("/{$item->getProduct()->image}", ['alt' => $item->getProduct()->titleproduct, 'width' => 170]), ['catalog/product', 'id'=>$item->getProduct()->id_product])?></div>
                                </div>
                                <div class="cart_item_name_container">
                                    <?= Html::a($item->getProduct()->titleproduct , ['catalog/product', 'id'=>$item->getProduct()->id_product] )?>
                                    <div class="cart_item_edit"><?= Html::a('Удалить товар' , ['cart/remove', 'id'=>$item->getId()] )?></div>
                                </div>
                            </div>
                            <!-- Price -->
                            <div class="cart_item_price"><?=$item->getPrice()?></div>
                            <!-- Quantity -->
                            <div class="cart_item_quantity">
                                <div class="product_quantity_container">
                                    <div class="product_quantity clearfix">
                                        <span>Qty</span>
                                        <input id="quantity_input" type="text" pattern="[0-9]*" value="<?=$item->getQuantity()?>" disabled>
                                    </div>
                                </div>
                            </div>
                            <!-- Total -->
                            <div class="cart_item_total"><?=$item->getCost();?>$</div>

                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
            <div class="row row_cart_buttons">
                <div class="col">
                    <div class="cart_buttons d-flex flex-lg-row flex-column align-items-start justify-content-start">
                        <div class="button continue_shopping_button"><?= Html::a('Продолжить покупки' , ['catalog/'] )?></div>
                        <div class="cart_buttons_right ml-lg-auto">
                            <div class="button clear_cart_button"><?= Html::a('Очистить корзину' , ['clear'] )?></div>
                            <div class="button update_cart_button"><?= Html::a('Обновить корзину' , ['/cart'] )?></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row row_extra">

                <div class="col-lg-6 offset-lg-6">
                    <div class="cart_total">
                        <div class="section_title">Всего в корзине</div>
                        <div class="section_subtitle">Окончательная информация</div>
                        <div class="cart_total_container">
                            <ul>
                                <li class="d-flex flex-row align-items-center justify-content-start">
                                    <div class="cart_total_title">Промежуточный итог</div>
                                    <div class="cart_total_value ml-auto"><?=$cart->getTotalCost() ?>$</div>
                                </li>
                                <li class="d-flex flex-row align-items-center justify-content-start">
                                    <div class="cart_total_title">Общее количество товара</div>
                                    <div class="cart_total_value ml-auto"><?= $cart->getTotalCount()?></div>
                                </li>
                                <li class="d-flex flex-row align-items-center justify-content-start">
                                    <div class="cart_total_title">Всего</div>
                                    <div class="cart_total_value ml-auto"><?=$cart->getTotalCost() ?>$</div>
                                </li>
                            </ul>
                        </div>
                        <div class="button checkout_button"><?= Html::a('Оформление заказа' , ['orders'] )?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php else:?>
    <div class="">
        <div class="product_quantity_container">
            <div class="product_quantity_one clearfix">
                <div style="margin-left: 44%; margin-top: 2%;"><img src="/web/images/empty_cart.png" alt="empty_cart"></div>
                <span>Корзина пустая</span>
            </div>
        </div>
    </div>
<?php endif;?>
