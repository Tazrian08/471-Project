<?php

namespace App\Http\Controllers;

use App\Models\Image;
use App\Models\Attraction;
use Illuminate\Http\Request;
use App\Http\Requests\StoreAttractionRequest;
use App\Http\Requests\UpdateAttractionRequest;

class AttractionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request)
    {
        $attraction=Attraction::create([
            'attraction' => $request->input('attraction'),
            'details' => $request->input('detail'),
            'cost' =>$request->input('cost'),
            'destination_id' =>$request->input('destination_id'),
    

        ]);
        $image = time() . '-' . $request->attraction . '.' . $request->file('image')->extension();

        $request->file('image')->move(public_path('images'), $image);
    
        $img = Image::create([
            'attraction_id' => $attraction->id,
            'path' => $image
        ]);

        return response()->json(['message'=>'Attraction registered ! ','attraction'=>$attraction,'image'=>asset('images/' . $img->path)]);

    }


    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreAttractionRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Attraction $attraction)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Attraction $attraction)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateAttractionRequest $request, Attraction $attraction)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Attraction $attraction)
    {
        //
    }
}
