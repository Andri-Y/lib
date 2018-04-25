<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Edition
 *
 * @property int $id
 * @property string $value
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Book[] $books
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Tag[] $tags
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Edition whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Edition whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Edition whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Edition whereValue($value)
 * @mixin \Eloquent
 * @property string $slug
 * @property string $name
 * @property string|null $info
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Edition whereInfo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Edition whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Edition whereSlug($value)
 */
class Edition extends Model
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
