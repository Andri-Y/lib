<?php

namespace App\Http\Controllers\Pub;

use App\Article;
use App\Book;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class NewsController extends Controller implements PubMethods
{
    /**
     * Display a listing of news to users.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        return null;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function show($slug)
    {
       return null;
    }

    /**
     * Show article object.

     */
    public function details($object)
    {
        //
        $news_item = Article::whereSlug($object)->with('photos','videos')->firstOrFail();
        //protecting own slug exception
        if ($news_item!=null){
            return view('public.articles.single')->
            with('news_item',$news_item);

        }
        return redirect('/');
    }
}
