<?php

namespace App\Http\Controllers\Admin;


interface ResourceController
{
    public function index();

    public function store();

    public function create();

    public function destroy();

    public function update($slug);

    public function show($slug);

    public function edit($slug);

}