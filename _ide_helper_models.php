<?php
/**
 * A helper file for your Eloquent Models
 * Copy the phpDocs from this file to the correct Model,
 * And remove them from this file, to prevent double declarations.
 *
 * @author Barry vd. Heuvel <barryvdh@gmail.com>
 */


namespace App{
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
	class Book extends \Eloquent {}
}

namespace App{
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
	class Event extends \Eloquent {}
}

namespace App{
/**
 * App\Tag
 *
 * @property int $id
 * @property string $value
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Anniversary[] $anniversaries
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Article[] $articles
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Book[] $books
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Photo[] $photos
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Video[] $videos
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Tag whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Tag whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Tag whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Tag whereValue($value)
 * @mixin \Eloquent
 */
	class Tag extends \Eloquent {}
}

namespace App{
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
	class Language extends \Eloquent {}
}

namespace App{
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
 */
	class ArticleCategory extends \Eloquent {}
}

namespace App{
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
	class Video extends \Eloquent {}
}

namespace App{
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
	class Article extends \Eloquent {}
}

namespace App{
/**
 * App\Photo
 *
 * @property int $id
 * @property string $value
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Article[] $articles
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Book[] $books
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Tag[] $tags
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Photo whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Photo whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Photo whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Photo whereValue($value)
 * @mixin \Eloquent
 * @property string $image
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Photo whereImage($value)
 * @property int $is_main
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Photo whereIsMain($value)
 * @property string $path
 * @property int $isAttached
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Photo whereIsAttached($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Photo wherePath($value)
 * @property int $is_attached
 */
	class Photo extends \Eloquent {}
}

namespace App{
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
 * @property string $slug
 * @property string $name
 * @property string|null $bio
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Author whereBio($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Author whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Author whereSlug($value)
 */
	class Author extends \Eloquent {}
}

namespace App{
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
	class BookCategory extends \Eloquent {}
}

namespace App{
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
	class Genre extends \Eloquent {}
}

namespace App{
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
	class Edition extends \Eloquent {}
}

namespace App{
/**
 * App\User
 *
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection|\Illuminate\Notifications\DatabaseNotification[] $notifications
 * @mixin \Eloquent
 * @property int $id
 * @property string $email
 * @property string $password
 * @property string $username
 * @property int $superuser
 * @property string|null $remember_token
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereRememberToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereSuperuser($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereUsername($value)
 */
	class User extends \Eloquent {}
}

