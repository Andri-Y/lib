@extends("layouts.admin")
@section('title')
    <title>Події</title>
@endsection
@section('meta')
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
@endsection
@section('styles')
    <!-- Bootstrap -->
    <link href="{{URL::asset('bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- styles -->
    <link href="{{URL::asset('css/admin/styles.css')}}" rel="stylesheet">
    <link href="{{URL::asset('https://code.jquery.com/ui/1.10.3/themes/redmond/jquery-ui.css')}}" rel="stylesheet" media="screen">
    <link href="{{URL::asset('https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/2.2.7/fullcalendar.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('https://fonts.googleapis.com/css?family=Raleway:100,600')}}" rel="stylesheet">
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
            <div class="col-md-8">
                    <div class="panel-body">
                        {!! $calendar->calendar() !!}
                    </div>
            </div>
@endsection
@section('scripts')
    <script src="{{URL::asset('https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js')}}"></script>
    <script src="{{URL::asset('bootstrap/js/bootstrap.min.js')}}"></script>
    <script src="{{URL::asset('https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js')}}"></script>
    <script src="{{URL::asset('https://code.jquery.com/ui/1.10.3/jquery-ui.js')}}"></script>
    <script src="{{URL::asset('https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment.min.js')}}"></script>
    {!! $calendar->script() !!}
    <script src="{{URL::asset('https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/2.2.7/fullcalendar.min.js')}}"></script>
    <script src="{{URL::asset('https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/2.2.7/lang/uk.js')}}"></script>
@endsection