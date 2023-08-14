
@extends('welcome')


@section('content')

    <main class="h-full">
        {{--        TITLE--}}
        <h2 class="text-3xl font-bold m-auto p-10"><a href="/blogs/">AI news</a></h2>


        <div class="bg-white shadow rounded  m-10 p-12 w-[90%] min-h-56">
            <div class="inline-flex w-full">
                {{--            DATE--}}
                <div class="w-1/3">
                    {{substr($blog[0]["created_at"], 0, 10)}}
                </div>
                {{--        SYMBOLS--}}
                <div class="inline-flex w-1/3">
{{--                    @foreach($symbols as $symbol)--}}
{{--                        {!!$symbols[0]['svg']!!}--}}
{{--                    @endforeach--}}
                </div>
            </div>
{{--            COMPANY--}}
            <div class="inline-flex my-5">
                @if(!empty($blog[0]["company"]))
                    <div><strong>company</strong>: {{$blog[0]["company"]}}</div>
                @endif
                @if(!empty($blog[0]["for"]))
                    <div class="ml-4"><strong>for</strong>: {{$blog[0]["for"]}}</div>
                @endif
            </div>
            <br>
            {{-- NEWS TITLE--}}
            <h7 class="font-bold my-10 py-5 text-xl">{!!$blog[0]["title"]!!}</h7>
            {{--            TEXT--}}
            <p class="py-2">{!!$blog[0]["new"]!!}</p>
            @if(!is_null($blog[0]['image']))
                <img src="/storage/{{$blog[0]['image']}}" class="my-5">
            @endif
            <p class="py-4"><strong>Source</strong>:  {!!$blog[0]["source"]!!}</p>
        </div>


    </main>

@endsection
