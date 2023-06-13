<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class episodes_quran extends Model
{
    use HasFactory;
    protected $fillable = [
        'name_episodes',
        'teacher_id',
        'period_id',
        'time_episode',
        'number_student',
        'system_episodes_id',
    ];
}
