<?php

namespace App\Http\Controllers;

use App\Models\Symbol;
use Illuminate\Http\Request;
use App\Models\Blog;
use App\Models\Page;

class BlogsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $menuitems = Page::orderBy('orderby', 'asc')->get(['id', 'title', 'link',])->toArray();
        $paginator = Blog::paginate(5);
        $symbols = Symbol::all()->pluck('svg','id');
        return view('default.blogs')->with([
            'menuitems' => $menuitems,
            'paginator' => $paginator,
            'symbols' => $symbols,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $menuitems = Page::orderBy('orderby', 'asc')->get(['id', 'title', 'link'])->toArray();
        $symbols = Symbol::all()->pluck('name', 'svg')->toArray();
        $blog = Blog::where('id', $id)->get()->toArray();
//dd($symbols);

        return view('default.blog')->with([
            'menuitems' => $menuitems,
            'blog' => $blog,
            'symbols' => $symbols,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
