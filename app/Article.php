<?php

namespace App;

use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Article
 *
 * @property int $id
 * @property string $header
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property string|null $event_date
 * @property string $preview
 * @property string $main_text
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Book[] $books
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Photo[] $photos
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Tag[] $tags
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Video[] $videos
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Article whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Article whereEventDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Article whereHeader($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Article whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Article whereMainText($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Article wherePreview($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Article whereUpdatedAt($value)
 * @mixin \Eloquent
 * @property string $meta_description
 * @property string $meta_keywords
 * @property string|null $anniversary
 * @property int|null $category_id
 * @property-read \App\ArticleCategory $article_category
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Article whereAnniversary($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Article whereCategoryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Article whereMetaDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Article whereMetaKeywords($value)
 * @property string $main_image
 * @property string $slug
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Article findSimilarSlugs(\Illuminate\Database\Eloquent\Model $model, $attribute, $config, $slug)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Article whereMainImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Article whereSlug($value)
 * @property-read \App\ArticleCategory $article_categories
 */
class Article extends Model implements RootModelImpl
{
    use Sluggable;

    protected $fillable = ['header','main_image','preview','slug','main_text'];

    /**
     * Return the sluggable configuration array for this model.
     *
     * @return array
     */
    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'header',
                'onUpdate' => true
            ]
        ];
    }
    /*Database relations functions*/
    public function article_categories(){
        return $this->hasOne(ArticleCategory::class);
    }
    //
    public function tags(){
        return $this->belongsToMany(Tag::class);
    }
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
    //Root methods
    public static function getAllByCategory($category)
    {
        return Article::whereCategoryId($category->id);
    }
    public static function getOneByCategory($id, $category)
    {
        // TODO: Implement getOneByCategory() method.
    }
}
