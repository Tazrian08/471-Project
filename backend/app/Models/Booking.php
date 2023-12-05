<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'travel_package_id',
        'invoice',
        'status',
        "payment info",
    ];

    public function user(){
        return $this->belongsTo(User::class);
        
    }

    public function travel_package(){
        return $this->belongsTo(Travel_Package::class);
        
    }
}
