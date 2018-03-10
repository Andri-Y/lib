<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * App\BookCategory
 *
 * @property int $id
 * @property string $value
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \App\Book $books
 * @method static \Illuminate\Database\Eloquent\Builder|\App\BookCategory whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\BookCategory whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\BookCategory whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\BookCategory whereValue($value)
 * @mixin \Eloquent
 */
class BookCategory extends Model
{
    //
    public function books(){
        return $this->belongsTo(Book::class);
    }
}
