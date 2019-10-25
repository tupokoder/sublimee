<?php

use yii\db\Migration;

/**
 * Handles adding os_column_display_column_cpu_column_camera_column_ram_column_rom to table `{{%catalog}}`.
 */
class m190503_070342_add_os_column_display_column_cpu_column_camera_column_ram_column_rom_column_to_catalog_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('{{%catalog}}', 'os', $this->string());
        $this->addColumn('{{%catalog}}', 'display', $this->string());
        $this->addColumn('{{%catalog}}', 'cpu', $this->string());
        $this->addColumn('{{%catalog}}', 'camera', $this->string());
        $this->addColumn('{{%catalog}}', 'ram', $this->string());
        $this->addColumn('{{%catalog}}', 'rom', $this->string());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('{{%catalog}}', 'os');
        $this->dropColumn('{{%catalog}}', 'display');
        $this->dropColumn('{{%catalog}}', 'cpu');
        $this->dropColumn('{{%catalog}}', 'camera');
        $this->dropColumn('{{%catalog}}', 'ram');
        $this->dropColumn('{{%catalog}}', 'rom');
    }
}
