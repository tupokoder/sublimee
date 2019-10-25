<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "buyers".
 *
 * @property int $id
 * @property string $firstname
 * @property string $lastname
 * @property string $surname
 * @property string $phone
 * @property string $address_delivery
 *
 * @property Orders[] $orders
 */
class Buyers extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'buyers';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['firstname', 'lastname', 'surname', 'phone', 'address_delivery'], 'required'],
            [['firstname', 'lastname', 'surname'], 'string', 'max' => 30],
            [['firstname', 'lastname', 'surname'], 'match', 'pattern' => '/^[а-яА-ЯёЁ ]+$/u'],
            [['phone'], 'string', 'max' => 11],
            [['address_delivery'], 'string', 'max' => 100],
            ['phone', 'filter', 'filter' => function ($value) {
                // нормализация значения происходит тут
                return $value;
            }],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'firstname' => 'Имя',
            'lastname' => 'Фамилия',
            'surname' => 'Отчество',
            'phone' => 'Телефон',
            'address_delivery' => 'Адрес доставки',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getOrders()
    {
        return $this->hasMany(Orders::className(), ['id_user' => 'id']);
    }
}
