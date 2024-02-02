<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EmergencyAlert extends Model
{
    use HasFactory;
    protected $table = "emergency_alerts";
    protected $guarded = ["id"];

    public function district()
    {
        return $this->belongsTo(Districts::class, 'district_id', 'id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
