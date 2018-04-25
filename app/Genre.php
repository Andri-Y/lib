<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Genre
 *
 * @property int $id
 * @property string $value
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Book[] $books
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Tag[] $tags
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Genre whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Genre whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Genre whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Genre whereValue($value)
 * @mixin \Eloquent
 * @property string $slug
 * @property string $name
 * @property string|null $info
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Genre whereInfo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Genre whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Genre whereSlug($value)
 */
class Genre extends Model
{
    //
    public function tags(){
        return $this->belongsToMany(Tag::class);
    }
    //
    public function books(){
        return $this->belongsToMany(Book::class);
    }
}
