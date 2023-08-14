@extends('welcome')

@section('content')

    <div class="p-10 font-bold text-3xl">Classification of companies in the AI market </div>
    <main class="bg-white min-h-screen py-10">


    <table class="rounded shadow w-full m-4">
{{-- 1--}}
        <tr class="w-20 h-16 border ">
           <th class="w-16 h-16 border bg-[#e2ebcc] p-2">{{$types[1]}}</th>
            @foreach($paginator1 as $product)
                <td class="border px-2"><a href="/products/{{$product['id']}}">{{$product['name']}}</a></td>
            @endforeach
        </tr>
{{-- 1--}}
        <tr class="w-20 h-16 border ">
            <th class="w-16 h-16 border bg-[#e2ebcc] p-2">{{$types[2]}}</th>
            @foreach($paginator2 as $product)
                <td class="border px-2"><a href="/products/{{$product['id']}}">{{$product['name']}}</a></td>
            @endforeach
        </tr>
{{--3--}}
        <tr class="w-20 h-16 border ">
            <th class="w-16 h-16 border bg-[#e2ebcc] p-2">{{$types[3]}}</th>
            @foreach($paginator3 as $product)
                <td class="border px-2"><a href="/products/{{$product['id']}}">{{$product['name']}}</a></td>
            @endforeach
        </tr>
        {{-- 4--}}
        <tr class="w-20 h-16 border ">
            <th class="w-16 h-16 border bg-[#e2ebcc] p-2">{{$types[4]}}</th>
            @foreach($paginator4 as $product)
                <td class="border px-2"><a href="/products/{{$product['id']}}">{{$product['name']}}</a></td>
            @endforeach
        </tr>
        {{-- 5--}}
        <tr class="w-20 h-16 border ">
            <th class="w-16 h-16 border bg-[#e2ebcc] p-2">{{$types[5]}}</th>
            @foreach($paginator5 as $product)
                <td class="border px-2"><a href="/products/{{$product['id']}}">{{$product['name']}}</a></td>
            @endforeach
        </tr>
        {{-- 6--}}
        <tr class="w-20 h-16 border ">
            <th class="w-16 h-16 border bg-[#e2ebcc] p-2">{{$types[6]}}</th>
            @foreach($paginator6 as $product)
                <td class="border px-2"><a href="/products/{{$product['id']}}">{{$product['name']}}</a></td>
            @endforeach
        </tr>
        {{-- 7--}}
        <tr class="w-20 h-16 border ">
            <th class="w-16 h-16 border bg-[#e2ebcc] p-2">{{$types[7]}}</th>
            @foreach($paginator7 as $product)
                <td class="border px-2"><a href="/products/{{$product['id']}}">{{$product['name']}}</a></td>
            @endforeach
        </tr>
        {{-- 8--}}
        <tr class="w-20 h-16 border ">
            <th class="w-16 h-16 border bg-[#e2ebcc] p-2">{{$types[8]}}</th>
            @foreach($paginator8 as $product)
                <td class="border px-2"><a href="/products/{{$product['id']}}">{{$product['name']}}</a></td>
            @endforeach
        </tr>
        {{-- 9--}}
        <tr class="w-20 h-16 border ">
            <th class="w-16 h-16 border bg-[#e2ebcc] p-2">{{$types[9]}}</th>
            @foreach($paginator9 as $product)
                <td class="border px-2"><a href="/products/{{$product['id']}}">{{$product['name']}}</a></td>
            @endforeach
        </tr>
        {{-- 10--}}
        <tr class="w-20 h-16 border ">
            <th class="w-16 h-16 border bg-[#e2ebcc] p-2">{{$types[10]}}</th>
            @foreach($paginator10 as $product)
                <td class="border px-2"><a href="/products/{{$product['id']}}">{{$product['name']}}</a></td>
            @endforeach
        </tr>
        {{-- 11--}}
        <tr class="w-20 h-16 border ">
            <th class="w-16 h-16 border bg-[#e2ebcc] p-2">{{$types[11]}}</th>
            @foreach($paginator11 as $product)
                <td class="border px-2"><a href="/products/{{$product['id']}}">{{$product['name']}}</a></td>
            @endforeach
        </tr>

    </table>
    </main>
@endsection
