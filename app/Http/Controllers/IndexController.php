<?php

namespace App\Http\Controllers;

use App\Anniversary;
use App\Article;
use App\Book;
use App\Photo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;

class IndexController extends Controller
{
    //
    public function index(){
        $news = Article::whereCategoryId('1')->with('photos')->paginate(9);
        $anniversaries = Article::get_anniversaries();
        $books = Book::all();
        return view('pages.index')
            ->with('news', $news)
            ->with('anniversaries',$anniversaries)
            ->with('books', $books);
    }
}
