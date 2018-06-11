<?php
/**
 * Created by PhpStorm.
 * User: Andrey
 * Date: 06.06.2018
 * Time: 18:37
 */
namespace app\models;

use Yii;
use yii\base\Model;

class EntryForm extends Model
{
    public $firstName;
    public $lastName;
    public $email;
    public $password;

    public function rules()
    {
        return [
            [['firstName', 'lastName', 'email', 'password'], 'required'],
            ['email', 'email'],
        ];
    }
}