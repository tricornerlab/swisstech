@extends('welcome')

@section('content')

    <div class="p-10 font-bold text-3xl"><a href="/events/">Events </a> > {{$event[0]['name']}}
    </div>
    <main class="bg-white min-h-screen m-10 rounded p-10">

        <div>
            <p class="font-bold">{{$event[0]['name']}}</p>
            <p>Location: {{$event[0]['country']}}</p>
            <p>About: {{$event[0]['description']}}</p>
            <p>When: {{$event[0]['date']}}</p>
            <p>{{$event[0]['url']}}</p>
        </div>


    </main>
@endsection
