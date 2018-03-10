<?php

namespace App;

use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Book
 *
 * @property int $id
 * @property string $name
 * @property string $annotation
 * @property string $publication_date
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Article[] $articles
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Author[] $authors
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Edition[] $editions
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Genre[] $genres
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Language[] $languages
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Photo[] $photos
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Tag[] $tags
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Book whereAnnotation($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Book whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Book whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Book whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Book wherePublicationDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Book whereUpdatedAt($value)
 * @mixin \Eloquent
 * @property int|null $category_id
 * @property-read \App\BookCategory $book_category
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Book whereCategoryId($value)
 * @property string $slug
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Book findSimilarSlugs(\Illuminate\Database\Eloquent\Model $model, $attribute, $config, $slug)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Book whereSlug($value)
 */
class Book extends Model
{
    use Sluggable;

    protected $fillable = ['name','annotation','slug'];

    /**
     * Return the sluggable configuration array for this model.
     *
     * @return array
     */
    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'name',
                'onUpdate' => true
            ]
        ];
    }
    //
    public function book_category(){
        return $this->hasOne(BookCategory::class);
    }
    //
    //
    public function articles(){
        return $this->BelongsToMany(Article::class);
    }
    //
    public function authors(){
        return $this->belongsToMany(Author::class);
    }
    //
    public function editions(){
        return $this->belongsToMany(Edition::class);
    }
    //
    public function genres(){
        return $this->belongsToMany(Genre::class);
    }
    //
    public function languages(){
        return $this->belongsToMany(Language::class);
    }
    //
    public function photos(){
        return $this->belongsToMany(Photo::class);
    }
}
