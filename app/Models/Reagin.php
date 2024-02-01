<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reagin extends Model
{
    use HasFactory;
    protected $table = "reagons";
    protected $guarded = ["id"];
}
