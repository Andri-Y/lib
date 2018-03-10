@extends('admin.layout')

@section('meta-title', 'Новини')

@section('content')
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                Новини
                <a href="{{ route('news.create') }}" class="btn btn-primary">
                    Створити новину
                </a>
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <table class="table table-striped table-bordered table-hover" id="TablePost">
                <thead>
                    <tr>
                        <th>Заголовок</th>
                        <th>Створено</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($news as $news_item)
                        <tr>
                            <td>
                                <a href="{{ route('news.edit', $news_item->slug) }}">
                                    {{ str_limit($news_item->header, 40) }}
                                </a>
                            </td>
                            <td>
                                {{ $news_item->created_at->format('d.m.Y \o\ H:i') }}
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@stop

@section('scripts')
    {{--todo order scripts--}}
@stop
