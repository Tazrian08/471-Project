<?php

namespace App\Http\Controllers;

use App\Models\Image;
use App\Models\Destination;
use Illuminate\Http\Request;
use App\Http\Requests\StoreDestinationRequest;
use App\Http\Requests\UpdateDestinationRequest;

class DestinationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $destinations = Destination::all();

        return response()->json($destinations);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request)
    {
        $destination=Destination::create([
            'country' => $request->input('country'),
            'city' => $request->input('city'),
            'description' =>$request->input('description')
        ]);

        $image = time() . '-' . $request->country . '.' . $request->file('image')->extension();

        $request->file('image')->move(public_path('images'), $image);
    
        $img = Image::create([
            'destination_id' => $destination->id,
            'path' => $image
        ]);
        return response()->json(['message'=>'Destination created!','destination'=>$destination]);

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreDestinationRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Destination $destination)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Destination $destination)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateDestinationRequest $request, Destination $destination)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Destination $destination)
    {
        //
    }
}
