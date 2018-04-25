<?php

namespace App\Http\Controllers\Admin;

use App\Author;
use App\Book;
use App\Edition;
use App\Genre;
use App\Language;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class BooksController extends Controller implements ResourceController
{
    public function index(){
        $books = Book::with('authors')->get();
        return view('admin.books.index')->with('books', $books);

    }
    //
    public function create(){
        $authors = Author::all()->groupBy('value')->pluck('value');
        $editions = Edition::all()->groupBy('value')->pluck('value');
        $genres = Genre::all()->groupBy('value')->pluck('value');
        $languages = Language::all()->groupBy('value')->pluck('value');
        return view('admin.books.create')->
        with('authors',json_encode($authors))->
        with('editions',json_encode($editions))->
        with('genres', json_encode($genres))->
        with('languages',json_encode($languages));
    }
    //
    public function store()
    {
        $book = new Book(['name'=>request()->input('name')]);
        $book->annotation = request()->input('annotation');
        $book->publication_date = request()->input('publication_date');
        $book->save();
        //authors
        // Clear previous authors
        $book->authors()->detach();
        //set authors from request
        $authors = request()->input('authors');
        if (count($authors)>1) {
            foreach ($authors as $author) {
                $new_author = new Author();
                $new_author->value = $author;
                $book->authors()->save($new_author);
            }
        }else{
            $new_author = new Author();
            $new_author->value = request()->input('authors');
            $book->authors()->save($new_author);
        }
        //editions
        // Clear previous editions
        $book->editions()->detach();
        //set editions from request
        $editions = request()->input('editions');
        if (count($editions)>1) {
            foreach ($editions as $edition) {
                $new_edition = new Edition();
                $new_edition->value = $edition;
                $book->editions()->save($new_edition);
            }
        }
        else{
            $new_edition = new Edition();
            $new_edition->value = request()->input('editions');
            $book->editions()->save($new_edition);
        }
        //languages
        // Clear previous languages
        $book->languages()->detach();
        //set languages from $request
        $languages = request()->input('languages');
        if (count($languages)>1) {
            foreach ($languages as $language) {
                $new_language = new Language();
                $new_language->value = $language;
                $book->languages()->save($new_language);
            }
        }
        else{
            $new_language = new Language();
            $new_language->value = request()->input('languages');
            $book->languages()->save($new_language);
        }
        //genres
        // Clear previous genres
        $book->genres()->detach();
        //set genres from $request
        $genres = request()->input('genres');
        if (count($genres)>1) {
            foreach ($genres as $genre) {
                $new_genre = new Genre();
                $new_genre->value = $genre;
                $book->genres()->save($new_genre);
            }
        }
        else{
            $new_genre = new Genre();
            $new_genre->value = request()->input('genres');
            $book->genres()->save($new_genre);
        }

        return redirect()->route('books.index');
    }
    //
    public function edit($id)
    {
        $tag=Tag::find($id);
        return view('admin.tags.edit',['tag'=>$tag]);
    }
    //
    public function update($id)
    {
        $tag=Tag::find($id);
        $tag->update(request()->all());
        $tag->save();
        return back()->with('message','Теґ змінено');
    }
    //
    public function destroy($id)
    {
        $tag=Tag::find($id);
        $tag->delete();
        return redirect()->back()->with('message',"Теґ ".$tag->value." видалено");
    }

    public function show($slug)
    {
        // TODO: Implement show() method.
    }
}
