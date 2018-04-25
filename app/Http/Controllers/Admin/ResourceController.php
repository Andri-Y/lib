<?php

namespace App\Http\Controllers\Admin;


interface ResourceController
{
    public function index();

    public function store();

    public function create();

    public function destroy($object);

    public function update($object);

    public function show($object);

    public function edit($object);

}