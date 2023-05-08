<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Person */

$this->title = 'แก้ไข : ' . $model->firstname. ' ' . $model->lastname;
$this->params['breadcrumbs'][] = ['label' => 'ตาราง', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->firstname. ' ' . $model->lastname, 'url' => ['view', 'user_id' => $model->user_id]];
$this->params['breadcrumbs'][] = 'แก้ไข';
?>
<div class="person-update">

 
    <?= $this->render('_form', [
        'model' => $model,
        'user' => $user,
    ]) ?>

</div>
