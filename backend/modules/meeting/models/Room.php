<?php

namespace backend\modules\meeting\models;

use Yii;

/**
 * This is the model class for table "room".
 *
 * @property int $id
 * @property string $name ชื่อห้องประชุม
 * @property string $description รายละเอียด
 * @property string|null $photo รูปภาพ
 * @property string|null $color สีประจำห้อง
 *
 * @property Meeting[] $meetings
 */
class Room extends \yii\db\ActiveRecord
{
    public $room_img;

    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'room';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'description'], 'required'],
            [['description'], 'string'],
            [['name', 'photo'], 'string', 'max' => 100],
            [['color'], 'string', 'max' => 7],
            [['room_img'], 'file', 'skipOnEmpty'=> true, 'on' => 'update', 'extensions' => 'jpg,png,gif'],
        
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'ชื่อห้องประชุม',
            'description' => 'รายละเอียด',
            'photo' => 'รูปภาพ',
            'color' => 'สีประจำห้อง',
            'room_img' => 'รูปภาพ',
        ];
    }

    /**
     * Gets query for [[Meetings]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getMeetings()
    {
        return $this->hasMany(Meeting::className(), ['room_id' => 'id']);
    }
}
