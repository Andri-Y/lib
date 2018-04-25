<?php

namespace App\Http\Controllers\Admin;

use App\Article;
use App\ArticleCategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ArticleController extends Controller implements ResourceController
{

    public function index()
    {
         return view('admin.articles.index')->
         with([
               'articles'=> Article::all(),
               'article_categories'=> ArticleCategory::all()
              ]);
    }
    public function store()
    {
        $article = new Article(['header'=>request()->input('header')]);
        $article->category_id = request()->input('id');
        $article->header = request()->input('header');
        $article->preview = substr(request()->input('preview'),0,155);
        $article->main_text = request()->input('main_text');
        $article->save();

        return redirect()->route('articles.index');
    }
    public function create()
    {
    }
    public function createByCategory($id)
    {
        $category = ArticleCategory::whereId($id)->first();
        return view('admin.articles.create')->with('category', $category);
    }

    public function destroy($object)
    {
        // TODO: Implement destroy() method.
    }

    public function update($object)
    {
        // TODO: Implement update() method.
    }

    public function show($object)
    {
        // TODO: Implement show() method.
    }

    public function edit($object)
    {
        // TODO: Implement edit() method.
    }
}
