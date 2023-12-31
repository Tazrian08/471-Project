<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Attraction extends Model
{
    use HasFactory;

    protected $fillable = [
        'attraction',
        'details',
        'destination_id',
        'cost',
        

    ];

    public function destination(){
        return $this->belongsTo(Destination::class);
        
    }

    public function image(){
        return $this->hasOne(Image::class);
        
    }
}
