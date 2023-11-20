<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Destination extends Model
{
    use HasFactory;


    protected $fillable = [
        'country',
        'city',
        'description',
    ];

    public function travel_package(){
        return $this->hasMany(Travel_Package::class);
        
    }

    public function hotel(){
        return $this->hasMany(Hotels::class);
        
    }

    public function activity(){
        return $this->hasMany(Activity::class);
        
    }

    public function attraction(){
        return $this->hasMany(Attraction::class);
        
    }

    public function flight(){
        return $this->hasMany(Flight::class);
        
    }
}

