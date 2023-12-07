<?php

namespace App\Http\Controllers;

use App\Models\Flight;
use Illuminate\Http\Request;
use App\Http\Requests\StoreFlightRequest;
use App\Http\Requests\UpdateFlightRequest;

class FlightController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function airflight(Request $request)
     {
        $flights=Flight::where("airlines_id",$request->input('airline'))
        ->with("destination","airlines")
        ->get();
        return response()->json($flights);



     }

    public function desairflight(Request $request)
    {
        $flights = Flight::where('destination_id', $request->input('destination'))
        ->where('airlines_id', $request->input('airline'))
       ->with("destination","airlines")
       ->get();
       return response()->json($flights);



    }
     public function desflight(Request $request)
     {
        $flights=Flight::where("destination_id",$request->input('destination'))
        ->with("destination","airlines")
        ->get();
        return response()->json($flights);



     }
    public function select($id)
    {

        $airlineId = $id;
        $flights=Flight::with('destination',"airlines")->where('airlines_id', $airlineId)->get();
        return response()->json($flights);
    }


    public function index()
    {
        // $flight = Flight::all();
        $flights=Flight::with('destination.image',"airlines")->get();

        return response()->json($flights);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreFlightRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Flight $flight)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Flight $flight)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateFlightRequest $request, Flight $flight)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Flight $flight)
    {
        //
    }
}
