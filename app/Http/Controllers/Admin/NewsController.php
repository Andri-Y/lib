<?php

namespace App\Http\Controllers\Admin;

use App\Article;
use App\Photo;
use App\Tag;
use App\Http\Controllers\Controller;
use App\Video;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;

class NewsController extends Controller
{
    /**
     * Display a listing of news to admin panel.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        //
        $news = Article::whereCategoryId('1')->get()->sortByDesc('created_at');
        return view('admin.news.index')
            ->with('news', $news);
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function show($slug)
    {
        //
        $news_item = Article::whereSlug($slug)->with('photos')->first();
        $images = array();
        foreach ($news_item->photos() as $photo){
            $image = Image::make(Storage::get($photo->image))->resize(320,240)->encode();
        }
        return view('admin.news.index')
            ->with('news_item', $news_item);
    }

    /**
     * Show the form for creating a new news object.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        //
        $tags = Tag::groupBy('value')->pluck('value');
        return view('admin.news.create')->with('tags',json_encode($tags));
    }

    /**
     * Store a newly created news object with main image and tags in storage.
     *
     * @return \Redirect
     */
    public function store()
    {
        //
        $news_item = new Article(['header'=>request()->input('header')]);
        //set category_id where value: 1 = 'news'
        $news_item->category_id = 1;
        $news_item->header = request()->input('header');
        $news_item->preview = substr(request()->input('preview'),0,155);
        $news_item->main_text = request()->input('main_text');
        /*
         * Add an image
         */
        if(request()->file('main_image')!=null){
            $file = request()->file('main_image');
            //
            $w = 800;
            $h = 600;
            $path = 'public/photos/news/'.date('d.m.y').'/'.$w.'x'.$h.'/';
            $path = $file->hashName($path);
            $image = Image::make($file);
            $image->fit($w, $h);

            Storage::put($path, (string) $image->encode());
            //
            $main_photo = new Photo();
            $main_photo->image = $path;
            $main_photo->is_main = false;
            $main_photo->save();
            //
            $news_item->main_image = $main_photo->image;
            $news_item->save();
            $news_item->photos()->attach($main_photo);
            //
        }else
        {
            $news_item->save();
        }
        $other_images = Photo::whereUpdatedAt(null)->get();
        //
        if($other_images!=null){
            foreach ($other_images as $tmp){
                $tmp->updated_at = $tmp->created_at;
                $tmp->save();
                $news_item->photos()->attach($tmp);
            }
        }
        // set video
        if(request()->input('link')!=null){
            $video = new Video();
            $video->link = request()->input('link');
            $video->save();
            $news_item->videos()->attach($video);
        }
        // Clear previous tags
        $news_item->tags()->detach();
        //set tags from $request
        $tags = request()->input('tags');
        if (count($tags)) {
            foreach ($tags as $tag) {
                $new_tag = new Tag();
                $new_tag->value = $tag;
                $news_item->tags()->save($new_tag);
            }
        }
        return redirect()->route('news.index');
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
        $news_item = Article::whereSlug($slug)->with('photos')->with('tags')->first();
        $tags = Tag::groupBy('value')->pluck('value');


        return view('admin.news.edit')
            ->with('news_item', $news_item)
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

        $news_item = Article::whereSlug($slug)->with('photos')->with('tags')->first();
        //
        $news_item->header = request()->input('header');
        $news_item->preview = substr(request()->input('preview'),0,155);
        $news_item->main_text = request()->input('main_text');
        $news_item->save(['header'=>request()->input('header')]);
        /*
         * Add an image
         */
        if(request()->file('main_image')!=null){
            $file = request()->file('main_image');
            //
            $w = 800;
            $h = 600;
            $path = 'public/photos/news/'.date('d.m.y').'/'.$w.'x'.$h.'/';
            $path = $file->hashName($path);
            $image = Image::make($file);
            $image->fit($w, $h);
            if(!Storage::exists($path)){
                Storage::put($path, (string) $image->encode());
                $main_photo = new Photo();
                $main_photo->image = $path;
                $main_photo->is_main = true;
                $main_photo->save();
                $news_item->main_image = $main_photo->image;
                $news_item->photos()->attach($main_photo);
            }
        }else{
            $news_item->save();
        }
        //
        $other_images = Photo::whereUpdatedAt(null)->get();
        //
        foreach ($other_images as $tmp){
            $tmp->updated_at = $tmp->created_at;
            $tmp->save();
            if(!$news_item->photos()->has($tmp)){
                $news_item->photos()->attach($tmp);
            }
        }
        $news_item->photos()->attach($other_images);
        // Clear previous tags
        $news_item->tags()->detach();
        //set tags from $request
        $tags = request()->input('tags');
        if (count($tags)) {
            foreach ($tags as $tag) {
                $new_tag = new Tag();
                $new_tag->value = $tag;
                $news_item->tags()->save($new_tag);
            }
        }
        return redirect()->route('news.index');
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
        //
        $news_item = Article::whereSlug($slug)->with('photos')->with('tags')->first();
        //destroy image
        foreach ($news_item->photos() as $photo){

            $news_item->photos()->detach($photo);
        }

        $news_item->tags()->detach();
        $news_item->delete();
        return redirect()->route('news.index');
    }
}
