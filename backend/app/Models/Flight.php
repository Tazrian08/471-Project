<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Flight extends Model
{
    use HasFactory;

    protected $fillable = [
        'airlines_id',
        'destination_id',
        'departure',
        'prices',
    ];

    public function departure_flight(){
        return $this->hasMany(Travel_Package::class, 'departure_flight_id');
        
    }

    public function return_flight(){
        return $this->hasMany(Travel_Package::class, 'return_flight_id');
        
    }
}
