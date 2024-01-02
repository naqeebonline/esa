<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sensitivity extends Model
{
    use HasFactory;
    protected $table = "ps_sensitivity";
    protected $guarded = ["id"];
}
