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
    <!-- Вставка HTML5 поєднується з Respond.js для підтримки в IE8 елементів HTML5 та медіа-запитів -->
    <!-- ЗАСТЕРЕЖЕННЯ: файл Respond.js не працює, якщо ви проглядаєте сторінку відкривши її з файлової системи -->
    <!--[if lt IE 9]>
    <script src="{{URL::asset('https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js')}}"></script>
    <script src="{{URL::asset('https://oss.maxcdn.com/respond/1.4.2/respond.min.js')}}"></script>
    <![endif]-->
</head>
<body>
<!-- top of page -->
<button onclick="topFunction()" id="myBtn" title="повернутись до початку">до початку</button>
<div class="container-fluid fonts">
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
                                <a href="{{URL::asset('books/fresh')}}" role="menuitem">книжкові новинки</a>
                            </li>
                            <li role="presentation">
                                <a href="{{URL::asset('books/periodicals')}}" role="menuitem">періодичні видання</a>
                            </li>
                            <li role="presentation">
                                <a href="{{URL::asset('books/e_resources')}}" role="menuitem">електронні ресурси</a>
                            </li>
                            <li role="presentation">
                                <a href="{{URL::asset('books/rare')}}" role="menuitem">рідкісні та цінні книги</a>
                            </li>
                            <li role="presentation">
                                <a href="{{URL::asset('books/local_lore_documents')}}" role="menuitem">фонд краєзнавчих документів</a>
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
            <div id="anniversary-carousel" class="carousel slide" data-ride="carousel">
                <!-- slide wrapper -->
                <div class="carousel-inner" role="listbox">
                    @yield('anniversaries')
                </div>

                <!-- controls -->
                <a class="left carousel-control" href="#anniversary-carousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Попередній</span>
                </a>
                <a class="right carousel-control" href="#anniversary-carousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Наступний</span>
                </a>
            </div>
            <!-- news block -->
            <div class="row news-block">
                @yield('news')
            </div>
            <nav>
                {{ $news->render()}}
            </nav>
        </div>
        <!-- right column -->
        <div class="col-md-3 right-column">
            <img class="img-responsive" src="img/constitution.jpg">
            <div class="list-group">
                <a href="{{URL::asset('v_expos')}}" class="list-group-item">віртуальні виставки</a>
                <a href="{{URL::asset('books/fresh')}}" class="list-group-item">нові надходження</a>
                <a href="{{URL::asset('books/bibliographic_editions')}}" class="list-group-item">інформаційно-бібліографічні видання</a>
                <a href="{{URL::asset('c_a_calendar')}}" class="list-group-item">календар пам'ятних та ювілейних дат</a>
                <a href="{{URL::asset('gallery')}}" class="list-group-item">галерея</a>
                <a href="{{route('message.index')}}" class="list-group-item">віртуальна довідка</a>
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
    <!-- pagination for news -->
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
<script src="{{URL::asset('js/bootstrap.min.js')}}"></script>
<!-- custom scripts -->
<script src="{{URL::asset('js/library.js')}}"></script>
</body>
</html>

