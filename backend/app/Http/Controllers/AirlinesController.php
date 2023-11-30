<?php

namespace App\Http\Controllers;

use App\Models\Airlines;
use App\Mail\AirlineMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Http\Requests\StoreAirlinesRequest;
use App\Http\Requests\UpdateAirlinesRequest;

class AirlinesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $airlines = Airlines::all();
        // $airline = Airlines::with('image')->get();

        return response()->json($airlines);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request)
    {
        $airline=Airlines::create([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            
        ]);

        Mail::to($request->input('email'))->send(new AirlineMail($request->input('name')));

        return response()->json(['message'=>'Airline created!','airline'=>$airline]);

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreAirlinesRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $airline = Airlines::find($id);
        //dd($airline); // Add this line to debug
        if (!$airline){
            return response()->json(['error'=>'Airline not found'],404);
        }
        $img=Image::where('airline_id', $id)->get();

        if ($img->isEmpty()) {
            return response()->json(['airline' => $airline, 'image' => null]);
        }
        $firstImage = $img->first();

        return response()->json(['airline'=>$airline,'image'=>asset('images/' . $firstImage->path)]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function show2($id)
    {
        $airline = Airlines::find($id);
        //dd($airline); // Add this line to debug
        if (!$airline){
            return response()->json(['error'=>'Airline not found'],404);
        }

        return response()->json(['airline'=>$airline]);
    }
    public function edit(Airlines $airlines)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateAirlinesRequest $request, Airlines $airlines)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Airlines $airlines)
    {
        //
    }
}
