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
        'airline_id',
        'destination_id',
        'departure_flight_id',
        'custom_status',
        'hotel_id',
        "return_flight_id",


    ];

    public function image(){
        return $this->hasOne(Image::class);
        
    }
    public function airline(){
        return $this->belongsTo(Airlines::class);
        
    }

    public function booking(){
        return $this->hasMany(Booking::class);
        
    }

    public function review(){
        return $this->hasMany(Review::class, 'travel_package_id');
        
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


    public function cart(){
        return $this->hasMany(Cart::class);
        
    }
    public function hotel(){
        return $this->belongsTo(Hotels::class);
        
    }
}
