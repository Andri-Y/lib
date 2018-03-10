<?php

namespace App\Http\Controllers\Pub;

use App\Article;
use App\Book;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ExpoController extends Controller
{
    public function index()
    {
        $expos = Article::whereCategoryId('3')
            ->with('photos')
            ->orderBy('created_at', 'desc')
            ->paginate(9);
        $anniversaries = Article::get_anniversaries();
        $books = Book::all();
        return view('pages.v_expos')
            ->with('expos', $expos)
            ->with('anniversaries',$anniversaries)
            ->with('books', $books);
    }

    public function show($slug)
    {
        //
        $expo = Article::with('photos')->with('videos')->whereSlug($slug)->firstOrFail();
        //protecting own slug exeption
        if ($expo!=null){
            return view('layouts.expo')->
            with('expo',$expo);
        }
        return redirect('/');
    }

}
