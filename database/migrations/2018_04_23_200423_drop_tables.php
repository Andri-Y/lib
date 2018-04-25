<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class DropTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     *///todo uncomment if needed to drop database; command:php artisan migrate:refresh
    public function down()
    {
        /*
        Schema::dropIfExists('users');
        Schema::dropIfExists('password_resets');
        //
        Schema::dropIfExists('article_tag');
        Schema::dropIfExists('book_tag');
        Schema::dropIfExists('photo_tag');
        Schema::dropIfExists('tag_video');
        //
        Schema::dropIfExists('book_edition');
        Schema::dropIfExists('book_language');
        Schema::dropIfExists('book_genre');
        Schema::dropIfExists('article_book');
        Schema::dropIfExists('author_book');
        Schema::dropIfExists('book_photo');
        //
        Schema::dropIfExists('article_event');
        Schema::dropIfExists('event_photo');
        Schema::dropIfExists('event_video');
        //
        Schema::dropIfExists('article_photo');
        Schema::dropIfExists('article_video');
        Schema::dropIfExists('author_photo');
        Schema::dropIfExists('edition_photo');

        //
        Schema::dropIfExists('articles');
        Schema::dropIfExists('events');
        Schema::dropIfExists('books');
        //
        Schema::dropIfExists('authors');
        Schema::dropIfExists('editions');
        Schema::dropIfExists('languages');
        Schema::dropIfExists('genres');
        //
        Schema::dropIfExists('photos');
        Schema::dropIfExists('videos');
        //
        Schema::dropIfExists('tags');
        //
        Schema::dropIfExists('article_categories');
        Schema::dropIfExists('book_categories');
        Schema::dropIfExists('event_categories');
        */
    }
}
