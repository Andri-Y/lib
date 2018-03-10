<?php

namespace App\Http\Controllers\Pub;

use App\Article;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class VirtualReferenceController extends Controller
{
    /**
     * Display a listing of news to admin panel.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        //
       /* $messages = Article::whereCategoryId('4')->get()->sortByDesc('created_at');
        return view('admin.news.index')
            ->with('messages', $messages);*/
       return view('pages.virtual_reference');
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function show($id)
    {

    }

    /**
     * Show the form for creating a new news object.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        //

    }

    /**
     * Store a newly created news object with main image and tags in storage.
     *
     * @return \Redirect
     */
    public function store()
    {
        //
        $message = new Article();
        //set category_id where value: 4 = 'virtual_reference'
        $message->category_id = 4;
        $message->header = request()->input('name');
        $message->preview = request()->input('e-mail');
        $message->main_text = request()->input('text');
        $message->save();

        return redirect()->route('public.news.index');
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     *
     * @return \Illuminate\View\View
     */
    public function edit()
    {
        //

    }

    /**
     * Update the specified resource in storage.
     *
     * @param int $id
     *
     * @return Response
     */
    public function update()
    {

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     *
     * @return redirect
     */
    public function destroy($slug)
    {

    }
}
