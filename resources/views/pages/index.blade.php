@extends('layouts.index')
{{----}}
@section('news')
    @if (count($news) > 0)

            <div class="row">
            @foreach($news as $news_item)
                    @php
                            $photos = $news_item->photos();
                            foreach ($photos as $photo){
                                $news_item->main_image = $news_item ->main_image ? $news_item->main_image : $photo->path;
                            }
                    @endphp
                <div class="col-sm-6 col-md-4 news-item">
                    <div class="thumbnail">
                        <div class="caption">
                            <a href="{{$news_item->slug}}">{{$news_item->header}}</a>
                            <hr>
                            <img class="img-responsive" src="{{Storage::url($news_item->main_image)}}"/>
                            <h6>{{$news_item->updated_at->format('d.m.y')}}</h6>
                            <p>
                               {{$news_item->preview}}
                            </p>
                        </div>
                    </div>
                </div>
            @endforeach
            </div>

    @endif
@endsection
{{----}}
@section('anniversaries')
        @foreach($anniversaries as $anniversary)
            <div class="item {{ $anniversary == $anniversaries->first() ? 'active' : '' }}">
                <div class="row">
                    <div class="col-md-6">
                        <img class="img-responsive anniversary" src="{{Storage::url($anniversary->main_image)}}"/>

                    </div>
                    <div class="col-md-6">
                            <h6 style="color:black; font-size: 20px">{{str_replace('-', '.',$anniversary->anniversary)}}</h6>
                            <br>
                            <p style="color:black; font-size: 22px">{{$anniversary->preview}}</p>
                    </div>
                </div>
            </div>
        @endforeach   


@endsection
{{----}}
@section('fresh_books')
    @if(count($books) > 0)
        @foreach($books->chunk('3') as $chunk)
            <div class="item {{ $chunk == $chunk->first() ? 'active' : '' }}">
                <ul class="list-unstyled">
                    <li class="col-md-12">
                        @foreach($chunk as $book)
                            <div class="thumbnail">
                            <div class="caption">
                                <h6>{{$book->author}}</h6>
                            </div>
                            <a href="#"><img src="http://via.placeholder.com/200x300" alt=""/></a>
                            <div class="caption">
                                <h6>"{{$book->name}}"</h6>
                            </div>
                        </div>
                        @endforeach
                    </li>
                </ul>
            </div>
        @endforeach
    @endif
@endsection