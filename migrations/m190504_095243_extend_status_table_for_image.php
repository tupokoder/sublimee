<?php

use yii\db\Migration;
use yii\db\Schema;
/**
 * Class m190504_095243_extend_status_table_for_image
 */
class m190504_095243_extend_status_table_for_image extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {

    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m190504_095243_extend_status_table_for_image cannot be reverted.\n";

        return false;
    }


    // Use up()/down() to run migration code without a transaction.
    public function up()
    {
      $tableOptions = null;
      if ($this->db->driverName === 'mysql') {
          $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
      }
      $this->addColumn('{{%status}}','image_src_filename',Schema::TYPE_STRING.' NOT NULL');
      $this->addColumn('{{%status}}','image_web_filename',Schema::TYPE_STRING.' NOT NULL');
    }

    public function down()
    {
        $this->dropColumn('{{%status}}','image_src_filename');
        $this->dropColumn('{{%status}}','image_web_filename');
        return false;
    }

}
