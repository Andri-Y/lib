<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEventsTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::create('event_categories', function (Blueprint $table){
            $table->increments('id');
            $table->text('value');
            $table->text('name');
            $table->timestamps();
        });
        //
        Schema::create('events', function (Blueprint $table) {
            $table->increments('id');
            $table->string('slug');
            $table->string('status');
            $table->string('title');
            $table->string('text')->nullable();
            $table->date('start_date')->nullable();
            $table->date('end_date');
            $table->timestamps();
            //
            //
            $table->integer('category_id')->unsigned();
            $table->foreign('category_id')->references('id')
                ->on('event_categories')->onDelete('cascade');
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
