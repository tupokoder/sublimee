<?php

use yii\db\Migration;

/**
 * Class m190503_101948_mail
 */
class m190503_101948_mail extends Migration
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

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m190503_101948_mail cannot be reverted.\n";

        return false;
    }
    */
}
