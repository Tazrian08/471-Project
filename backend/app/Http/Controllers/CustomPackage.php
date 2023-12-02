<?php

namespace App\Http\Controllers;

use App\Models\Image;
use Illuminate\Http\Request;
use App\Models\Travel_Package;
use App\Http\Requests\StoreTravel_PackageRequest;
use App\Http\Requests\UpdateTravel_PackageRequest;

class CustomPackage extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $travelPackage = Travel_Package::all();

        return response()->json($travelPackage);
    }
}