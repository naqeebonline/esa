<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PoliceMobileHistory extends Model
{
    use HasFactory;
    protected $table = "police_mobiles_histroy";
    protected $guarded = ["id"];

    public function policeMobile()
    {
        return $this->belongsTo(PoliceMobile::class, 'police_mobile_id	', 'id');
    }
}
