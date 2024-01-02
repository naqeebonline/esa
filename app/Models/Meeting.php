<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Meeting extends Model
{
    use HasFactory;
    protected $table = "meeting";
    protected $guarded = ["id"];


    public function meetingUsers()
    {
        return $this->hasMany(AssignMeetings::class, 'zoom_meeting_id', 'zoom_meeting_id');
    }

    public function createdByUser()
    {
        return $this->belongsTo(User::class, 'created_by', 'id');
    }


}
