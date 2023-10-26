<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Travel_Package extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'description',
        'price',
        'user_id',
        'airlines_id',
        'destination_id',
        'departure_flight_id',
        "return_flight_id",


    ];

    public function booking(){
        return $this->hasMany(Booking::class);
        
    }

    public function review(){
        return $this->hasMany(Booking::class);
        
    }

    public function user(){
        return $this->belongsToMany(User::class);
        
    }

    // public function airlines(){
    //     return $this->belongsTo(Airlines::class);
        
    // }

    public function destination(){
        return $this->belongsTo(Destination::class);
        
    }

    public function departure_flight(){
        return $this->belongsTo(Flight::class, 'departure_flight_id');
        
    }

    public function return_flight(){
        return $this->belongsTo(Flight::class, 'return_flight_id');
        
    }
}
