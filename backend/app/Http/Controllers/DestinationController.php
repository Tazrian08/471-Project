<?php

namespace App\Http\Controllers;

use App\Models\Image;
use App\Models\Destination;
use Illuminate\Http\Request;
use App\Models\Travel_Package;
use Illuminate\Support\Facades\Storage;
use App\Http\Requests\StoreDestinationRequest;
use App\Http\Requests\UpdateDestinationRequest;

class DestinationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $destinations = Destination::with('image')->get();

        return response()->json($destinations);
    }


    public function search($search)
    {
        if (!empty($search)) {
            $destinations = Destination::where('country', 'LIKE', '%' . $search . '%')
            ->orWhere('city', 'LIKE', '%' . $search . '%')
            ->with('image')
            ->get();

        }else{

        $destinations = Destination::with('image')->get();
        }
                          
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
            'path' => asset('images/' . $image)
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
    public function show2($id)
{
    $destination = Destination::find($id);
    if (!$destination){
        return response()->json(['error' => 'Destination not found'], 404);

    }}

    public function show($destinationID)
    {
        $destination= Destination::with('image',"travel_package.airline",'travel_package.departure_flight','travel_package.return_flight','attraction.image','hotel.image')->find($destinationID);

        return response()->json($destination);
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
    public function destroy($id)
{
    $destination = Destination::find($id);

    if ($destination) {
        $packages = Travel_Package::where("destination_id", $id)->get();

        foreach ($packages as $package) {
            // Assuming you have a relationship between TravelPackage and Image models
            $image = Image::where("travel__package_id", $package->id)->first();

            if ($image) {
                Storage::delete($image->path);
                $image->delete(); // Assuming you want to delete the image record as well
            }
        }

        $desimg = Image::where("destination_id", $destination->id)->first();

        if ($desimg) {
            Storage::delete($desimg->path);
            $desimg->delete(); // Assuming you want to delete the image record as well
        }

        $destination->delete();
    }

    // Add any additional logic or response as needed...
}
}
