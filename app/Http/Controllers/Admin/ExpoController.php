<?php

namespace App\Http\Controllers\Admin;

use App\Article;
use App\Photo;
use App\Tag;
use App\Video;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Image;

class ExpoController extends Controller
{
    public function index(){
       $expos = Article::whereCategoryId('3')->get();
       return view('admin.expos.index')->with('expos',$expos);
    }
    //
    public function create(){
        $tags = Tag::groupBy('value')->pluck('value');
        return view('admin.expos.create')->with('tags',json_encode($tags));
    }
    //
    public function store()
    {
        //
        $expo = new Article(['header'=>request()->input('header')]);
        //set category_id where value: 1 = 'news'
        $expo->category_id = 3;
        $expo->header = request()->input('header');
        $expo->preview = substr(request()->input('preview'),0,155);
        $expo->main_text = request()->input('main_text');
        /*
        * Add an image
        */
        if(request()->file('main_image')!=null){
            $file = request()->file('main_image');
            //
            $w = 800;
            $h = 600;
            $path = 'public/photos/expos/'.date('d.m.y').'/'.$w.'x'.$h.'/';
            $path = $file->hashName($path);
            $image = \Intervention\Image\Facades\Image::make($file);
            $image->fit($w, $h);

            Storage::put($path, (string) $image->encode());
            //
            $main_photo = new Photo();
            $main_photo->image = $path;
            $main_photo->is_main = false;
            $main_photo->save();
            //
            $expo->main_image = $main_photo->image;
            $expo->save();
            $expo->photos()->attach($main_photo);
            //
        }else
        {
            $expo->save();
        }
        $other_images = Photo::whereUpdatedAt(null)->get();
        //
        if($other_images!=null){
            foreach ($other_images as $tmp){
                $tmp->updated_at = $tmp->created_at;
                $tmp->save();
                $expo->photos()->attach($tmp);
            }
        }
        // set video
        if(request()->input('link')!=null){
            $video = new Video();
            $video->link = request()->input('link');
            $video->save();
            $expo->videos()->attach($video);
        }
        // Clear previous tags
        $expo->tags()->detach();
        //set tags from $request
        $tags = request()->input('tags');
        if (count($tags)) {
            foreach ($tags as $tag) {
                $new_tag = new Tag();
                $new_tag->value = $tag;
                $expo->tags()->save($new_tag);
            }
        }
        return redirect()->route('expos.index');
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
