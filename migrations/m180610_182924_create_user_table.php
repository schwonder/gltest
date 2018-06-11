<?php

use yii\db\Migration;

/**
 * Handles the creation of table `user`.
 */
class m180610_182924_create_user_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('user', [
            'id' => $this->primaryKey(),
            'first_name'=> $this->string(255)->notNull(),
            'last_name'=> $this->string(255)->notNull(),
            'email'=> $this->string(255)->notNull(),
            'password'=> $this->string(255)->notNull(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('user');
    }
}
