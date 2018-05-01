@extends('admin.articles')

@section('styles')
    <!-- Bootstrap -->
    <link href="{{URL::asset('bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- styles -->
    <link href="{{URL::asset('css/admin/styles.css')}}" rel="stylesheet">
    <link href="{{URL::asset('js/admin/DataTables/datatables.min.css')}}" rel="stylesheet">
@endsection

@section('content')
        <div class="col-md-9">
            <div class="row">
                {!! Form::open(['class'=>'horizontal','route'=>'article_categories.store']) !!}
                <div class="panel-heading col-md-12">
                    <div class="panel-title">Створити категорію новин</div>
                </div>
                <div class="panel-body col-md-12">
                    <div class="form-group row">
                        <label for="inputValue" class="col-sm-4 control-label">ідентифікатор</label>
                        <div class="col-sm-4">
                            {!! Form::text('value', null, ['class' => 'form-control',
                                                              'id' => 'inputValue',
                                                              'placeholder' => 'англійські букви a-z',
                                                              ]) !!}
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputName" class="col-sm-4 control-label">Назва категорії</label>
                        <div class="col-sm-4">
                            {!! Form::text('name', null, ['class' => 'form-control',
                                                                  'id' => 'inputName',
                                                                  'placeholder' => '...',
                                                                  ]) !!}
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-4">
                            {!! Form::submit('Зберегти', ['class' => 'btn btn-primary']) !!}
                        </div>
                    </div>
                </div>
                {!! Form::close() !!}
            </div>
            <div class="row">
                <div class="content-box-header">
                    <div class="panel-title">Існуючі категорії</div>
                </div>
                <div class="content-box-large box-with-header">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>id</th>
                            <th>назва</th>
                            <th>ідентифікатор</th>
                            <th>редагувати</th>
                            <th>видалити</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($article_categories as $category)
                        <tr>
                            <td>
                                <p>{{$category->id}}</p>
                            </td>
                            <td>
                                <p>{{$category->name}}</p>
                            </td>

                            <td>
                                {{$category->value}}
                            </td>
                            <td>
                                <a class="btn btn-warning btn-sm"
                                   href="{{  route('article_categories.edit', $category->id) }}">
                                    <i class="glyphicon glyphicon-pencil"></i>
                                </a>
                            </td>
                            <td>
                                {!! Form::open(['class'=>'horizontal',
                                                'method' => 'DELETE',
                                                'route'=>['article_categories.destroy',
                                                $category]]) !!}
                                    {{ Form::hidden('id', $category->id) }}
                                        {{ Form::submit('X', ['class' => 'btn btn-danger btn-sm']) }}
                                {{ Form::close() }}
                            </td>
                        </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row" style="margin-bottom: 20px; background-color: rgba(255,255,255,0.8)">
            <div class="col-md-10">
                <div class="btn-group" style="margin: 20px 120px;">
                    <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
                        Додати <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                        @foreach($article_categories as $category)
                        <li><a href="{{route('articles.createByCategory', $category->id)}}">{{$category->name}}</a></li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
        <div class="col-md-12">
            <table id="articles_table" class="table table-striped table-bordered display" style="width:100%">
                <thead>
                    <tr>
                        <th>Заголовок</th>
                        <th>Створено</th>
                        <th>Оновлено</th>
                        <th>Редагувати</th>
                        <th>Видалити</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($articles as $article)
                        <tr>
                            <td>
                                {{ $article->header }}
                            </td>
                            <td>
                                {{ $article->created_at->format('d.m.Y \o\ H:i') }}
                            </td>
                            <td>
                                {{ $article->updated_at->format('d.m.Y \o\ H:i') }}
                            </td>

                            <td>
                                <a class="btn btn-warning btn-sm" href="{{
                                route('articles.edit', $article) }}">
                                    <i class="glyphicon glyphicon-pencil"></i>
                                </a>
                            </td>
                            <td>
                                {!! Form::open(['class'=>'horizontal',
                                                'method' => 'DELETE',
                                                'route'=>['articles.destroy',
                                                $article]]) !!}
                                {{ Form::hidden('article', $article) }}
                                {{ Form::submit('X', ['class' => 'btn btn-danger btn-sm']) }}
                                {{ Form::close() }}
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@stop

@section('scripts')
    <script src="{{URL::asset('https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js')}}"></script>
    <script src="{{URL::asset('https://code.jquery.com/ui/1.10.3/jquery-ui.js')}}"></script>
    <script src="{{URL::asset('bootstrap/js/bootstrap.min.js')}}"></script>
    <script> const langPath = "{{ URL::asset('js/admin/DataTables/locale/dataTables.ukrainian.lang') }}";</script>
    <script src="{{URL::asset('js/admin/DataTables/datatables.js')}}"></script>
    <script src="{{URL::asset('js/admin/tables.js')}}"></script>
    <script src="{{URL::asset('js/admin/custom.js')}}"></script>
@stop
