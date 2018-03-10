@extends('admin.layout')

@section('meta-title', 'Віртуальні виставки')

@section('content')
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                Віртуальні виставки
                <a href="{{ route('expos.create') }}" class="btn btn-primary">
                    Створити виставку
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
                    @foreach ($expos as $expo)
                        <tr>
                            <td>
                                <a href="{{ route('expos.edit', $expo->slug) }}">
                                    {{ str_limit($expo->header, 40) }}
                                </a>
                            </td>
                            <td>
                                {{ $expo->created_at->format('d.m.Y \o\ H:i') }}
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@stop

@section('scripts')
{{--
    todo order scripts
--}}
@stop
