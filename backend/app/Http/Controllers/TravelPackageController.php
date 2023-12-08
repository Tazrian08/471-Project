<?php

namespace App\Http\Controllers;

use App\Models\Image;
use App\Models\Flight;
use App\Models\Hotels;
use App\Models\Review;
use App\Models\Destination;
use Illuminate\Http\Request;
use App\Models\Travel_Package;
use Illuminate\Support\Facades\Storage;
use App\Http\Requests\StoreTravel_PackageRequest;
use App\Http\Requests\UpdateTravel_PackageRequest;

class TravelPackageController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function search($search)
    {
        if (!empty($search)) {
            if (is_numeric($search)) {
                $searchPrice = (int)$search;
                $travel_package = Travel_Package::where('price', '<=', $searchPrice)
                ->with('image')
                ->get();
            } else {
            $travel_package = Travel_Package::where('name', 'LIKE', '%' . $search . '%')
            ->with('image')
            ->get();
            }

        }else{

        $travel_package = Travel_Package::with('image')->get();
        }
                          
        return response()->json($travel_package);
    }


    public function index()
    {
        $travelPackage = Travel_Package::with("image", "destination")
        ->where('custom_status', 0)
        ->get();

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
            'travel__package_id' => $package->id,
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
        $travelPackage=Travel_Package::with('destination', 'airline', 'departure_flight','return_flight','hotel','review')->find($id);
        if (!$travelPackage){
            return response()->json(['error'=>'Travel package not found'],404);
        }
        $img=Image::where('travel__package_id', $id)->get();

        if ($img->isEmpty()) {
            return response()->json(['package' => $travelPackage, 'image' => null]);
        }
    

        return response()->json(['package'=>$travelPackage,'image'=>$img]);
    }

    public function ratePackage(Request $request)
    {
        $packageId = $request->input('package_id');
        $rating = $request->input('rating');
    
        // Uncomment this line if you have authentication
        $userId = auth()->user()->id;
    
        // Save the rating in the Review table
        $review = new Review([
            'user_id' => $userId,  // Update this line based on your user object structure
            'travel_package_id' => $packageId,
            'ratings' => $rating,
            'comments' => $request->input('comments'), // Assuming you want to store comments too
        ]);
        $review->save();
    
        // Calculate and return the average rating for the specified travel package
        $averageRating = Review::where('travel_package_id', $packageId)->avg('ratings');
    
        // Respond with the updated average rating
        return response()->json(['rating' => $averageRating]);
    }

    public function avg($packageId)
    {
        $averageRating = Review::where('travel_package_id', $packageId)->avg('ratings');
        return response()->json($averageRating);
    }

    
    public function update(UpdateTravel_PackageRequest $request, Travel_Package $travel_Package)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $package = Travel_Package::find($id);
        $image = Image::where("travel__package_id", $package->id)->first();

        if ($image) {
            Storage::delete($image->path);
            $image->delete(); // Assuming you want to delete the image record as well
        }

        $package->delete();
        return response()->json("Deleted");
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