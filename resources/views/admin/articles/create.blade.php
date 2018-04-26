@extends('admin.articles')

@section('meta-title', 'Додати статтю')

@section('styles')
    <link href="{{URL::asset('bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('css/admin/styles.css')}}" rel="stylesheet">
    <link href="{{URL::asset('js/admin/imagerJs/dist/imagerJs.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('js/admin/wysiwyg/ui/trumbowyg.min.css')}}" rel="stylesheet">
    <style>
        #imagers {
            /*margin-top: 50px;
            margin-left: 350px;*/
        }
    </style>
    <link rel="stylesheet" href="
        {{URL::asset('https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css')}}
            ">
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
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <input type="text"
                                           name="tags"
                                           id="tags"
                                           class="form-control"
                                           placeholder="додайте ключові слова до цієї {{$category->name}}">
                                </div>
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
            </div>
            <div class="form-group" id="imagers">

            </div>
        </div>
    {!! Form::close() !!}
    </div>
@endsection
@section('left_sidebar')
            <div class="panel panel-default">
                <div class="panel-heading">
                    Прикріпити зображення:
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <button class="btn btn-primary" onclick="addNew()">
                            <span class="glyphicon glyphicon-plus"></span>
                        </button>
                    </div>
                </div>
            </div>
@endsection

@section('scripts')
    <script src="{{URL::asset('//ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js')}}"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-3.3.1.min.js"><\/script>')</script>
    <script src="{{URL::asset('js/admin/wysiwyg/trumbowyg.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('js/admin/wysiwyg/langs/ua.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('js/admin/imagerJs/dist/imagerJs.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('js/admin/imagerJs/ImagerJsConfig.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('js/admin/imagerJs/ImagerJsLocalization.js')}}"></script>
    {{--<script>
        jQuery(document).ready(function($) {
            $('#tags').magicSuggest({
                cls: 'form-control'
            });
        });
    </script>--}}
    <script>
        $('#trumbowyg').trumbowyg({
            lang: 'ua',
            btns: [
                ['undo', 'redo'], // Only supported in Blink browsers
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
        // apply german translations
        ImagerJs.translations.set(window.ImagerJsGerman);

        var pluginsConfig = {
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
                    // Here should be the code to upload image somewhere
                    // to Azure, Amazon S3 or similar. When upload completes we will have
                    // the url of uploaded image. Then call the function callback(image_url)
                    // to notify ImagerJs that image has been uploaded to the server
                    //
                    // Make sure that returned path is on the same domain that imagerJs was loaded from
                    // or contains proper access-control headers.
                    //
                    // for demo we just use some wallpaper
                    var imager = this;

                    //setTimeout(function() {
                    //))  callback('/example/wallpaper-2997883.jpg');
                    //}, 500); // emulate server call

                    console.log('uploading ' + imageId);

                    var data = imageData.replace(/^data:image\/(png|jpg|jpeg);base64,/, '');
                    var dataJson = '{ "imageId": "' + imageId + '", "imageData" : "' + data + '" }';

                    $.ajax({
                        url: 'https://www.imagerjs.com/api/upload/image',
                        dataType: 'json',
                        data: dataJson,
                        contentType: 'application/json; charset=utf-8',
                        type: 'POST',
                        success: function(imageUrl) {
                            callback(imageUrl); // assuming that server returns an `imageUrl` as a response
                            console.log('uploading success: ' + imageUrl);
                        },
                        error: function (xhr, status, error) {
                            console.log(error);
                        }
                    });


                }
            }
        };

        var options = {
            plugins: ['Rotate', 'Crop', 'Resize', 'Toolbar', 'Save', 'Delete', 'Undo'],
            editModeCss: {
            },
            pluginsConfig: pluginsConfig,
            quality: {
                sizes: [
                    { label: 'Original', scale: 1, quality: 1, percentage: 100 },
                    { label: 'Large', scale: 0.5, quality: 0.5, percentage: 50 },
                    { label: 'Medium', scale: 0.2, quality: 0.2, percentage: 20 },
                    { label: 'Small', scale: 0.05, quality: 0.05, percentage: 5 }
                ]
            }
        };

        var addNew = function () {
            var $imageContainer = $(
                '<div class="image-container">' +
                '  <img class="imager-test" ' +
                '       src="" ' +
                '       style="min-width: 300px; min-height: 200px; width: 300px;">' +
                '</div>');

            $('#imagers').append($imageContainer);
            var imager = new ImagerJs.Imager($imageContainer.find('img'), options);
            imager.startSelector();

            imager.on('editStart', function () {
                // fix image dimensions so that it could be properly placed on the grid
                imager.$imageElement.css({
                    minWidth: 'auto',
                    minHeight: 'auto'
                });
                var qualitySelector = new window.ImagerQualitySelector(imager, options.quality);

                var qualityContainer = $('<div class="imager-quality-standalone"></div>');
                qualityContainer.append(qualitySelector.getElement());

                imager.$editContainer.append(qualityContainer);

                qualitySelector.show();
                qualitySelector.update();
            });
        };
    </script>
@endsection
