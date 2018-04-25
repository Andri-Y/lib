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
        $news = Article::whereCategoryId('1')
            ->with('photos')
            ->orderBy('created_at', 'desc')
            ->paginate(9);
        $anniversaries = Article::whereCategoryId('2')->
        with('photos')->
        get();
        $books = Book::all();
        return view('pages.index')
            ->with('news', $news)
            ->with('anniversaries',$anniversaries)
            ->with('books', $books);
    }
}
