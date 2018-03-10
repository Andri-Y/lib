@extends('admin.layout')

@section('meta-title', 'Події')

@section('content')
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                Події
                <a href="{{ route('anniversaries.create') }}" class="btn btn-primary">
                    Створити подію
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
                        <th>Дата проведення</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($anniversaries as $ann)
                        <tr>
                            <td>
                                <a href="{{ route('anniversaries.edit', $ann->id) }}">
                                    {{ str_limit($ann->header, 40) }}
                                </a>
                            </td>
                            <td>
                                {{ $ann->created_at->format('d.m.Y \o\ H:i') }}
                            </td>
                            <td>
                                {{ $ann->anniversary }}
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@stop

@section('scripts')
   //todo order scripts
@stop
