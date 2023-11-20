<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Travel_Package;
use App\Http\Requests\StoreTravel_PackageRequest;
use App\Http\Requests\UpdateTravel_PackageRequest;

class TravelPackageController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $travelPackage = Travel_Package::all();

        return response()->json($travelPackage);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request)
    {
        $package=Travel_Package::create([
            'name' => $request->input('name'),
            'description' => $request->input('description'),
            'price' =>$request->input('price'),
            'airline_id' =>$request->input('airline_id'),
            'destination_id' =>$request->input('destination_id'),
            'departure_flight_id' =>$request->input('departure'),
            'return_flight_id' =>$request->input('return')

        ]);
        return response()->json(['message'=>'Package created! ','package'=>$package]);

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreTravel_PackageRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $travelPackage = Travel_Package::find($id);
        if (!$travelPackage){
            return response()->json(['error'=>'Travel package not found'],404);
        }
        return response()->json($travelPackage);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Travel_Package $travel_Package)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateTravel_PackageRequest $request, Travel_Package $travel_Package)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Travel_Package $travel_Package)
    {
        //
    }
}
