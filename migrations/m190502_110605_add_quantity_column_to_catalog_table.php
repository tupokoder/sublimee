<?php

use yii\db\Migration;

/**
 * Handles adding quantity to table `{{%catalog}}`.
 */
class m190502_110605_add_quantity_column_to_catalog_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE=InnoDB';
        }
        $this->createTable('{{%subscription}}', [
            'id' => $this->primaryKey(),
            'email' => $this->string()->notNull(),
            'addtime' => $this->string(),
        ], $tableOptions);
    }
    public function safeDown()
    {
        $this->dropTable('{{%subscription}}');
    }
}
