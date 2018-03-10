@extends('admin.layout')

@section('meta-title', 'Редагувати подію')

@section('content')
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                Редагувати подію
            </h1>
        </div>
    </div>
    <div class="panel-footer clearfix">
        {!! Form::open(['method'  => 'DELETE', 'route' => ['anniversaries.destroy', $anniversary->id]]) !!}
            {!! Form::submit('Видалити', ['class' => 'btn btn-warning confirm-delete']) !!}
        {{Form::close()}}
    </div>
    {!! Form::model($anniversary, ['route' => ['anniversaries.update', $anniversary->id] ,'method' => 'put', 'files' => true]) !!}
        <div class="row">
            <div class="col-lg-12">
                <div class="form-group">
                    {!! Form::text('header', null, ['placeholder' => 'Заголовок', 'class' => 'form-control']) !!}
                </div>
                <div class="form-group">
                    {!! Form::text('preview', null, ['class' => 'form-control',
                     'placeholder' => 'короткий огляд події']) !!}
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
                            {{ $anniversary->updated_at->format('d.m.Y \o\ H:i') }}
                            <div>
                               {{-- <a href="{{ route('$anniversary.show', $$anniversary->slug) }}" class="btn btn-info btn-xs" target="_blank">
                                    View Post
                                </a>--}}
                            </div>
                        </div>
                        <div class="form-group">
                            {!! Form::label('anniversary', 'Дата') !!}
                            {{ Form::text('anniversary', '', array('id' => 'datepicker')) }}
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
                            {!! Form::file('image', ['class' => 'upload', 'id' => 'image_file_upload']) !!}
                            <img src="{{$anniversary->main_image}}">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    {!! Form::close() !!}
@stop

@section('scripts')
    <script>
        $(function() {
            $( "#datepicker" ).datepicker({dateFormat: 'd-mm-yy'});
        });
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
                        @foreach ($anniversary->tags as $tag)
                            '{{ $tag->value }}',
                        @endforeach
                    ]
                @endif
            });
        });
    </script>
@stop
