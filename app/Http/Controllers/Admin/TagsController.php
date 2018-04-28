<?php

namespace App\Http\Controllers\Admin;

use App\Tag;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TagsController extends Controller implements CRUDMethods
{
    public function index(){
        $tags = Tag::all();
        return view('admin.tags.tags')->with('tags', $tags);
    }
    //
    public function create(){
        return view('admin.tags.create');
    }
    //
    public function store()
    {
        Tag::create(request()->all());
        return back()->with('message','Теґ успішно збережено');
    }
    //
    public function edit($id)
    {
        $tag=Tag::find($id);
        return view('admin.tags.edit',['tag'=>$tag]);
    }
    //
    public function update($id)
    {
        $tag=Tag::find($id);
        $tag->update(request()->all());
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

    public function show($slug)
    {
        // TODO: Implement show() method.
    }
}
