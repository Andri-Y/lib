@extends('admin.layout')

@section('meta-title', 'Новини')

@section('content')
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                Книги
                <a href="{{ route('books.create') }}" class="btn btn-primary">
                    Створити книгу
                </a>
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <table class="table table-striped table-bordered table-hover" id="TablePost">
                <thead>
                    <tr>
                        <th>Заголовок</th>
                        <th>Автор</th>
                        <th>Видання</th>
                        <th>Жанр</th>
                        <th>Мова</th>
                        <th>рік видання</th>
                        <th>дата створення</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($books as $book)
                        <tr>
                            <td>
                                <a href="{{ route('books.edit', $book->slug) }}">
                                    {{ str_limit($book->name, 40) }}
                                </a>
                            </td>
                            <td>
                                @foreach($book->authors as $author)
                                    {{$author->value.','}}
                                @endforeach
                            </td>
                            <td>
                                @foreach($book->editions as $edition)
                                    {{$edition->value.','}}
                                @endforeach
                            </td>
                            <td>
                                @foreach($book->genres as $genre)
                                    {{$genre->value.','}}
                                @endforeach
                            </td>
                            <td>
                                @foreach($book->languages as $language)
                                    {{$language->value.','}}
                                @endforeach
                            </td>
                            <td>
                                {{$book->publication_date}}
                            </td>
                            <td>
                                {{ $book->created_at}}
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@stop

@section('scripts')
    {{--todo order scripts--}}
@stop
