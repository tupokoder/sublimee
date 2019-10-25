<?php
namespace app\assets;

use yii\web\AssetBundle;

class AppCart extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web/web';
    public $css = [
        'css/bootstrap4/bootstrap.min.css',
        'plugins/font-awesome-4.7.0/css/font-awesome.min.css',
        'css/main_styles.css',
        'css/responsive.css',
        'css/cart.css',
        'css/cart_responsive.css',
    ];
    public $js = [
        'js/jquery-3.2.1.min.js',
        'css/bootstrap4/popper.js',
        'css/bootstrap4/bootstrap.min.js',
        'plugins/greensock/TweenMax.min.js',
        'plugins/greensock/TimelineMax.min.js',
        'plugins/scrollmagic/ScrollMagic.min.js',
        'plugins/greensock/animation.gsap.min.js',
        'plugins/greensock/ScrollToPlugin.min.js',
        'plugins/parallax-js-master/parallax.min.js',
        'js/cart.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
