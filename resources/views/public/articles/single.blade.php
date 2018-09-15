
<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Центральна міська бібліотека ім. В. Чорновола</title>
    <!-- Bootstrap -->
    <link href="{{URL::asset('css/bootstrap.css')}}" rel="stylesheet">
    <!-- Custom -->
    <link href="{{URL::asset('css/library.css')}}" rel="stylesheet">
    <!--
google fonts:
      font-family: 'Marck Script', cursive;
      font-family: 'Alice', serif;
    -->
    <link href="{{URL::asset('https://fonts.googleapis.com/css?family=Alice|Marck+Script|Neucha|PT+Mono&amp;subset=cyrillic')}}" rel="stylesheet">
    <link href="{{URL::asset('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css')}}" rel="stylesheet">
    <!-- favicon -->
    <link rel="icon" type="image/png" sizes="32x32" href="{{URL::asset('img/favicon-32x32.png')}}">
{{--fancybox for news gallery--}}
<link rel="stylesheet" href="{{URL::asset('//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css')}}" media="screen">

<!-- Вставка HTML5 поєднується з Respond.js для підтримки в IE8 елементів HTML5 та медіа-запитів -->
<!-- ЗАСТЕРЕЖЕННЯ: файл Respond.js не працює, якщо ви проглядаєте сторінку відкривши її з файлової системи -->
<!--[if lt IE 9]>
<script src="{{URL::asset('https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js')}}"></script>
<script src="{{URL::asset('https://oss.maxcdn.com/respond/1.4.2/respond.min.js')}}"></script>
<![endif]-->
</head>
<body>
<!-- top of page -->
<div class="container-fluid fonts">
    <button onclick="topFunction()" id="myBtn" title="повернутись до початку">до початку</button>
    <div class="row">
        <div class="col-xs-12 main-header">
            <!-- logo and name space -->
            <div class="col-xs-1 logo">
                <img class="img-responsive" src="img/logo.jpeg">
            </div>
            <div class="col-xs-4">
                <a href="/" style="text-decoration: none;">
                    <h2 class="logo-text">
                        <em>
                            Дрогобицька Центральна <br>
                            міська бібліотека <br>
                            імені В`ячеслава Чорновола
                        </em>
                    </h2>
                </a>
            </div>
            <!-- worktime and contacts as modal references -->
            <div class="col-xs-3 right-side-header">
                <a href=""><span class="glyphicon glyphicon-time" aria-hidden="true"></span> час роботи</a>
                <a href=""><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> контакти</a>
            </div>
            <!-- end main-header content -->
        </div>
    </div>
</div>
<!-- end top of page -->
<!-- navigation bar -->
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-12">
            <nav class="main-navbar" role="navigation">
                <ul class="nav navbar-nav">
                    <li><a href="{{URL::asset('it_center')}}">ІНТЕРНЕТ-ЦЕНТР</a></li>
                    <li class="dropdown ">
                        <a href="#" id="drop1" data-toggle="dropdown" class="dropdown-toggle" role="button">ПОДІЇ</a>
                        <ul role="menu" class="dropdown-menu" aria-labelledby="drop1">
                            <li role="presentation">
                                <a href="{{URL::asset('expos')}}" role="menuitem">виставки</a>
                            </li>
                            <li role="presentation">
                                <a href="{{URL::asset('presentations')}}" role="menuitem">презентації книг</a>
                            </li>
                            <li role="presentation">
                                <a href="{{URL::asset('meets')}}" role="menuitem">зутрічі</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown ">
                        <a href="#" id="drop1" data-toggle="dropdown" class="dropdown-toggle" role="button">ВИДАННЯ</a>
                        <ul role="menu" class="dropdown-menu" aria-labelledby="drop1">
                            <li role="presentation">
                                <a href="{{URL::asset('new_books')}}" role="menuitem">книжкові новинки</a>
                            </li>
                            <li role="presentation">
                                <a href="{{URL::asset('periodicals')}}" role="menuitem">періодичні видання</a>
                            </li>
                            <li role="presentation">
                                <a href="{{URL::asset('e_resources')}}" role="menuitem">електронні ресурси</a>
                            </li>
                            <li role="presentation">
                                <a href="{{URL::asset('rare_books')}}" role="menuitem">рідкісні та цінні книги</a>
                            </li>
                            <li role="presentation">
                                <a href="{{URL::asset('local_lore_documents')}}" role="menuitem">фонд краєзнавчих документів</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="{{URL::asset('catalog')}}">Е-КАТАЛОГ</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</div>
<!-- end of navigation bar -->
<!-- main photo slider -->
<div id="fade-effect" class="carousel slide carousel-fade" data-ride="carousel">
    <!-- Обгортка для слайдів -->
    <div class="carousel-inner" role="listbox">
        <!-- active (first) item -->
        <div class="item active">
            <img class="main-photo" src="img/main_page/lib1.jpg">
            <div class="carousel-caption">
            </div>
        </div>
        <!-- other items -->
        <div class="item">
            <img class="main-photo" src="img/main_page/lib2.jpg">
            <div class="carousel-caption">
            </div>
        </div>
        <!-- other items -->
        <div class="item">
            <img class="main-photo" src="img/main_page/lib3.jpg">
            <div class="carousel-caption">
            </div>
        </div>
        <!-- other items -->
        <div class="item">
            <img class="main-photo" src="img/main_page/lib4.jpg">
            <div class="carousel-caption">
            </div>
        </div>
        <!-- other items -->
        <div class="item">
            <img class="main-photo" src="img/main_page/lib5.jpg">
            <div class="carousel-caption">
            </div>
        </div>
        <!-- other items -->
        <div class="item">
            <img class="main-photo" src="img/main_page/lib6.jpg">
            <div class="carousel-caption">
            </div>
        </div>
    </div>
</div>
<!-- end of photo slider -->
<!-- MAIN CONTENT -->
<div class="container-fluid body-content">
    <div class="row">
        <!-- main column -->
        <div class="col-md-9 main-column">
            <!-- news item -->
            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-sm-4 col-xs-6 col-md-12 col-lg-12 news-item">
                    <h3>
                        {{$news_item->header}}
                    </h3>
                </div>
            </div>
            <!-- /.row -->
            <div class="col-sm-4 col-xs-6 col-md-12 col-lg-12 news_item_carousel">
                <div class="row">
                    <div id="news-item-carousel" class="carousel slide col-md-6 col-sm-4 col-xs-6" data-ride="carousel">
                        <div class="carousel-inner" role="listbox">
                            @foreach($news_item->photos as $photo)
                                <div class="item {{ $photo->image == $news_item->main_image ? 'active' : '' }}">
                                    <a class="thumbnail fancybox" rel="ligthbox" href="{{Storage::url($photo->image)}}">
                                        <img class="img-responsive" alt="" src="{{Storage::url($photo->image)}}" />
                                    </a>
                                </div>
                            @endforeach
                        </div>
                        <!-- controls -->
                        <a class="left carousel-control" href="#news-item-carousel" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Попередній</span>
                        </a>
                        <a class="right carousel-control" href="#news-item-carousel" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Наступний</span>
                        </a>
                    </div>
                    @foreach($news_item->videos as $video)
                        {!! $video->link !!}
                    @endforeach
                    <div class="news-maintext col-md-6 col-sm-4 col-xs-6">
                        <p>{!! strip_tags($news_item-> main_text) !!}</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- right column -->
        <div class="col-md-3 right-column">
            <img class="img-responsive" src="img/constitution.jpg">
            <div class="list-group">
                <a href="#{{--expos.html--}}" class="list-group-item">віртуальні виставки</a>
                <a href="#{{--new_books.html--}}" class="list-group-item">нові надходження</a>
                <a href="#{{--bibliographic_editions.html--}}" class="list-group-item">інформаційно-бібліографічні видання</a>
                <a href="#{{--c_a_calendar.html--}}" class="list-group-item">календар пам'ятних та ювілейних дат</a>
                <a href="#{{--gallery.html--}}" class="list-group-item">галерея</a>
                <a href="#{{--promotions.html--}}" class="list-group-item">конкурси та акції</a>
            </div>
            <!-- fresh books carousel -->
            <div class="carousel slide vertical" id="FreshBooksCarousel" data-ride="vertical_carousel">
                <nav>
                    <ul class="control-box pager">
                        <li><a data-slide="prev" href="#FreshBooksCarousel" class=""><i class="glyphicon glyphicon-chevron-down"></i></a></li>
                        <li><a data-slide="next" href="#FreshBooksCarousel" class=""><i class="glyphicon glyphicon-chevron-up"></i></a></li>
                    </ul>
                </nav>
                <div class="carousel-inner">
                    @yield('fresh_books')
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END OF MAIN CONTENT -->
<!-- footer -->
<footer>
    <div class="row">
        <!-- footer logo -->
        <div class="col-xs-4">
            {{--<a href="/admin"><p>admin panel</p></a>--}}
        </div>
        <!-- additional links -->
        <div class="col-xs-4 footer">
            <ul class="footer-block">
                <h4 class="">ІНФОРМАЦІЯ</h4>
                <li class="">про бібліотеку</li>
                <li class="">контакти</li>
            </ul>
            <ul class="footer-block">
                <h4 class="">ДОДАТКОВО</h4>
                <li class="">корисні посилання</li>
                <li class="">партнери</li>
            </ul>
        </div>
        <!-- social networks -->
        <div class="col-xs-4">
            <div class="social_networks">
                <a class="fa fa-facebook fa-2x" href="#">
                </a>
                <a class="fa fa-youtube-play fa-2x" href="#">
                </a>
                <a class="fa fa-google-plus fa-2x" href="#">
                </a>
                <a class="fa fa-linkedin fa-2x" href="#">
                </a>

            </div>
        </div>
        <!-- copyright -->
        <div class="col-xs-12"></div>
    </div>
</footer>

<!-- jQuery (потрібно для JavaScript плагінів Bootstrap) -->
<script src="{{URL::asset('https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js')}}"></script>
<!-- Підключення мінімізованої збірки всіх плагінів jQuery. Можна підключати додаткові плагіни, якщо потрібно -->
<script src="{{URL::asset('js/bootstrap.js')}}"></script>
<!-- custom scripts -->
<script src="{{URL::asset('js/library.js')}}"></script>
<script src="{{URL::asset('//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js')}}"></script>
<script>
    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function() {scrollFunction()};

    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            document.getElementById("myBtn").style.display = "block";
        } else {
            document.getElementById("myBtn").style.display = "none";
        }
    }

    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
        document.body.scrollTop = 0; // For Chrome, Safari and Opera
        document.documentElement.scrollTop = 0; // For IE and Firefox
    }
</script>
</body>
</html>

