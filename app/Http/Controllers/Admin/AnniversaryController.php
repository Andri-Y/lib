<?php

namespace App\Http\Controllers\Admin;

use App\Article;
use App\Http\Requests\AdminStoreAnniversaryRequest;
use App\Photo;
use App\Services\Upload;
use App\Tag;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;

class AnniversaryController extends Controller
{
    /**
     * Display a listing of anniversaries to admin panel.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        //
        $anniversaries = Article::get_anniversaries();
        return view('admin.anniversaries.index')
            ->with('anniversaries', $anniversaries);
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function show($slug)
    {
        //
        $anniversaries = Article::whereSlug($slug)->first();
        return view('admin.anniversaries.index')
            ->with('anniversaries', $anniversaries);
    }

    /**
     * Show the form for creating a new anniversaries object.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        //
        $tags = Tag::groupBy('value')->pluck('value');
        return view('admin.anniversaries.create')->with('tags',json_encode($tags));
    }

    /**
     * Store a newly created anniversaries object with main image and tags in storage.
     *
     * @return \Redirect
     */
    public function store()
    {
        //
        $anniversary = new Article(['header'=>request()->input('header')]);
        //set category_id where value: 'anniversaries'
        $anniversary->category_id = 2;
        $anniversary->header = request()->input('header');
        $anniversary->preview = substr(request()->input('preview'),0,255);
        $anniversary->main_text = request()->input('main_text');
        // create the mysql date format
        $anniversary->anniversary = Carbon::createFromFormat('d-m-Y', request()->input('anniversary'));
        /*
          * Add an image
          */
        $file = request()->file('main_image');
        //
        $w = 640;
        $h = 480;
        $path = 'public/photos/anniversaries/'.date('d.m.y').'/'.$w.'x'.$h.'/';
        $path = $file->hashName($path);
        $image = Image::make($file);
        $image->fit($w, $h);

        Storage::put($path, (string) $image->encode());
        //
        $main_photo = new Photo();
        $main_photo->image = $path;
        $main_photo->is_main = false;
        $main_photo->save();
        $anniversary->photos()->attach($main_photo);
        //
        $other_images = Photo::whereUpdatedAt(null)->get();
        //
        foreach ($other_images as $tmp){
            $tmp->updated_at = $tmp->created_at;
            $tmp->save();
            $anniversary->photos()->attach($tmp);
        }
        $anniversary->main_image = $main_photo->image;
        $anniversary->save();
        $anniversary->photos()->attach($main_photo);
        //
        $other_images = Photo::whereUpdatedAt(null)->get();
        //
        foreach ($other_images as $tmp){
            $tmp->updated_at = $tmp->created_at;
            $tmp->save();
            $anniversary->photos()->attach($tmp);
        }
        // Clear previous tags
        $anniversary->tags()->detach();
        //set tags from $request
        $tags = request()->input('tags');
        if (count($tags)) {
            foreach ($tags as $tag) {
                $new_tag = new Tag();
                $new_tag->value = $tag;
                $anniversary->tags()->save($new_tag);
            }
        }

        $anniversary->save();
        return redirect()->route('anniversaries.index');
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     *
     * @return \Illuminate\View\View
     */
    public function edit($slug)
    {
        //
        $anniversary =  Article::whereSlug($slug)->with('photos')->with('tags')->first();
        $photo = $anniversary->photos()->where('is_main','=', true)->first();
        $tags = Tag::groupBy('value')->pluck('value');


        return view('admin.anniversaries.edit')
            ->with('anniversary', $anniversary)
            ->with('photo', $photo)
            ->with('tags', json_encode($tags));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param int $id
     *
     * @return Response
     */
    public function update($slug)
    {
        //
        $anniversary = Article::whereSlug($slug)->with('photos')->with('tags')->first();
        $anniversary->header = request()->input('header');
        $anniversary->preview = substr(request()->input('preview'),0,155);
        $anniversary->main_text = request()->input('main_text');
        $anniversary->anniversary = Carbon::createFromFormat('d-m-Y', request()->input('anniversary'));
        $anniversary->save(['header'=>request()->input('header')]);
        /*
                * Add an image
                */
        if(request()->file('main_image')!=null){
            $file = request()->file('main_image');
            //
            $w = 1024;
            $h = 768;
            $path = 'public/photos/anniversaries/'.date('d.m.y').'/'.$w.'x'.$h.'/';
            $path = $file->hashName($path);
            $image = Image::make($file);
            $image->fit($w, $h);
            if(!Storage::exists($path)){
                //
                Storage::put($path, (string) $image->encode());
                //
                $main_photo = new Photo();
                $main_photo->image = $path;
                $main_photo->is_main = false;
                $main_photo->save();
                $anniversary->photos()->attach($main_photo);
            }
        }
        //
        $other_images = Photo::whereUpdatedAt(null)->get();
        //
        foreach ($other_images as $tmp){
            $tmp->updated_at = $tmp->created_at;
            $tmp->save();
            $anniversary->photos()->attach($tmp);
        }
        $anniversary->photos()->attach($other_images);
        // Clear previous tags
        $anniversary->tags()->detach();
        //set tags from $request
        $tags = request()->input('tags');
        if (count($tags)) {
            foreach ($tags as $tag) {
                $new_tag = new Tag();
                $new_tag->value = $tag;
                $anniversary->tags()->save($new_tag);
            }
        }

        return redirect()->route('anniversaries.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     *
     * @return Response
     */
    public function destroy($slug)
    {
        //
        $anniversary = Article::whereSlug($slug)->with('photos')->with('tags')->first();
        //destroy images
        foreach ($anniversary->photos() as $photo){
            \Storage::delete($photo);
            $anniversary->photos()->detach($photo);
        }

        $anniversary->tags()->detach();
        $anniversary->delete();
        return redirect()->route('anniversaries.index');
    }
}
