<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ZoomCredentials extends Model
{
    use HasFactory;
    protected $table = "zoom_credentials";
    protected $guarded = ["id"];
    public $timestamps = false;

    public function districts()
    {
        return $this->belongsTo(Districts::class, 'district_id', 'id');
    }
}
