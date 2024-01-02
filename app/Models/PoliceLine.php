<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PoliceLine extends Model
{
    use HasFactory;
    protected $table = "police_line";
    protected $guarded = ["id"];

    public function district()
    {
        return $this->belongsTo(Districts::class, 'district_id', 'id');
    }

    public function policeStation()
    {
        return $this->belongsTo(PoliceStation::class, 'police_station_id', 'id');
    }
}