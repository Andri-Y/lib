@extends("layouts.admin")
@section('meta')
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
@section('scripts')
    <script src="{{URL::asset('https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js')}}"></script>
    <script src="{{URL::asset('bootstrap/js/bootstrap.min.js')}}"></script>
    <script src="{{URL::asset('js/admin/custom.js')}}"></script>
@endsection
