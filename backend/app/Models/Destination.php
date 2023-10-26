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

    public function destination(){
        return $this->hasMany(Travel_Package::class);
        
    }

    public function hotels(){
        return $this->hasMany(Hotels::class);
        
    }

    public function activity(){
        return $this->hasMany(Activity::class);
        
    }

    public function attraction(){
        return $this->hasMany(Attraction::class);
        
    }
}

