<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Photo
 *
 * @property int $id
 * @property string $value
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Article[] $articles
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Book[] $books
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Tag[] $tags
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Photo whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Photo whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Photo whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Photo whereValue($value)
 * @mixin \Eloquent
 * @property string $image
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Photo whereImage($value)
 * @property int $is_main
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Photo whereIsMain($value)
 */
class Photo extends Model
{
    /*
     * function group to manipulate with main photo of objects (Article, Book, Gallery)
     *@return Photo */

    /**
     * @param $owner_object
     * @return mixed
     */
    public static function get_main_photo($owner_object){
        return $owner_object->photos()->where('is_main','=',true)->first();

    }
    /**
     * @param $image
     * @return Photo
     */
    public static function save_main_photo($main_image){
        $main_photo = new Photo();
        $main_photo->image = $main_image->path();
        $main_photo->is_main = true;
        $main_photo->save();
        return $main_photo;
    }
    /**
     * @param $owner_object
     */
    public static function delete_main_photo($owner_object){
        //
        $photo = Photo::get_main_photo($owner_object);
        if($photo->is_main = true || $photo->image = $owner_object->main_image){
            //physical delete file
            \File::delete(public_path().$owner_object->main_image);
            //delete file from database
            $owner_object->photos()->detach($owner_object->id);
            $photo->delete();
        }
    }
    /*//*/

    public function tags(){
        return $this->belongsToMany(Tag::class);
    }
    //
    public function articles(){
        return $this->BelongsToMany(Article::class);
    }
    //
    public function books(){
        return $this->belongsToMany(Book::class);
    }
}
