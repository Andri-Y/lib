<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * App\ArticleCategory
 *
 * @property int $id
 * @property string $value
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \App\Article $article
 * @method static \Illuminate\Database\Eloquent\Builder|\App\ArticleCategory whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\ArticleCategory whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\ArticleCategory whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\ArticleCategory whereValue($value)
 * @mixin \Eloquent
 * @property string $name
 * @property int $na
 * @method static \Illuminate\Database\Eloquent\Builder|\App\ArticleCategory whereNa($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\ArticleCategory whereName($value)
 * @property-read \App\Article $articles
 */
class ArticleCategory extends Model
{
    protected $fillable = ['value'];
    //
    public function articles(){
        return $this->belongsTo(Article::class);
    }
}
