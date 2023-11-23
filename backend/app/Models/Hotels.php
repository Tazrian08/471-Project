<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hotels extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'email',
        'prices',
        'destination_id',
        'phone_no',

    ];

    public function destination(){
        return $this->belongsTo(Destination::class);
        
    }
}
