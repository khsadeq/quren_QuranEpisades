<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class register_user extends Model
{
    use HasFactory;
    protected $fillable =[
        'Name',
        'Email',
        'type_user_id',
        'Password',
        'Password2',
    ];
}
