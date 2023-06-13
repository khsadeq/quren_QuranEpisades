<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class period extends Model
{
    use HasFactory;
    protected $fillable =[
        'Name_parents',
        'Phone',
        'sex_id',
        'Email',
        'Job',
        'link_kinship',
        'Social_status',
    ];
}
