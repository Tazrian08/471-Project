<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProfileController extends Controller
{
    public function profile(Request $request)
    {
        if (auth()->check()) {
            $user = $request->user();
            return response()->json(['user' => $user]);
        } else {
            // Handle the case when the user is not authenticated
            return response()->json(['message' => 'User is not authenticated'], 401);
        }
    }
}
