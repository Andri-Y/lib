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
 * @property string $path
 * @property int $isAttached
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Photo whereIsAttached($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Photo wherePath($value)
 * @property int $is_attached
 */
class Photo extends Model
{
    
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
