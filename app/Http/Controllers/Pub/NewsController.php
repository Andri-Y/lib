<?php

namespace App\Http\Controllers\Pub;

use App\Article;
use App\Book;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class NewsController extends Controller
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
        //
        $news_item = Article::with('photos')->with('videos')->whereSlug($slug)->firstOrFail();
        //protecting own slug exeption
        if ($news_item!=null){
            return view('layouts.news')->
            with('news_item',$news_item);

        }
        return redirect('/');
    }

    /**
     * Show the form for creating a new news object.
     *
     * @return void
     */
    public function create()
    {
        //

    }

    /**
     * Store a newly created news object with main image and tags in storage.
     *
     * @return void
     */
    public function store(Request $request)
    {

    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     *
     * @return void
     */
    public function edit($id)
    {

    }

    /**
     * Update the specified resource in storage.
     *
     * @param int $id
     *
     * @return void
     */
    public function update(Request $request, $id)
    {

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     *
     * @return void
     */
    public function destroy($id)
    {

    }
}
