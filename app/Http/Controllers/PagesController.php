<?php

namespace App\Http\Controllers;

use App\Models\blog;
use App\Models\Event;
use App\Models\Message;
use App\Models\Page;
use App\Models\Product;
use App\Models\Type;
use Doctrine\DBAL\Query\QueryException;
use Illuminate\Http\Request;

class PagesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $menuitems = Page::orderBy('orderby', 'asc')->get(['id', 'title', 'link'])->toArray();
        $news = blog::orderBy('created_at', 'asc')->take(3)->get();
        $events = Event::orderBy('created_at', 'asc')->take(4)->get();
        $images = blog::orderBy('created_at', 'asc')->take(8)->get();
        return view('default.default')->with([
            'menuitems' => $menuitems,
            'news'=> $news,
            'events' => $events,
            'images' => $images,
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
        $page = Page::where('id', '1')->pluck('name')->implode('');
        echo $page;
//        return view("default.$page")->with([
//            'menuitems'=> $menuitems,
//
//        ]);
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

    public function ml(){
        $menuitems = Page::orderBy('orderby', 'asc')->get(['id', 'title', 'link'])->toArray();
        return view('default.ML')->with([
            'menuitems' => $menuitems,
        ]);
    }

    public function hwr()
    {
        $menuitems = Page::orderBy('orderby', 'asc')->get(['id', 'title', 'link'])->toArray();
        return view('default.hwr')->with([
            'menuitems' => $menuitems,
        ]);
    }
    public function contact(){
            $message="";
            $menuitems = Page::orderBy('orderby', 'asc')->get(['id', 'title', 'link'])->toArray();
            return view('default.contact')->with([
                'menuitems' => $menuitems,
                'message'=>$message,
            ]);
    }
    public function types(){
        $types = Type::all()->pluck('type', 'id')->toArray();
        //dd($types);
        $menuitems = Page::orderBy('orderby', 'asc')->get(['id', 'title', 'link'])->toArray();
        $paginator1 = Product::where('type_id', 1)->paginate(6);
        $paginator2 = Product::where('type_id', 2)->paginate(6);
        $paginator3 = Product::where('type_id', 3)->paginate(6);
        $paginator4 = Product::where('type_id', 4)->paginate(6);
        $paginator5 = Product::where('type_id', 5)->paginate(6);
        $paginator6 = Product::where('type_id', 6)->paginate(6);
        $paginator7 = Product::where('type_id', 7)->paginate(6);
        $paginator8 = Product::where('type_id', 8)->paginate(6);
        $paginator9 = Product::where('type_id', 9)->paginate(6);
        $paginator10 = Product::where('type_id', 10)->paginate(6);
        $paginator11 = Product::where('type_id', 11)->paginate(6);
        //dd($products);
        return view('default.types')->with([
            'menuitems' => $menuitems,
            'types' => $types,
            'paginator1' => $paginator1,
            'paginator2' => $paginator2,
            'paginator3' => $paginator3,
            'paginator4' => $paginator4,
            'paginator5' => $paginator5,
            'paginator6' => $paginator6,
            'paginator7' => $paginator7,
            'paginator8' => $paginator8,
            'paginator9' => $paginator9,
            'paginator10' => $paginator10,
            'paginator11' => $paginator11,
        ]);
    }


    public function contactus(Request $request, )
    {
        $menuitems = Page::orderBy('orderby', 'asc')->get(['id', 'title', 'link'])->toArray();
        $email = new Message();
        $message = 'we have received your message, thank you!';
        try{
            $email->name = $request->name;
            $email->surname =  $request->surname;
            $email->email = $request->email;
            $email->message = $request->message;
            $email->save();
        } catch (QueryException $e) {
            dd($e->getMessage());
        }
        return view('default.contact')->with([
            'menuitems' => $menuitems,
            'message' => $message,
        ]);
    }
}
