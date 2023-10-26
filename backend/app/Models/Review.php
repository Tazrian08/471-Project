<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    use HasFactory;


    protected $fillable = [
        'user_id',
        'travel_package_id',
        'ratings',
        'comments',

    ];

    public function user(){
        return $this->belongsTo(User::class);
        
    }

    public function travel(){
        return $this->belongsTo(Travel_Package::class);
        
    }
}
