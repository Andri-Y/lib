<?php

namespace App\Http\Controllers\Admin;

use App\Article;
use App\ArticleCategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ArticleCategoryController extends Controller implements ResourceController
{
    //
    public function index()
    {
        // TODO: Implement index() method.
    }

    public function store()
    {
        $category = new ArticleCategory();
        $category->value = request()->value;
        $category->name = request()->name;
        $category->save();
        return redirect()->back();
    }

    public function create()
    {
        // TODO: Implement create() method.
    }

    public function destroy($object)
    {
        $category = ArticleCategory::find($object);
        $category->delete();
        return redirect('admin/articles');
    }

    public function update($object)
    {
        $category = ArticleCategory::find($object);
        $category->name = \request()->name ? \request()->name : $category->name;
        $category->value = \request()->value ? \request()->value : $category->value;
        $category->save();
        return redirect('admin/articles');
    }

    public function show($object)
    {
        // TODO: Implement show() method.
    }

    public function edit($object)
    {
        $category = ArticleCategory::whereId($object)->first();
        return view('admin.articles.article_categories.edit')->with('category', $category);
    }
}
