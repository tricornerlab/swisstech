@extends('welcome')

@section('content')

    <div class="p-10 font-bold text-3xl"><a href="/events/">Events </a></div>
    <main class="bg-white min-h-screen m-10 rounded p-10">

        <h3 class="text-2xl">List of events:</h3>
        <div class="col-md-4 ">
        @foreach($paginator as $item)
            <div class="shadow w-[40%] h-30 bg-gray-50 p-4 my-2">
                <h5 class="font-bold">{{$item->name}}</h5>
                <p>Where: {{$item->country}}</p>
                <p>Date: {{$item->date}}</p>
                <p>Industry:{{$item->description}}</p>
                <p>{{$item->url}}</p>
                </div>
        @endforeach
        </div>


    </main>
@endsection
