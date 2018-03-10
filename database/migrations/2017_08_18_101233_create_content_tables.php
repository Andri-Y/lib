<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateContentTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::create('photos', function (Blueprint $table){
            //
            $table->increments('id');
            $table->string('image');
            $table->boolean('is_main')->default(false);
            $table->timestamps();
        });
        //
        Schema::create('videos', function (Blueprint $table){
            //
            $table->increments('id');
            $table->string('link');
            $table->timestamps();
        });
        //
        Schema::create('tags', function (Blueprint $table){
            //
            $table->increments('id');
            $table->string('value');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
