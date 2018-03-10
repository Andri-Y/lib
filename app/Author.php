<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Author
 *
 * @property int $id
 * @property string $value
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Book[] $books
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Tag[] $tags
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Author whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Author whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Author whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Author whereValue($value)
 * @mixin \Eloquent
 */
class Author extends Model
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
