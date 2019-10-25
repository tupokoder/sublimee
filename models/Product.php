<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "catalog".
 *
 * @property int $id_product
 * @property string $titleproduct
 * @property string $price
 * @property string $image
 * @property string $description
 */
class Product extends \yii\db\ActiveRecord
{
    public $file;

    /**
     * {@inheritdoc}
     */

    public static function tableName()
    {
        return 'catalog';
    }

    /**
     * {@inheritdoc}
     */

    public function rules()
    {
        return [
            [['titleproduct', 'price', 'battery', 'quantity', 'description', 'os', 'display', 'cpu', 'camera', 'ram', 'rom'], 'required'],
            [['titleproduct', 'image'], 'string', 'max' => 255],
            [['price'], 'string', 'max' => 10],
            [['description'], 'string', 'max' => 2000],
            [
                ['file'], 'file',
                'skipOnEmpty' => false,
                'extensions' => 'jpg, png, jpeg, bmp', 'maxSize' => 1024 * 1024 * 10,
            ],

            [['os'], 'string', 'max' => 15],
            [['display'], 'string', 'max' => 50],
            [['cpu'], 'string', 'max' => 20],
            [['camera'], 'string', 'max' => 40],
            [['ram'], 'string', 'max' => 10],
            [['rom'], 'string', 'max' => 25],
            [['quantity'], 'string', 'max' => 100],
            [['battery'], 'string', 'max' => 10],
        ];
    }

    /**
     * {@inheritdoc}
     */

    public function attributeLabels()
    {
        return [
            'id_product' => 'Id Product',
            'titleproduct' => 'Название продукта',
            'price' => 'Цена',
            'image' => 'Изображение',
            'description' => 'Описание',
            'quantity' => 'Количество',
            'os' => 'Операционная система',
            'display' => 'Дисплей',
            'cpu' => 'Процессор',
            'camera' => 'Камера',
            'ram' => 'Оперативная память',
            'rom' => 'Встроенная память',
            'battery' => 'Батарея'
        ];
    }

    public static function getAll()
    {
        $data = self::find()->all();
        return $data;
    }

    public static function getAllProduct()
    {
        $data = self::find()
            ->limit(4)
            ->all();
        return $data;
    }

    public static function getAllProducts()
    {
        $data = self::find()
            ->limit(8)
            ->all();
        return $data;
    }

    public static function getProduct()
    {
        $data = self::find()
            ->where(['id_product' => Yii::$app->request->get('id')])
            ->all();
        return $data;
    }


    public function upload()
    {
        if(!$this->file)
            return false;

        $name = 'web/uploads/' . 'phone_' .  time()  . '.' .    $this->file->extension;

        if($this->file->saveAs($name))
            return $name;
        return false;
    }

}
