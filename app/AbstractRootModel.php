<?php
/**
 * Created by PhpStorm.
 * User: atlas
 * Date: 24.04.18
 * Time: 15:35
 */

namespace App;


interface AbstractRootModel
{
    public static function getAllByCategory($category);

    public static function getOneByCategory($id,$category);

}