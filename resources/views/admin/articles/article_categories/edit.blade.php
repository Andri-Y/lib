@extends('admin.articles')

@section('meta-title', 'Редагувати новину')

@section('content')
    <div class="col-md-9">
        <div class="row">
            {!! Form::open(['class'=>'horizontal',
                            'route'=>['article_categories.update', $category],
                            'method' => 'PUT'
                            ])!!}
            <div class="panel-heading col-md-12">
                <div class="panel-title">Оновити категорію новин</div>
            </div>
            <div class="panel-body col-md-12">
                <div class="form-group row">
                    <label for="inputValue" class="col-sm-4 control-label">ідентифікатор</label>
                    <div class="col-sm-4">
                        {!! Form::text('value', null, ['class' => 'form-control',
                                                          'id' => 'inputValue',
                                                          'placeholder' => $category->value,
                                                          ]) !!}
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputName" class="col-sm-4 control-label">Назва категорії</label>
                    <div class="col-sm-4">
                        {!! Form::text('name', null, ['class' => 'form-control',
                                                              'id' => 'inputName',
                                                              'placeholder' => $category->name,
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
    {!! Form::close() !!}
@stop

@section('scripts')

@stop
