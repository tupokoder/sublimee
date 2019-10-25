<?php

/* @var $this yii\web\View */
/* @var $name string */
/* @var $message string */
/* @var $exception Exception */
use yii\helpers\Url;
use app\assets\App404Assets;
use yii\helpers\Html;

App404Assets::register($this);

$this->title = '404-страница не найдена';
?>
