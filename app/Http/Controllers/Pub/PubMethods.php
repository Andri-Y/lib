<?php
/**
 * Created by PhpStorm.
 * User: atlas
 * Date: 09.09.18
 * Time: 20:31
 */

namespace App\Http\Controllers\Pub;


interface PubMethods
{
    public function index();

    public function show($object);

    public function details($object);

}