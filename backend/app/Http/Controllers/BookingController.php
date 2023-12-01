<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Travel_Package;
use App\Models\Booking;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\StoreBookingRequest;
use App\Http\Requests\UpdateBookingRequest;

class BookingController extends Controller
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
    $items = $request->input('items');

    foreach ($items as $object) {
        $item = Cart::with('user','travel_package')->find($object['id']);
        

        if ($item) {
            $user_id = $item->user->id;
            $package_id = $item->travel_package->id;
            $payment_info = ($item->travel_package->price) + (($item->amount)*200);
            $status = 1;

            $booking = Booking::create([
                'user_id' => $user_id,
                'travel_package_id' => $package_id,
                'payment info' => $payment_info, 
                'status' => $status,
            ]);
            $package=Travel_Package::find($item->travel_package->id);
            $package->update(['user_id' => $item->user->id,'amount'=> ($package->amount-$item->amount)]);

            $item->delete();

        }
    }

    return response()->json(['message' => 'Success']);
}


    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreBookingRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Booking $booking)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Booking $booking)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateBookingRequest $request, Booking $booking)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Booking $booking)
    {
        //
    }
}
