<?php

use App\Models\Booking;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CartController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\FlightController;
use App\Http\Controllers\HotelsController;
use App\Http\Controllers\PaypalController;
use App\Http\Controllers\BookingController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\AirlinesController;
use App\Http\Controllers\AttractionController;
use App\Http\Controllers\DestinationController;
use App\Http\Controllers\TravelPackageController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

//USER ROUTES
Route::post("/register",[UserController::class,"register"]);
Route::post("/login",[UserController::class,"login"]);

//TRAVEL PACKAGE ROUTES 
Route::get("/travel-packages",[TravelPackageController::class,"index"]);
Route::get("/travel-packages/{id}", [TravelPackageController::class, "show"]);
Route::post("/travel-package/create",[TravelPackageController::class,"create"]);
Route::get('/travel-package/search/{search}',[TravelPackageController::class,"search"]);


//DESTINATION ROUTES
Route::post("/destination/create",[DestinationController::class,"create"]);
Route::get("/alldestination",[DestinationController::class,"index"]);
Route::get("/alldestination/{id}", [DestinationController::class,"show2"]);
Route::get('/destination/search/{search}',[DestinationController::class,"search"]);
Route::get('/destination/profile/{destinationID}',[DestinationController::class,"show"]);



//ATTRACTION ROUTES
Route::post("/attraction/create",[AttractionController::class,"create"]);
Route::get("/attraction/{id}", [AttractionController::class, "show"]);

//HOTEL ROUTES
Route::post("/hotels/create", [HotelsController::class,"create"]);
Route::get("/hotels", [HotelsController::class, "index"]);
Route::get('/hotelselector/{destinationID}',[HotelsController::class,"select"]);

//AIRLINE ROUTES
Route::post("/airline/create",[AirlinesController::class,"create"]);
Route::get("/airline",[AirlinesController::class,"index"]);
Route::get("/airline/{id}", [AirlinesController::class,"show2"]);
Route::put("/airline/edit", [AirlinesController::class,"update"]);



//FLIGHT ROUTES
Route::get("flight", [FlightController::class,"index"]);
Route::get('/flightselector/{airlineId}',[FlightController::class,"select"]);

//BOOKING ROUTES
Route::post("/booking", [BookingController::class,"create"]);




//CART ROUTES
Route::delete("/cart/delete/{id}", [CartController::class,"destroy"]);
Route::post('/cart/index2', [CartController::class, 'index2']);

//TEMP ROUTE FOR CUSTOM
// Route::get('/custom-package', [TravelPackageController::class, 'custom']);
Route::post('/custom-package', [TravelPackageController::class, 'customcreate']);
Route::get('/hotel-room-details/{hotelId}', [HotelController::class, 'getRoomDetails']);


//SANCTUM PROTECTED ROUTES
Route::middleware('auth:sanctum')->group(function () {
    Route::get('/user', [UserController::class, 'user']);
    Route::post('/logout', [UserController::class, 'logout']);
    Route::post('/cart', [CartController::class, 'add']);
    Route::get('/cart/index', [CartController::class, 'index']);
    Route::get('/profile', [ProfileController::class, 'profile']);
    //PAYMENT ROUTES
    Route::post('paypal/payment', [PaypalController::class, 'payment']);


});