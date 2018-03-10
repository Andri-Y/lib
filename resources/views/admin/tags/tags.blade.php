@extends('layouts.admin')
@section('tag')
    <table>
        <tr>
            <td>id</td>
            <td>Название</td>
            <td>Действие</td>
            <td>Действие</td>
        </tr>
        @foreach ($tags as $tag)
            <tr>
                <td>{{$tag->value}}</td>
                <td> <a href="{{action('Admin\TagsController@edit',['tag'=>$tag->id])}}">Изменить</a></td>
                <td>
                    <form method="POST" action="{{action('Admin\TagsController@destroy',['tag'=>$tag->id])}}">
                        <input type="hidden" name="_method" value="delete"/>
                        <input type="hidden" name="_token" value="{{csrf_token()}}"/>
                        <input type="submit" value="Удалить"/>
                    </form>
                </td>
            </tr>
            @endforeach
            </table>
@endsection