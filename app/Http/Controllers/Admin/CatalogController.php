<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CatalogController extends Controller
{
    public function index(){
        $presentations = Article::whereCategoryId('5')->get();
    }
    //
    public function create(){
        return view('admin.tags.create');
    }
    //
    public function store(Request $request)
    {
        Tag::create($request->all());
        return back()->with('message','Теґ успішно збережено');
    }
    //
    public function edit($id)
    {
        $tag=Tag::find($id);
        return view('admin.tags.edit',['tag'=>$tag]);
    }
    //
    public function update(Request $request, $id)
    {
        $tag=Tag::find($id);
        $tag->update($request->all());
        $tag->save();
        return back()->with('message','Теґ змінено');
    }
    //
    public function destroy($id)
    {
        $tag=Tag::find($id);
        $tag->delete();
        return redirect()->back()->with('message',"Теґ ".$tag->value." видалено");
    }
}
