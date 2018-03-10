@extends('layouts.admin')
@section('tag')
    <form method="POST" action="{{action('Admin\TagsController@update',['tags'=>$tag->id])}}">
    Название категории<br>
        <label>
            <input type="text" name="value" value="{{$tag->value}}"/>
        </label>
        <br>
    <input type="hidden" name="_method" value="put"/>
    <input type="hidden" name="_token" value="{{csrf_token()}}"/>
    <input type="submit" value="Зберегти">
    @if(Session::has('message'))
        {{Session::get('message')}}
    @endif
    </form>
@endsection