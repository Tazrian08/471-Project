<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Airlines extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'email',
    ];

    public function travel_package(){
        return $this->hasMany(Travel_Package::class);
        
    }

    public function flight(){
        return $this->hasMany(Flight::class);
        
    }
}
