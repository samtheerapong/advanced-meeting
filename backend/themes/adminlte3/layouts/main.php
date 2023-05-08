<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;

\hail812\adminlte3\assets\FontAwesomeAsset::register($this);
\hail812\adminlte3\assets\AdminLteAsset::register($this);
$this->registerCssFile('https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback');

$assetDir = Yii::$app->assetManager->getPublishedUrl('@vendor/almasaeed2010/adminlte/dist');
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
    <link href="https://fonts.googleapis.com/css2?family=Itim&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Sarabun:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mali:ital,wght@0,300;0,400;0,500;0,600;0,700;1,200&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Kanit:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet">
        <style>
                * {
                    /* font-family: 'Itim', cursive; */
                    /* font-family: 'Sarabun', sans-serif; */
                    /* font-family: 'Mali', cursive; */
                    font-family: 'Kanit', sans-serif;                  
                }             
        </style>
</head>
<!-- ย่อเมนู ให้เป็นค่าเริ่มต้น -->
<!-- <body class="hold-transition sidebar-mini sidebar-collapse">   -->

<!-- ขยายเมนู ให้เป็นค่าเริ่มต้น -->
<body class="hold-transition sidebar-mini"> 

<?php $this->beginBody() ?>

<div class="wrapper">
    <!-- Navbar -->
    <?= $this->render('navbar', ['assetDir' => $assetDir]) ?>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <?= $this->render('sidebar', ['assetDir' => $assetDir]) ?>

    <!-- Content Wrapper. Contains page content -->
    <?= $this->render('content', ['content' => $content, 'assetDir' => $assetDir]) ?>
    <!-- /.content-wrapper -->

    <!-- Control Sidebar -->
    <?= $this->render('control-sidebar') ?>
    <!-- /.control-sidebar -->

    <!-- Main Footer -->
    <?= $this->render('footer') ?>
</div>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
