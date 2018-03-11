<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
    /*
     * public routs group
     * */
        //

        Route::group(['namespace'=>'Pub', 'middleware'=>'guest'],function (){
            Route::get('/',['as'=>'public.news.index' , 'uses'=>' NewsController@index']);
            //
            Route::resource('message','VirtualReferenceController');
            //
            Route::get('it_center',function (){
                return view('pages.internet_center');
            });
            //
            Route::get('expos',function (){
                return view('pages.expos');
            });
            //
            Route::get('meets',function(){
                return view('pages.meets');
            });
            //
            Route::get('presentations',function(){
                return view('pages.presents');
            });
            //
            Route::get('books/fresh',function(){
                return view('pages.new_books');
            });
            //
            Route::get('books/periodicals',function(){
               return view('pages.periodicals');
            });
            //
            Route::get('books/e_resources', function(){
               return view('pages.e_resources');
            });
            //
            Route::get('books/rare', function (){
                return view('pages.rare_books');
            });
            //
            Route::get('books/local_lore_documents', function (){
                return view('pages.local_lore_documents');
            });
            //
            Route::get('books/bibliographic_editions', function(){
               return view('pages.bibliographic_editions');
            });
            //
            Route::get('catalog', function (){
                return view('pages.catalog');
            });
            //
            Route::get('v_expos', function (){
                return view('pages.v_expos');
            });
            //
            Route::get('c_a_calendar', function (){
                return view('pages.c_a_calendar');
            });
            //
            Route::get('gallery', function (){
                return view('pages.gallery');
            });

        });

        //News and index controller
        Route::group(['namespace'=>'Pub', 'middleware'=>'guest', 'prefix'=>'news'], function (){
            Route::get('/', ['as'=>'public.news.index' , 'uses'=>'NewsController@index']);
            Route::get('/{slug}',['as'=>'public.news.show' , 'uses'=>'NewsController@show']);
        });
        //Expos controller
        Route::group(['namespace'=>'Pub','middleware'=>'guest','prefix'=>'expos'],function(){
            Route::get('/', ['as'=>'public.pages.v_expos' , 'uses'=>'ExpoController@index']);
            Route::get('/{slug}',['as'=>'public.expos.show' , 'uses'=>'ExpoController@show']);
        });
        //Meetings controller
/*        Route::group(['namespace'=>'Pub','middleware'=>'guest','prefix'=>'meets'], function (){
            Route::get('/', ['as'=>'public.meets.index' , 'uses'=>'MeetsController@index']);
            Route::get('/{slug}',['as'=>'public.meets.show' , 'uses'=>'MeetsController@show']);
        });*/
        //Presentation controller
        /*Route::group(['namespace'=>'Pub', 'middleware'=>'guest','prefix'=>'presentations'],function (){
            Route::get('/', ['as'=>'public.presentations.index' , 'uses'=>'PresentationsController@index']);
            Route::get('/{slug}',['as'=>'public.presentations.show' , 'uses'=>'PresentationsController@show']);
        });*/
        //Route for redirect auth controller to index page
        Route::group(['prefix'=>'users','middleware'=>'guest'],function(){
           Route::auth();
        });
/*
 * Admin panel routes
 * */
    Route::group(['prefix'=>'admin', 'namespace'=>'Admin','middleware' => ['auth']], function()
    {
        Route::get('/',function (){
            return view('admin.dashboard');
        });
        Route::get('/dashboard',function (){
            return view('admin.dashboard');
        });

        Route::get('articles',function(){
            return view('admin.articles');
        });
        Route::get('events', ['as'=>'events','uses'=>'EventController@index']);

        Route::get('analytics',function(){
            return view('admin.analytics');
        });
        Route::get('users',function(){
            return view('admin.users');
        });
        Route::get('settings',function(){
            return view('admin.settings');
        });
        Route::get('library',function(){
            return view('admin.library');
        });
        Route::get('storage',function(){
            return view('admin.storage');
        });
        Route::get('feedback',function(){
            return view('admin.feedback');
        });
        //News
        Route::resource('news','NewsController');
        Route::get('news/{id}/delete',['uses' => 'NewsController@delete', 'as' => 'news.delete']);
        //Anniversaries
        Route::resource('anniversaries',  'AnniversaryController');
        Route::get('anniversaries/{id}/delete',
            ['uses' => 'AnniversaryController@delete', 'as' => 'anniversaries.delete']);
        //Books
        Route::resource('books','BooksController');
        Route::get('book/{id}/delete',//todo delete
            ['uses']);
        //Expos
        Route::resource('expos','ExpoController');
        Route::get('expo/{id}/delete',//todo delete
                ['uses']);
        //Meetings
        Route::resource('meetings', 'MeetingController');
        Route::get('meeting/{id}/delete',//todo delete
            ['uses']);
        //Presentations
        Route::resource('presentations','PresentationController');
        Route::get('presentation/{id}/delete',//todo delete
            ['uses']);
        //Promotions
        Route::resource('promotions','PromotionsController');
        Route::get('expo/{id}/delete',//todo delete
            ['uses']);
        //Virtual expos
        Route::resource('v_expos','VirtualExpoController');
        Route::get('v_expo/{id}/delete',//todo delete
            ['uses']);
        //Catalog
        Route::resource('catalog','CatalogController');
        Route::get('catalog/{id}/delete',//todo delete
            ['uses']);

        //Image upload for WYSIWYG
        Route::post('image/upload','Settings\ImageController@uploadNewsImages');

        //Admin panel service settings routes
        Route::group(['prefix'=>'admin/settings', 'namespace'=>'Settings'],function (){
            //
            Route::get('/',function (){
                return view('admin.root_settings');
            });
            //
            Route::resource('article_categories','ArticleCategoryController');
            Route::resource('book_categories','BookCategoryController');
        });
    });


