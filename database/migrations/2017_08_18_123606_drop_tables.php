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
     */
    public function down()
    {

        //
        Schema::dropIfExists('article_tag');
        Schema::dropIfExists('book_tag');
        Schema::dropIfExists('photo_tag');
        Schema::dropIfExists('video_tag');
        //
        Schema::dropIfExists('book_edition');
        Schema::dropIfExists('book_language');
        Schema::dropIfExists('book_genre');
        Schema::dropIfExists('book_article');
        Schema::dropIfExists('book_author');
        //
        Schema::dropIfExists('article_photo');
        Schema::dropIfExists('video_article');
        //
        Schema::dropIfExists('articles');
        Schema::dropIfExists('books');
        Schema::dropIfExists('authors');
        Schema::dropIfExists('editions');
        Schema::dropIfExists('languages');
        Schema::dropIfExists('genres');
        Schema::dropIfExists('photos');
        Schema::dropIfExists('videos');
        Schema::dropIfExists('tags');
        //
        Schema::dropIfExists('article_categories');
        Schema::dropIfExists('book_categories');
    }
}
