<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Activity extends Model
{
    use HasFactory;

    protected $fillable = [
        'activity',
        'details',
        'destination_id',
        'cost',
        

    ];

    public function destination(){
        return $this->belongsTo(Destination::class);
        
    }
}
