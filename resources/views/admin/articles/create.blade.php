@extends('admin.articles')

@section('meta-title', 'Додати статтю')

@section('styles')
    <!-- Bootstrap -->
    <link href="{{URL::asset('bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- styles -->
    <link href="{{URL::asset('css/admin/styles.css')}}" rel="stylesheet">

    <link rel="stylesheet" href="{{URL::asset('js/lib/wysiwyg/ui/trumbowyg.min.css')}}">
@endsection

@section('content')
    <div class="col-md-9">
    {!! Form::open(['route' => 'articles.store', 'files' => true]) !!}
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <p>Для створення {{$category->name}} заповніть усі поля та натисніть "Зберегти"</p>
                    </div>
                    <div class="panel-footer">
                        <div class="row">
                            <div class="form-group col-lg-10">
                                {!! Form::text('header', null, ['class' => 'form-control',
                                                                'placeholder' => 'Заголовок']) !!}
                            </div>
                            <div class="col-lg-2">
                                {!! Form::submit('Зберегти', ['class' => 'btn btn-primary']) !!}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                {!! Form::hidden('id', $category->id) !!}
                <div class="form-group">
                    {!! Form::textarea('preview', null, ['class' => 'form-control',
                     'placeholder' => 'короткий огляд '.$category->name]) !!}
                </div>
                <div class="form-group">
                    {!! Form::textarea('main_text', null, ['id' => 'trumbowyg',
                                        'placeholder' => 'Основний текст']) !!}
                </div>
                <div class="form-group">
                    {{--{!! Form::label('tags', 'Теґи') !!}
                    <input type="text" name="tags" id="tags" class="form-control" placeholder="Додати новий теґ">--}}
                </div>
            </div>
{{--            <div class="col-md-12">
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
            </div>--}}
        </div>
    {!! Form::close() !!}
    </div>
@stop

@section('scripts')
    {{--<script>
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
    </script>--}}
    <script src="{{URL::asset('//ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js')}}"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-3.2.1.min.js"><\/script>')</script>
    <script src="{{URL::asset('js/lib/wysiwyg/trumbowyg.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('js/lib/wysiwyg/langs/ua.min.js')}}"></script>
    <script>
        $('#trumbowyg').trumbowyg({
            lang: 'ua',
            btnsDef: {
                image: {
                    fn: function() {
                        // Open a modal box
                        var $modal = $('#trumbowyg').trumbowyg('openModal', {
                            title: 'додати зображення',
                            content: '{!! Form::file('main_image', ['class' => 'upload', 'id' => 'image_file_upload']) !!}'
                        });
                        // Listen clicks on modal box buttons
                        $modal.on('tbwconfirm', function(e){
                            // Save datas
                            $("#trumbowyg").trumbowyg('closeModal');
                        });
                        $modal.on('tbwcancel', function(e){
                            $('#trumbowyg').trumbowyg('closeModal');
                        });
                    },
                    ico: 'insertImage'
                }
            },
            btns: [
                ['undo', 'redo'], // Only supported in Blink browsers
                ['formatting'],
                ['strong', 'em'],
                ['link'],
                ['image'],
                ['justifyLeft', 'justifyCenter', 'justifyRight', 'justifyFull'],
                ['removeformat'],
                ['fullscreen']
            ]
        });
    </script>
@stop
