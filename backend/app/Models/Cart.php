<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'travel_package_id',
        'amount',
    ];


    public function user(){
        return $this->belongsTo(User::class);
        
    }

    public function atravel_package(){
        return $this->belongsTo(Travel_Package::class);
        
    }


}
