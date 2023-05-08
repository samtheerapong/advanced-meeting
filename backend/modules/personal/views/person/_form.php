<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use common\models\Department;
use kartik\widgets\FileInput;

/* @var $this yii\web\View */
/* @var $model common\models\Person */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="person-form">
<?= \yii2mod\alert\Alert::widget() ?>

<div class="card card-success">
    <div class="card-header">
        <h3 class="card-title"><?= Html::encode($this->title) ?></h3>
    </div> <!-- end div card-header-->
    <div class="card-body">
            <?php $form = ActiveForm::begin([
                'options' => ['enctype' => 'multipart/form-data'],
            ]); ?>
            <div class="form-row">
                <div class="form-group col-md-3">
                    <?= $form->field($user, 'username')->textInput() ?>
                    </div>
                <div class="form-group col-md-3">
                    <?= $form->field($user, 'password_hash')->passwordInput() ?>
                    </div>
                <div class="form-group col-md-3">
                    <?= $form->field($user, 'email')->textInput() ?>
                    </div>
                <div class="form-group col-md-3">
                     <?= $form
                         ->field($model, 'tel')
                         ->textInput(['maxlength' => true]) ?>
                    </div>
            </div>

            <div class="form-row">
                <div class="form-group col-md-4">
                    <?= $form
                        ->field($model, 'firstname')
                        ->textInput(['maxlength' => true]) ?>
                </div>
                <div class="form-group col-md-4">
                    <?= $form
                        ->field($model, 'lastname')
                        ->textInput(['maxlength' => true]) ?>
                </div>
                <div class="form-group col-md-4">
                    <?= $form
                        ->field($model, 'department_id')
                        ->dropDownlist(
                            ArrayHelper::map(
                                Department::find()->all(),
                                'id',
                                'department'
                            )
                        ) ?>
                </div>
            </div>
        
            <?php if (!$model->isNewRecord) { ?> 
            <?= $form
                ->field($model, 'person_img')
                ->widget(FileInput::classname(), [
                    'options' => [
                        'accept' => 'image/*',
                        //'multiple' => true
                    ],
                    'pluginOptions' => [
                        'initialPreview' => [
                            Html::img('uploads/person/' . $model->photo, [
                                'class' => 'rounded mx-auto d-block',
                                'width' => '200px',
                            ]),
                        ],
                        'language' => 'th',
                        'allowedFileExtensions' => ['jpg', 'png', 'gif'],
                        'showPreview' => true,
                        'showRemove' => true,
                        'showUpload' => false,
                    ],
                ]) ?>
                <?php } ?>
                
                        <?= $form
                            ->field($model, 'address')
                            ->textarea(['rows' => 4]) ?>
                        
                        <div class="form-row">
                            
                        
                        </div>
                    </div>
                    
            <div class="card-footer">
                <div class="form-group col-md-12">
                    <?= Html::submitButton(
                        '<i class="fas fa-save"></i>&nbsp บันทึก',
                        [
                            'class' => 'btn btn-success',
                        ]
                    ) ?>
                </div><!-- end div form-group col-md-12-->
            </div><!-- end div card-footer -->  

    <?php ActiveForm::end(); ?>
    </div>
</div>

