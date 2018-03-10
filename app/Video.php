<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Video
 *
 * @property int $id
 * @property string $value
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Article[] $articles
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Tag[] $tags
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Video whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Video whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Video whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Video whereValue($value)
 * @mixin \Eloquent
 * @property string $link
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Video whereLink($value)
 */
class Video extends Model
{
    //
    public function tags(){
        return $this->belongsToMany(Tag::class);
    }
    //
    public function articles(){
        return $this->BelongsToMany(Article::class);
    }
}
