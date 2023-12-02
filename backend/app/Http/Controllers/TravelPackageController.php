<?php

namespace App\Http\Controllers;

use App\Models\Image;
use Illuminate\Http\Request;
use App\Models\Travel_Package;
use App\Models\Destination;
use App\Models\Flight;
use App\Models\Hotels;
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
            'hotel_id' =>$request->input('hotel_id'),
            'destination_id' =>$request->input('destination_id'),
            'departure_flight_id' =>$request->input('departure'),
            'return_flight_id' =>$request->input('return')

        ]);
        $image =time() . '-' . $request->name . '.' . $request->file('image')->extension();

        $request->file('image')->move(public_path('images'), $image);
    
        $img = Image::create([
            'travel_package_id' => $package->id,
            'path' =>asset('images/' . $image)
        ]);

        // return response()->json(['message'=>'Package created! ','package'=>$package,'image'=>asset('images/' . $img->path)]);
        return response()->json(['message'=>'Package created! ','package'=>$package,'image'=>$img->path]);

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
        // $travelPackage = Travel_Package::find($id);
        $travelPackage=Travel_Package::with('destination', 'airline', 'departure_flight','return_flight','hotel')->find($id);
        if (!$travelPackage){
            return response()->json(['error'=>'Travel package not found'],404);
        }
        $img=Image::where('travel_package_id', $id)->get();

        if ($img->isEmpty()) {
            return response()->json(['package' => $travelPackage, 'image' => null]);
        }
    

        return response()->json(['package'=>$travelPackage,'image'=>$img]);
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
    public function custom() {
        $destinations = Destination::all();
        $hotels = Hotels::all();
        $flights = Flight::all();
    
        $data = [
            'destinations' => $destinations,
            'hotels' => $hotels,
            'flights' => $flights,
        ];
    
        return response()->json($data);
    }

    public function addToCart(Request $request) {
        // Validate request and add to the cart
        // Your logic here
        return response()->json(['message' => 'Item added to cart']);
    }
    public function customcreate(Request $request)
    {
        $package=Travel_Package::create([
            'name' => $request->input('name'),
            'description' => $request->input('description'),
            'classic_price' =>$request->input('price'),
            'airline_id' =>$request->input('airline_id'),
            'hotel_id' =>$request->input('hotel_id'),
            'destination_id' =>$request->input('destination_id'),
            'departure_flight_id' =>$request->input('departure'),
            'return_flight_id' =>$request->input('return')

        ]);
        return response()->json(['message'=>'Package created! ','package'=>$package]);
}
}