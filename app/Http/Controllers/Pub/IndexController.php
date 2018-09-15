<?php

namespace App\Http\Controllers\Pub;

use App\Article;
use App\Book;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class IndexController extends Controller implements PubMethods
{
    //
    public function index(){
        $news = Article::whereCategoryId('1')
            ->with('photos')
            ->orderByDesc('created_at')
            ->get();
        $anniversaries = Article::whereCategoryId('2')
            ->with('photos')
            ->orderByDesc('created_at')
            ->get();
        $books = Book::all();
        return view('pages.index')
            ->with('news', $news)
            ->with('anniversaries',$anniversaries)
            ->with('books', $books);
    }

    public function show($object)
    {
        // TODO: Implement show() method.
    }

    public function details($object)
    {
        // TODO: Implement details() method.
    }
}
