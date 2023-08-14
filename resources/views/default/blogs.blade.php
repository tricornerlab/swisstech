
@extends('welcome')


@section('content')

    <main class="h-full">
        {{--        TITLE--}}
        <h2 class="text-3xl font-bold m-auto pt-5 ml-10"><a href="/blogs/">AI news</a></h2>

    @foreach($paginator as $item)
        <div class="bg-white shadow rounded  m-10 p-12 w-[90%] mb-20">
            <div class="inline-flex w-full mb-5">
                {{--            DATE--}}
                <div class="w-1/3">{{substr($item->created_at, 0, 10)}}</div>
                {{--        SYMBOLS--}}
                <div class="inline-flex w-1/3">
                    @foreach($symbols as $symbol)
                        {!!$symbol!!}
                    @endforeach
                </div>
            </div>
            {{--            COMPANY--}}
            <div class="inline-flex w-full mb-5">
                @if(!is_null($item->company))
                    <div><strong>Company</strong>: {{$item->company}}</div>
                @endif
                @if(!is_null($item->for))
                    <div class = "ml-2"><strong>For</strong>: {{$item->for}}</div>
                @endif
                @if(!is_null($item->country))
                        <div class = "ml-2"><strong>Country</strong>: {{$item->country}}</div>
                @endif

            </div>
            {{--            HEADER--}}
            <h7 class="font-bold mb-5"><a href="/blogs/{{$item->id}}">{!!$item->title!!}</a></h7>
            {{--            TEXT--}}
            <p class="py-2 mt-5 ">{!!  $item->new!!}</p>
        </div>
    @endforeach

    </main>

@endsection
