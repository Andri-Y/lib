@extends('admin.layout')

@section('meta-title', 'Редагувати новину')

@section('content')
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                Редагувати виставку
            </h1>
        </div>
    </div>
    <div class="panel-footer clearfix">
        {!! Form::open(['method'  => 'DELETE', 'route' => ['expos.destroy', $expo->slug]]) !!}
            {!! Form::submit('Видалити', ['class' => 'btn btn-warning confirm-delete']) !!}
        {{Form::close()}}
    </div>
    {!! Form::model($expo, ['route' => ['expos.update', $expo->slug] ,'method' => 'put', 'files' => true]) !!}
        <div class="row">
            <div class="col-lg-12">
                <div class="form-group">
                    {!! Form::text('header', null, ['placeholder' => 'Заголовок', 'class' => 'form-control']) !!}
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
                    <input type="text" name="tags" id="tags" class="form-control" placeholder="Додати теґи">
                </div>
            </div>
            <div class="col-lg-12">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            Публікація
                        </h3>
                    </div>
                    <div class="panel-body">
                        <div class="text-center">
                            <strong>
                                Востаннє змінено:
                            </strong>
                            {{ $expo->updated_at->format('d.m.Y \o\ H:i') }}
                            <div>
                                <a href="{{ route('expos.show', $expo->slug) }}" class="btn btn-info btn-xs" target="_blank">
                                    Попередній перегляд
                                </a>
                            </div>
                        </div>
                        <div class="form-group">
                            {!! Form::label('created_at', 'Дата створення') !!}
                            {!! Form::text('created_at', null, ['class'=>'form-control']) !!}
                        </div>
                    </div>
                    <div class="panel-footer clearfix">
                        {!! Form::submit('Зберегти', ['class' => 'btn btn-primary pull-right']) !!}
                    </div>
                </div>
                <div class="panel panel-info">
                    <div class="panel-heading">
                        Основне зображення
                    </div>
                    <div class="panel-body">
                        {!! Form::label('image', 'Виберіть зображення') !!}
                        <div class="fileUpload">
                            {!! Form::file('main_image', ['class' => 'upload', 'id' => 'image_file_upload']) !!}
                            <img src="{{\Illuminate\Support\Facades\Storage::url($expo->main_image)}}">
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
                data: {!! $tags !!},
                @if (count(old('tags')))
                    value: [
                        @foreach (old('tags') as $tag)
                            '{{ $tag }}',
                        @endforeach
                    ]
                @else
                    value: [
                        @foreach ($expo->tags as $tag)
                            '{{ $tag->value }}',
                        @endforeach
                    ]
                @endif
            });
        });
    </script>
@stop
