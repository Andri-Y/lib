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
            Route::get('/',['as'=>'index','uses'=>'IndexController@index']);
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

        Route::resource('article_categories','ArticleCategoryController');
        Route::resource('articles','ArticleController');
        Route::post('articles/add/image',[
            'as' => 'articles.add.image',
            'uses' => 'ArticleController@saveImages'
        ]);

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
        //Books
        Route::resource('books','BooksController');
        Route::get('book/{id}/delete',//todo delete
            ['uses']);
        //Photo upload for WYSIWYG
        Route::post('image/upload','Settings\ImageController@uploadNewsImages');

    });


