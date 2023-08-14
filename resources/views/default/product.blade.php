
@extends('welcome')


@section('content')

    <main class="h-full">
        {{--        TITLE--}}
        <h2 class="text-3xl font-bold m-auto p-10"><a href="/products/">AI products</a></h2>


        <div class="bg-white shadow rounded  m-10 p-12 w-[90%] min-h-56">
            <div class="inline-flex w-full">
                {{--            DATE--}}
                <div class="w-1/3">
                    {{substr($product[0]["created_at"], 0, 10)}}
                </div>
                {{--        SYMBOLS--}}
                {{--            description--}}
                @if(!empty($product[0]["type_id"]))
                    <div class="w-1/3"><strong>Type</strong>: {{$product[0]["type_id"]}}</div>
                @endif
                <div class="inline-flex w-1/3">
{{--                    @foreach($symbols as $symbol)--}}
{{--                        {!!$symbols[0]['svg']!!}--}}
{{--                    @endforeach--}}
                </div>
            </div>
{{--            COMPANY--}}
            <div class="inline-flex my-5">
                @if(!empty($product[0]["company"]))
                    <div><strong>company</strong>: {{$product[0]["company"]}}</div>
                @endif
                @if(!empty($product[0]["for"]))
                    <div class="ml-4"><strong>for</strong>: {{$product[0]["for"]}}</div>
                @endif
            </div>
            <br>
            {{-- NEWS TITLE--}}
            <h7 class="font-bold my-10 py-5 text-xl">{!!$product[0]["name"]!!}</h7>

{{--            description--}}
            @if(!empty($product[0]["description"]))
                <div class="my-4"><strong>Description</strong>: {{$product[0]["description"]}}</div>
        @endif

            {{--            IMAGE--}}
            @if(!empty($product[0]["image"]))
                <img class="my-4" src="/storage/{{$product[0]["image"]}}">
            @endif

            {{--            SOURCE--}}
            @if(!empty($product[0]["source"]))
                <div class="my-4"><strong>Source</strong>: {{$product[0]["source"]}}</div>
        @endif


    </main>

@endsection
