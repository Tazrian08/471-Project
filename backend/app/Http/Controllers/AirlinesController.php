<?php

namespace App\Http\Controllers;

use App\Models\Airlines;
use Illuminate\Http\Request;
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
    public function show(Airlines $airlines)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
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
