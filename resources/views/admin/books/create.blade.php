@extends('admin.layout')

@section('meta-title', 'Додати новину')

@section('content')
    <div class="row">
        <div class="col-lg-6">
            <h1 class="page-header">
                Створити книгу, журнал чи інше видання
            </h1>
        </div>
    </div>
    {!! Form::open(['route' => 'books.store', 'files' => true]) !!}
        <div class="row">
            <div class="col-lg-6">
                <div class="form-group">
                    {!! Form::text('name', null, ['class' => 'form-control', 'placeholder' => 'Назва']) !!}
                </div>
                <div class="form-group">
                    {!! Form::text('publication_date', null, ['class' => 'form-control', 'placeholder' => 'рік видання']) !!}
                </div>
                <div class="form-group">
                    {!! Form::label('authors', '') !!}
                    <input type="text" name="authors" id="input" class="form-control" placeholder="автори">
                </div>
                <div class="form-group">
                    {!! Form::label('editions', '') !!}
                    <input type="text" name="editions" id="input" class="form-control" placeholder="видавництвa">
                </div>
                <div class="form-group">
                    {!! Form::label('languages', '') !!}
                    <input type="text" name="languages" id="input" class="form-control" placeholder="мова">
                </div>
                <div class="form-group">
                    {!! Form::label('genres', '') !!}
                    <input type="text" name="genres" id="input" class="form-control" placeholder="жанри">
                </div>
                <div class="form-group">
                    {!! Form::textarea('annotation', null, ['class' => 'form-control',
                     'placeholder' => 'аннотація']) !!}
                </div>
            </div>
            <div class="col-md-6">
                <div class="panel panel-success">
                    <div class="panel-footer text-right">
                        {!! Form::submit('Зберегти', ['class' => 'btn btn-primary']) !!}
                    </div>
                </div>
                <div class="panel panel-info">
                    <div class="panel-heading">
                        Титулка
                    </div>
                    <div class="panel-body">
                        {!! Form::label('main_image', 'Виберіть зображення') !!}
                        <div class="fileUpload">
                            {!! Form::file('main_image', ['class' => 'upload', 'id' => 'image_file_upload']) !!}
                            <img class="img-responsive" src="/img/admin/image-placeholder.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    {!! Form::close() !!}
@stop

@section('scripts')
    {{--<script>
        jQuery(document).ready(function($) {
            $('#input').magicSuggest({
                cls: 'form-control',
                data: {!!$authors!!},
                @if (count(old('authors')))
                value: [
                    @foreach (old('authors') as $author)
                        '{{$author}}',
                    @endforeach
                ]
                @endif
            });

        });
    </script>--}}
@stop
