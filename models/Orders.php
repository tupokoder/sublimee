<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "orders".
 *
 * @property int $id_order
 * @property int $id_product
 * @property int $id_user
 * @property string $product
 * @property int $quantity
 * @property string $price
 *
 * @property Product $product0
 * @property User $user
 */
class Orders extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'orders';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_product', 'id_user', 'product', 'quantity', 'price'], 'required'],
            [['id_product', 'id_user', 'quantity'], 'integer'],
            [['product', 'price'], 'string', 'max' => 100],
            [['id_product'], 'exist', 'skipOnError' => true, 'targetClass' => Product::className(), 'targetAttribute' => ['id_product' => 'id_product']],
            [['id_user'], 'exist', 'skipOnError' => true, 'targetClass' => Buyers::className(), 'targetAttribute' => ['id_user' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_order' => 'Id Order',
            'id_product' => 'Id Product',
            'id_user' => 'Id User',
            'product' => 'Product',
            'quantity' => 'Quantity',
            'price' => 'Price',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProduct0()
    {
        return $this->hasOne(Product::className(), ['id_product' => 'id_product']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(Buyers::className(), ['id' => 'id_user']);
    }
}
