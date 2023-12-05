<?php

namespace App\Http\Controllers;

use App\Models\Image;
use App\Models\Hotels;
use App\Mail\HotelMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Http\Requests\StoreHotelsRequest;
use App\Http\Requests\UpdateHotelsRequest;

class HotelsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function getRoomDetails($hotelId)
    {
        // Retrieve prices for different types of rooms for the specified hotel
        $hotel = Hotels::find($hotelId);

        if (!$hotel) {
            return response()->json(['error' => 'Hotel not found'], 404);
        }

        $roomPrices = [
            'classic' => $hotel->classic_price,
            'deluxe' => $hotel->deluxe_price,
            'presidential' => $hotel->presidential_price,
        ];

        return response()->json($roomPrices);
    }
     public function select($id)
     {
 
         $hotels=Hotels::where('destination_id', $id)->get();
         return response()->json($hotels);
     }



    public function index()
    {
        $hotels = Hotels::with('image', 'destination')->get();
        // $destinations = Destination::with('image')->get();
        return response()->json($hotels);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request)
    {
        $hotels = Hotels::create([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'prices' => $request->input('prices'),
            'phone_no' => $request->input('phone_no'),
            'destination_id' => $request->input('destination_id'),
        ]);

        $image = time() . '-' . $request->name . '.' . $request->file('image')->extension();

        $request->file('image')->move(public_path('images'), $image);
    
        $img = Image::create([
            'hotels_id' => $hotels->id,
            'path' => asset('images/' . $image)
        ]);

        Mail::to($request->input('email'))->send(new HotelMail($request->input('name')));

        return response()->json(['message'=>'Hotel created!','hotel_name'=>$hotels]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreHotelsRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $hotels = Hotels::find($id);
        if (!$hotels){
            return response()->json(['error'=>'Hotel not found'],404);
        }
        $img=Image::where('hotel_id', $hotels)->get();

        if ($img->isEmpty()) {
            return response()->json(['hotel' => $hotels, 'image' => null]);
        }
        $firstImage = $img->first();

        return response()->json(['hotel'=>$hotels,'image'=>asset('images/' . $firstImage->path)]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Hotels $hotels)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateHotelsRequest $request, Hotels $hotels)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Hotels $hotels)
    {
        //
    }
}
