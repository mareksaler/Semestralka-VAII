<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tatry;
use Cviebrock\EloquentSluggable\Services\SlugService;
use Illuminate\Validation\Rule;

class TatryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth', [
            'except' => ['index', 'show', 'nizkeTatry', 'zapadneTatry', 'vysokeTatry']
        ]);
    }

    /**
     * Display a listing of the resource.
     * @param  string  $name
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('tatry.vysokeTatry')->with('tatry', Tatry::orderBy('id', 'DESC')->get());
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function vysokeTatry()
    {
        return view('tatry.vysokeTatry')->with('tatry', Tatry::orderBy('id', 'DESC')->get());
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function nizkeTatry()
    {
        return view('tatry.nizkeTatry')->with('tatry', Tatry::orderBy('id', 'DESC')->get());
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function zapadneTatry()
    {
        return view('tatry.zapadneTatry')->with('tatry', Tatry::orderBy('id', 'DESC')->get());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @param  string  $area
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('tatry.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'image' => 'required|file|mimes:jpg,png,jpeg|max:5048', 
            'dlzka' => 'numeric|min:0|max:100',
            'cas' => 'numeric|min:0|max:100',
            'area' => Rule::in(['V', 'Z', 'N'])
        ]);

        $newImageName = uniqid() . '-' . '.' . $request->image->extension();
        
        $request->image->move(public_path('img/tatry'), $newImageName);
        
        Tatry::create([
            'title' => $request->input('title'),
            'description' => $request->input('description'),
            'slug' => SlugService::createSlug(Tatry::class, 'slug', $request->title),
            'image' => $newImageName,
            'user_id' => auth()->user()->id,
            'dlzka' => $request->input('dlzka'),
            'cas' => $request->input('cas'),
            'area' => $request->input('area')
        ]);
        // dd($request);
        return redirect('/' . explode('/', $request->getPathInfo())[1])->with('message', 'Uspesne pridane.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        return view('tatry.show')->with('tatry', Tatry::where('slug', $slug)->first());
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('tatry.edit')->with('tatry', Tatry::where('id', $id)->first());
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
        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'image' => 'mimes:jpg,png,jpeg|max:5048',
            'dlzka' => 'numeric|min:0|max:100',
            'cas' => 'numeric|min:0|max:100',
            'area' => Rule::in(['V', 'Z', 'N']) 
        ]);

        Tatry::where('id', $id)->update([
            'title' => $request->input('title'),
            'description' => $request->input('description'),
            'slug' => SlugService::createSlug(Tatry::class, 'slug', $request->title),
            'user_id' => auth()->user()->id,
            'dlzka' => $request->input('dlzka'),
            'cas' => $request->input('cas'),
            'area' => $request->input('area')
        ]);
        // dd($request);
        return redirect('/' . explode('/', $request->getPathInfo())[1])->with('message', 'Uspesne upravene.');
        // return redirect('/vysokeTatry')->with('message', 'Uspesne upravene');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tatry = Tatry::where('id', $id);
        $tatry->delete();

        return redirect()->back()->with('message', 'Uspesne odstraneny.');
    }
}
