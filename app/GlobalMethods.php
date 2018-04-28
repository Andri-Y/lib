<?php
/**
 * Created by PhpStorm.
 * User: atlas
 * Date: 24.04.18
 * Time: 15:35
 */

namespace App;


interface GlobalMethods
{
    public static function getAllByCategory($category);

    public static function getOneByCategory($object, $category);

    public static function getWithId($object);

}