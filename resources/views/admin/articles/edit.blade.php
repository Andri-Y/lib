@extends('admin.articles')

@section('meta')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection

@section('styles')
    <link href="{{URL::asset('bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('css/admin/styles.css')}}" rel="stylesheet">
    <link href="{{URL::asset('js/admin/imagerJs/dist/imagerJs.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('js/admin/wysiwyg/ui/trumbowyg.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('js/admin/magicSuggest/magicsuggest-min.css')}}" rel="stylesheet">
    <style>
        #imagers {
            /*margin-top: 50px;
            margin-left: 350px;*/
        }
    </style>
    <link rel="stylesheet"
          href="{{URL::asset('https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css')}}">
@endsection

@section('content')
    <div class="col-md-9">
        {!! Form::open(['route' => 'articles.store']) !!}
        {!! Form::hidden('article_id',$article->id) !!}
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h5>Для  редагування {{ $article_category->name }}:</h5>
                        <ol>
                            <li> Змініть текстові дані</li>
                            <li> Видаліть застарілі,або чи неактуальні фотографії</li>
                            <li> Прикірпіть фотографію</li>
                            <li> Відредагуйте і збережіть фотографію</li>
                            <li> Для додавання декількох фотографій - повторіть операції 3 і 4</li>
                            <li> Збережіть статтю, натиснувши кнопку "Зберегти"</li>
                        </ol>
                    </div>
                    <div class="panel-footer">
                        <div class="row">
                            <div class="form-group col-lg-10">
                                {!! Form::text('header', $article->header,
                                                ['class' => 'form-control',
                                                 'placeholder' => 'Заголовок']) !!}
                            </div>
                            <div class="col-lg-2">
                                {!! Form::submit('Зберегти', ['class' => 'btn btn-primary']) !!}
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <input type="text"
                                           name="tags"
                                           id="tags"
                                           class="form-control"
                                           placeholder="додайте ключові слова до цієї {{$article_category->name}}">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                {!! Form::hidden('category_id', $article_category->id) !!}
                <div class="form-group">
                    {!! Form::textarea('preview',  $article->preview,
                                               ['class' => 'form-control',
                                                'placeholder' => 'короткий огляд '.$article_category->name]) !!}
                </div>
                <div class="form-group">
                    {!! Form::textarea('main_text', $article->main_text,
                                                ['id' => 'trumbowyg',
                                                 'placeholder' => 'Основний текст']) !!}
                </div>
            </div>
            <div class="form-group" id="imagers"></div>
        </div>
        {!! Form::close() !!}
        <div class="row">
            <div class="col-md-14">
                @foreach($article->photos()->get() as $photo)
                    <div class="thumbnail">
                            <img src="{{$photo->path}}" style="width:100%">
                            <div class="caption">
                            </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
        @endsection
        @section('left_sidebar')
            <div class="panel panel-default">
                <div class="panel-heading">
                    Робота з фото:
                </div>
                <div class="panel-body">

                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    Прикріпити зображення:
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <h6>Додати</h6>
                        <button class="btn btn-primary" onclick="addNew()">
                                <span class="glyphicon glyphicon-plus" style="color: white;">
                                </span>
                        </button>
                    </div>
                </div>
            </div>
        @endsection

        @section('scripts')
            <script src="{{URL::asset('https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js')}}"></script>
            <script src="{{URL::asset('js/admin/wysiwyg/trumbowyg.min.js')}}"></script>
            <script type="text/javascript" src="{{URL::asset('js/admin/wysiwyg/langs/ua.min.js')}}"></script>
            <script type="text/javascript" src="{{URL::asset('js/admin/imagerJs/dist/imagerJs.min.js')}}"></script>
            {{--<script type="text/javascript" src="{{URL::asset('js/admin/imagerJs/ImagerJsConfig.js')}}"></script>--}}
            <script type="text/javascript" src="{{URL::asset('js/admin/imagerJs/ImagerJsLocalization.js')}}"></script>
            <script type="text/javascript" src="{{URL::asset('js/admin/magicSuggest/magicsuggest-min.js')}}"></script>
            <script>
                const allTags = [@foreach ($tags as $tag) '{{$tag}}', @endforeach];
                let ownTags = [@foreach ($article->tags()->get() as $tag) '{{$tag->value}}', @endforeach];
                let tags = $('#tags').magicSuggest({
                    cls: 'form-control',
                    data: allTags,
                    @if (count(old('tags')))
                    value: [
                        @foreach (old('tags') as $tag) {{$tag->value}} @endforeach
                    ]
                    @endif
                });
                @if(count($article->tags()->get())) tags.setValue(ownTags); @endif
            </script>
            <script>
                $('#trumbowyg').trumbowyg({
                    lang: 'ua',
                    btns: [
                        ['undo', 'redo'],
                        ['formatting'],
                        ['strong', 'em'],
                        ['link'],
                        ['upload'],
                        ['justifyLeft', 'justifyCenter', 'justifyRight', 'justifyFull'],
                        ['removeformat'],
                        ['fullscreen']
                    ]

                });
            </script>
            <script>
                ImagerJs.translations.set(window.ImagerJsGerman);
                const pluginsConfig = {
                    Crop: {
                        controlsCss: {
                            width: '15px',
                            height: '15px',
                            background: 'white',
                            border: '1px solid black'
                        },
                        controlsTouchCss: {
                            width: '25px',
                            height: '25px',
                            background: 'white',
                            border: '2px solid black'
                        }
                    },
                    Save: {
                        upload: true,
                        uploadFunction: function (imageId, imageData, callback) {
                            let data = imageData.replace(/^data:image\/(png|jpg|jpeg);base64,/, '');
                            let dataJson = '{ "imageId": "' + imageId + '", "imageData" : "' + data + '" }';
                            //
                            $.ajax({
                                headers: {
                                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                                },
                                url: '{{route('articles.add.image')}}',
                                dataType:
                                    'json',
                                data:
                                dataJson,
                                contentType:
                                    'application/json; charset=utf-8',
                                type:
                                    'POST',
                                success:
                                    function (imageUrl) {
                                        callback(imageUrl);
                                    }
                                ,
                                error: function (xhr, status, error) {
                                    console.error(error);
                                }
                            })
                            ;
                        }
                    }
                };
                const options = {
                    plugins: ['Rotate', 'Crop', 'Resize', 'Toolbar', 'Save', 'Delete', 'Undo'],
                    editModeCss: {},
                    pluginsConfig: pluginsConfig,
                    quality: {
                        sizes: [
                            {label: 'Original', scale: 1, quality: 1, percentage: 100},
                            {label: 'Large', scale: 0.5, quality: 0.5, percentage: 50},
                            {label: 'Medium', scale: 0.2, quality: 0.2, percentage: 20},
                            {label: 'Small', scale: 0.05, quality: 0.05, percentage: 5}
                        ]
                    }
                };
                let addNew = function () {
                    let $imageContainer = $(
                        '<div class="image-container">' +
                        '  <img class="imager-test" ' +
                        '       src="" ' +
                        '       style="min-width: 300px; min-height: 200px; width: 300px;">' +
                        '</div>');

                    $('#imagers').append($imageContainer);
                    let imager = new ImagerJs.Imager($imageContainer.find('img'), options);
                    imager.startSelector();

                    imager.on('editStart', function () {
                        // fix image dimensions so that it could be properly placed on the grid
                        imager.$imageElement.css({
                            minWidth: 'auto',
                            minHeight: 'auto'
                        });
                        let qualitySelector = new window.ImagerQualitySelector(imager, options.quality);

                        let qualityContainer = $('<div class="imager-quality-standalone"></div>');
                        qualityContainer.append(qualitySelector.getElement());

                        imager.$editContainer.append(qualityContainer);

                        qualitySelector.show();
                        qualitySelector.update();
                    });
                };
            </script>
        @endsection
