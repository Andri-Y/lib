<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

/**
 * App\Event
 *
 * @property int $id
 * @property string $slug
 * @property string $status
 * @property string $title
 * @property string|null $text
 * @property string|null $start_date
 * @property string $end_date
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property int $category_id
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Event findSimilarSlugs(\Illuminate\Database\Eloquent\Model $model, $attribute, $config, $slug)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Event whereCategoryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Event whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Event whereEndDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Event whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Event whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Event whereStartDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Event whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Event whereText($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Event whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Event whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Event extends Model
{
    use Sluggable;
    //
    protected $fillable = ['title','start_date','end_date'];

    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'title',
                'onUpdate' => true
            ]
        ];
    }
}