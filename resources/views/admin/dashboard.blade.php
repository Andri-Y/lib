@extends("layouts.admin")
@section('title')
    <title>панель керування</title>
@endsection
@section('meta')
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
@endsection
@section('styles')
    <!-- Bootstrap -->
    <link href="{{URL::asset('bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- styles -->
    <link href="{{URL::asset('css/admin/styles.css')}}" rel="stylesheet">
@endsection
@section('profile')
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Адміністратор</a>
        <ul class="dropdown-menu animated fadeInUp">
            <li><a href="#">Профіль</a></li>
            <li><a href="#">Вихід</a></li>
        </ul>
    </li>
@endsection
@section('content')
    <div class="col-md-9">
        <div class="content-box-large" style="box-shadow: 2px 2px;">
            <div class="panel-heading">
                <div class="panel-title">Статистика відвідувань</div>
                <div class="panel-options">
                    <a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
                    <a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
                </div>
            </div>
            <div class="panel-body">
                <div class="panel-body" >
                    <canvas id="visitors" height="115"></canvas>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12" >
            <div class="row">
                <div class="col-md-12" >
                    <div class="content-box-header" >
                        <div class="panel-title">Прийдешні події</div>

                        <div class="panel-options">
                            <a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
                            <a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
                        </div>
                    </div>
                    <div class="content-box-large box-with-header">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>Назва</th>
                                <th>дата та час проведення</th>
                                <th>Тривалість</th>
                                <th>Статус</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="success">
                                <td>Зустріч 1</td>
                                <td>15.01.2018 11:55</td>
                                <td>2год</td>
                                <td>Завершено</td>
                            </tr>
                            <tr class="danger">
                                <td>Зустріч 2</td>
                                <td>12.01.2018 12:30</td>
                                <td>1год</td>
                                <td>Скасовано</td>
                            </tr>
                            <tr class="warning">
                                <td>Зустріч 3</td>
                                <td>22.01.2018 17:00</td>
                                <td>1 год</td>
                                <td>Відбувається</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    </div>
                </div>
            </div>
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    <div class="content-box-header">
                        <div class="panel-title">Свіжі коментарі</div>

                        <div class="panel-options">
                            <a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
                            <a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
                        </div>
                    </div>
                    <div class="content-box-large box-with-header">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>Новина</th>
                                <th>текст</th>
                                <th>Схвалити</th>
                                <th>Відхилити</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <a href="#">Новина 1</a>
                                </td>
                                <td>
                                    Pellentesque id arcu et odio imperdiet laoreet. Nulla sed eros risus. Sed tellus odio, faucibus et odio eu, eleifend aliquet nisl.
                                </td>
                                <td>
                                    <button class="btn btn-success btn-sm">
                                        <span class="glyphicon glyphicon-ok-sign" aria-hidden="true"></span>
                                    </button>
                                    </td>
                                <td>
                                    <button class="btn btn-danger btn-sm">
                                        <span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td> <a href="#">Новина 1</a></td>
                                <td>
                                    Pellentesque id arcu et odio imperdiet laoreet. Nulla sed eros risus. Sed tellus odio, faucibus et odio eu, eleifend aliquet nisl.
                                </td>
                                <td>
                                    <button class="btn btn-success btn-sm">
                                        <span class="glyphicon glyphicon-ok-sign" aria-hidden="true"></span>
                                    </button>
                                </td>
                                <td>
                                    <button class="btn btn-danger btn-sm">
                                        <span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td> <a href="#">Новина 2</a></td>
                                <td>the Pellentesque id arcu et odio imperdiet laoreet. Nulla sed eros risus. Sed tellus odio, faucibus et odio eu, eleifend aliquet nisl.</td>
                                <td>
                                    <button class="btn btn-success btn-sm">
                                        <span class="glyphicon glyphicon-ok-sign" aria-hidden="true"></span>
                                    </button>
                                </td>
                                <td>
                                    <button class="btn btn-danger btn-sm">
                                        <span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>
                                    </button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('scripts')
    <script src="{{URL::asset('https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js')}}"></script>
    <script src="{{URL::asset('bootstrap/js/bootstrap.min.js')}}"></script>
    <script src="{{URL::asset('vendor/chartjs/Chart.min.js')}}"></script>
    <script src="{{URL::asset('js/admin/custom.js')}}"></script>
    <script src="{{URL::asset('js/admin/dashboard.js')}}"></script>
@endsection
