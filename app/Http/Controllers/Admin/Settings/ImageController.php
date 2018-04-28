<?php

namespace App\Http\Controllers\Admin\Settings;

use App\Article;
use App\Photo;
use App\Services\Upload;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use Intervention\Image\Response;

class ImageController extends Controller
{
    //
    public function uploadNewsImages(){
        $file = request()->file('image');
        //
        $w = 800;
        $h = 600;
        $path = 'public/photos/news/'.date('d.m.y').'/'.$w.'x'.$h.'/';
        $path = $file->hashName($path);
        $image = Image::make($file);
        $image->fit($w, $h);

        if(!Storage::exists($path)){
            Storage::put($path, (string) $image->encode());
            //
            $photo = new Image();
            $photo->image = $path;
            $photo->updated_at = null;
            $photo->is_main = false;
            $photo->save();
            //
            return [
                'success'=> true,
                'path'=> Storage::url($photo->image)
            ];
        }
        else
            $photo = Image::whereImage('$path')->first();
        return [
            'success'=> true,
            'path'=> Storage::url($photo->image)
        ];
    }
}
