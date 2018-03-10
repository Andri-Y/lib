<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Tag
 *
 * @property int $id
 * @property string $value
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Anniversary[] $anniversaries
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Article[] $articles
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Book[] $books
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Photo[] $photos
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Video[] $videos
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Tag whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Tag whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Tag whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Tag whereValue($value)
 * @mixin \Eloquent
 */

class Tag extends Model
{   //
    protected $table = 'tags';
    //
    protected $fillable = ['value'];
    //
    public function articles(){
        return $this->BelongsToMany(Article::class);
    }
    //
    public function books(){
        return $this->belongsToMany(Book::class);
    }
    //
    public function photos(){
        return $this->belongsToMany(Photo::class);
    }
    //
    public function videos(){
        return $this->belongsToMany(Video::class);
    }
}
