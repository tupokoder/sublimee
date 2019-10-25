<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Product;

/**
 * CatalogSearch represents the model behind the search form of `app\models\Product`.
 */
class CatalogSearch extends Product
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_product', 'quantity'], 'integer'],
            [['titleproduct', 'price', 'image', 'typeproduct', 'description', 'os', 'display', 'cpu', 'camera', 'ram', 'rom', 'battery'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Product::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id_product' => $this->id_product,
            'quantity' => $this->quantity,
        ]);

        $query->andFilterWhere(['like', 'titleproduct', $this->titleproduct])
            ->andFilterWhere(['like', 'price', $this->price])
            ->andFilterWhere(['like', 'image', $this->image])
            ->andFilterWhere(['like', 'typeproduct', $this->typeproduct])
            ->andFilterWhere(['like', 'description', $this->description])
            ->andFilterWhere(['like', 'os', $this->os])
            ->andFilterWhere(['like', 'display', $this->display])
            ->andFilterWhere(['like', 'cpu', $this->cpu])
            ->andFilterWhere(['like', 'camera', $this->camera])
            ->andFilterWhere(['like', 'ram', $this->ram])
            ->andFilterWhere(['like', 'rom', $this->rom])
            ->andFilterWhere(['like', 'battery', $this->battery]);

        return $dataProvider;
    }
}
