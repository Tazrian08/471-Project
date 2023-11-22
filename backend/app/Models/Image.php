<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    use HasFactory;
    protected $fillable = [
        'travel_package_id',
        'destination_id',
        'attraction_id',
        'activity_id',
        'path',


    ];


    public function destination(){
        return $this->belongsTo(Destination::class);
        
    }


    public function travel(){
        return $this->belongsTo(Travel_Package::class);
        
    }

}
