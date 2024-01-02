<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hospital extends Model
{
    use HasFactory;
    protected $table = "esa_hospital";
    protected $guarded = ["id"];

    public function facilityType()
    {
        return $this->belongsTo(FacilityType::class, 'type');
    }

    public function policeStation()
    {
        return $this->belongsTo(PoliceStation::class, 'police_station_id');
    }
}
