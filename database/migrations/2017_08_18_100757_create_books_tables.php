<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBooksTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::create('book_categories', function (Blueprint $table){
            $table->increments('id');
            $table->text('value');
            $table->timestamps();
        });
        //
        Schema::create('books', function (Blueprint $table){
            //
            $table->increments('id');
            $table->text('name');
            $table->text('annotation');
            $table->string('slug');
            $table->date('publication_date');
            $table->timestamps();
            //
            $table->integer('category_id')->unsigned()->nullable();
            $table->foreign('category_id')->references('id')
                ->on('book_categories')->onDelete('cascade');
        });
        //
        Schema::create('authors', function (Blueprint $table){
            $table->increments('id');
            $table->string('value');
            $table->timestamps();
        });
        //
        Schema::create('editions', function (Blueprint $table){
            //
            $table->increments('id');
            $table->string('value');
            $table->timestamps();
        });
        //
        Schema::create('languages', function (Blueprint $table){
            //
            $table->increments('id');
            $table->string('value');
            $table->timestamps();
        });
        //
        Schema::create('genres', function (Blueprint $table){
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
