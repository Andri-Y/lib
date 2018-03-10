<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;


class CreateArticleTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::create('article_categories', function (Blueprint $table){
            $table->increments('id');
            $table->text('value');
            $table->timestamps();
        });
        //
        Schema::create('articles', function (Blueprint $table){
            $table->increments('id');
            $table->string('header');
            $table->string('main_image')->nullable();
            $table->text('preview')->nullable();
            $table->string('slug');
            $table->longText('main_text')->nullable();
            $table->date('anniversary')->nullable();
            $table->timestamps();
            //
            $table->integer('category_id')->unsigned();
            $table->foreign('category_id')->references('id')
                ->on('article_categories')->onDelete('cascade');
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
