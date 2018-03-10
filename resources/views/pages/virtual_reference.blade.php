@extends('layouts.single_page')
@section('content')
    <!-- Page Heading/Breadcrumbs -->
    <div class="row">
        <div class="col-lg-12 ic">
            <h1 class="page-header" style="">
                Віртуальна довідка
            </h1>
            <ol class="breadcrumb">
                <li><a href="/">на головну</a>
                </li>
                <li class="active">Віртуальна довідка</li>
            </ol>
        </div>
    </div>
    <!-- /.row -->
    <!-- Internet-CENTER TABS -->
    <div class="row">
        {!! Form::open(['route' => 'message.store']) !!}
        <div class="col-md-8">
            <h3>Напишіть нам:</h3>
            <form name="sentMessage" id="contactForm" novalidate>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Ваше ім'я:</label>
                        {!! Form::text('name', null, ['class' => 'form-control']) !!}
                        <p class="help-block"></p>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Ваша електронна пошта (e-mail):</label>
                        {!! Form::text('e-mail', null, ['class' => 'form-control']) !!}
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        {!! Form::textarea('message') !!}
                    </div>
                </div>
                <div id="success"></div>
                <!-- For success/fail messages -->
                {!! Form::submit('Надіслати', ['class' => 'btn btn-primary']) !!}
            </form>
        </div>
    </div>
    @endsection