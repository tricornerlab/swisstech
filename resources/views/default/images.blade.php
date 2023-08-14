@extends('welcome')

@section('content')

    <div class="p-10 font-bold text-3xl"><a href="/images/">Future awaits you here!</a></div>
    <main class="bg-white min-h-screen m-10 rounded p-10">

        List:
        @foreach($paginator as $item)
            <div class="shadow">
                <h5>{{$item->name}}</h5>
                link: {{$item->link}}
                Related to:{{$item->blog}}
                Date:{{$item->created_at}}

            </div>
        @endforeach





    </main>
@endsection
