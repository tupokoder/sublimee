<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use app\assets\App404Assets;

App404Assets::register($this);

$this->title = '404-страница не найдена';
?>
<div class="content">
    <a href="<? echo Url::toRoute('/');?>">Перейти к главной странице</a>
</div>