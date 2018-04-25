<?php

namespace App\Http\Controllers\Pub;

use App\Article;
use App\Book;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class IndexController extends Controller
{
    //
    public function index(){
        $news = Article::whereCategoryId('1')
            ->with('photos')
            ->get();
        $anniversaries = Article::whereCategoryId('2')
            ->with('photos')
            ->get();
        $books = Book::all();
        return view('pages.index')
            ->with('news', $news)
            ->with('anniversaries',$anniversaries)
            ->with('books', $books);
    }
}