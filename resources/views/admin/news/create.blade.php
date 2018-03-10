@extends('admin.layout')

@section('meta-title', 'Додати новину')

@section('content')
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                Додати новину
            </h1>
        </div>
    </div>
    {!! Form::open(['route' => 'news.store', 'files' => true]) !!}
        <div class="row">
            <div class="col-lg-12">
                <div class="form-group">
                    {!! Form::text('header', null, ['class' => 'form-control', 'placeholder' => 'Заголовок']) !!}
                </div>
                <div class="form-group">
                    {!! Form::text('preview', null, ['class' => 'form-control',
                     'placeholder' => 'короткий огляд новини']) !!}
                </div>
                <div class="form-group">
                    {!! Form::textarea('main_text', null, ['class' => 'wysiwyg']) !!}
                </div>
                <div class="form-group">
                    {!! Form::label('tags', 'Теґи') !!}
                    <input type="text" name="tags" id="tags" class="form-control" placeholder="Додати новий теґ">
                </div>
            </div>
            <div class="col-md-12">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            Опублікувати
                        </h3>
                    </div>
                    <div class="panel-footer text-right">
                        {!! Form::submit('Зберегти', ['class' => 'btn btn-primary']) !!}
                    </div>
                </div>
                <div class="panel panel-info">
                    <div class="panel-heading">
                        Основне зображення
                    </div>
                    <div class="panel-body">
                        {!! Form::label('main_image', 'Виберіть зображення') !!}
                        <div class="fileUpload">
                            {!! Form::file('main_image', ['class' => 'upload', 'id' => 'image_file_upload']) !!}
                            <img src="/img/admin/image-placeholder.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    {!! Form::close() !!}
@stop

@section('scripts')
    <script>
        jQuery(document).ready(function($) {
            $('#tags').magicSuggest({
                cls: 'form-control',
                data: {!!$tags!!},
                @if (count(old('tags')))
                    value: [
                        @foreach (old('tags') as $tag)
                            '{{$tag}}',
                        @endforeach
                    ]
                @endif
            });
        });
    </script>
@stop
