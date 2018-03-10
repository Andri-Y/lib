@extends('layouts.admin')
@section('tag')
    <form method="POST" action="{{URL::action('Admin\TagsController@store')}}">
    Створити теґ<br>
        <label>
            <input type="text" name="value"/>
        </label><br>
    <input type="hidden" name="_token" value="{{csrf_token()}}"/>
    <input type="submit" value="Зберегти">
    @if(Session::has('message'))
    {{Session::get('message')}}
    @endif
    </form>
@endsection