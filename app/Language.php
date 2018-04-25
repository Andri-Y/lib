<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Language
 *
 * @property int $id
 * @property string $value
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Book[] $books
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Tag[] $tags
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Language whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Language whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Language whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Language whereValue($value)
 * @mixin \Eloquent
 * @property string $slug
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Language whereSlug($value)
 */
class Language extends Model
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
