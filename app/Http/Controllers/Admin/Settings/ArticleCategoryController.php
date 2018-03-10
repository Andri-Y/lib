<?php

namespace App\Http\Controllers\Admin\Settings;

use App\ArticleCategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ArticleCategoryController extends Controller
{
    public function index(){
        $categories = ArticleCategory::all();
        return view('admin.article_categories.article_categories')->with('categories', $categories);
    }
    //
    public function create(){
        return view('admin.article_categories.create');
    }
    //
    public function store(Request $request)
    {
        ArticleCategory::create($request->all());
        return back()->with('message','Категорія успішно збережена');
    }
    //
    public function edit($id)
    {
        $category=ArticleCategory::find($id);
        return view('admin.article_categories.edit',['category'=>$category]);
    }
    //
    public function update(Request $request, $id)
    {
        $tag=ArticleCategory::find($id);
        $tag->update($request->all());
        $tag->save();
        return back()->with('message','Категорію змінено');
    }
    //
    public function destroy($id)
    {
        $category=ArticleCategory::find($id);
        $category->delete();
        return redirect()->back()->with('message',"Категорію ".$category->value." видалено");
    }
}
