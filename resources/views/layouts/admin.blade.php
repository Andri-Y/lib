<!DOCTYPE html>
<html>
<head>
    @yield('title')
    @yield('meta')
    @yield('styles')
</head>
<body>
<div class="header">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <!-- Logo -->
                <div class="logo">
                    <h1><a href="#">панель керування</a></h1>
                </div>
            </div>
            <div class="col-md-4">

            </div>
            <div class="col-md-2" style="float: right;">
                <div class="navbar navbar-inverse" role="banner">
                    <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
                        <ul class="nav navbar-nav">
                            @yield('profile')
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="page-content">
    <div class="row">
        <div class="col-md-3">
            <div class="sidebar content-box" id="main-menu" style="display: block;box-shadow: 2px 2px;">
                <ul class="nav">
                    <!-- Main menu -->
                    <li class="{{ Request::is('admin/dashboard*') ? 'current' : '' }}">
                        <a href="{{URL::asset('admin/dashboard')}}">
                            <i class="glyphicon glyphicon-home"></i>
                            Панель керування
                        </a>
                    </li>
                    <li class="{{ Request::is('admin/articles*') ? 'current' : '' }}" >
                        <a href="{{URL::asset('admin/articles')}}">
                            <i class="glyphicon glyphicon-file"></i>
                            Новини
                        </a>
                    </li>
                    <li class="{{ Request::is('admin/events*') ? 'current' : '' }}">
                        <a href="{{URL::asset('admin/events')}}">
                            <i class="glyphicon glyphicon-calendar"></i>
                            Події
                        </a>
                    </li>
                    <li class="{{ Request::is('admin/analytics*') ? 'current' : '' }}">
                        <a href="{{URL::asset('admin/analytics')}}">
                            <i class="glyphicon glyphicon-stats"></i>
                            Аналітика
                        </a>
                    </li>
                    <li class="{{ Request::is('admin/users*') ? 'current' : '' }}">
                        <a href="{{URL::asset('admin/users')}}">
                            <i class="glyphicon glyphicon-user"></i>
                            Користувачі
                        </a>
                    </li>
                    <li class="{{ Request::is('admin/settings*') ? 'current' : '' }}">
                        <a href="{{URL::asset('admin/settings')}}">
                            <i class="glyphicon glyphicon-cog"></i>
                            Налаштування
                        </a>
                    </li>
                    <li class="{{ Request::is('admin/library*') ? 'current' : '' }}">
                        <a href="{{URL::asset('admin/library')}}">
                            <i class="glyphicon glyphicon-book"></i>
                            Бібліотека
                        </a>
                    </li>
                    <li class="{{ Request::is('admin/storage*') ? 'current' : '' }}">
                        <a href="{{URL::asset('admin/storage')}}">
                            <i class="glyphicon glyphicon-hdd"></i>
                            Файли
                        </a>
                    </li>
                    <li class="{{ Request::is('admin/feedback*') ? 'current' : '' }}">
                        <a href="{{URL::asset('admin/feedback')}}">
                            <i class="glyphicon glyphicon-envelope"></i>
                            Зворотній зв'язок
                        </a>
                    </li>
                </ul>
            </div>

            @yield('left_sidebar')
        </div>
            @yield('content')
    </div>
</div>
<footer style="">
    <div class="container">
        <div class="copy text-center">
            Copyright 2018 <a href='#'></a>
        </div>

    </div>
</footer>
@yield('scripts')
</body>
</html>