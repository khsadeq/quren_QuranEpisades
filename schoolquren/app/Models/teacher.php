<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class teacher extends Model
{
    use HasFactory;
    protected $fillable =[
        'Name_tracher',
        'Date_birth',
        'Qualification',
        'Work',
        'Salary',
        'phone',
        'Email',
        'qualification_studi_id',
        'Teaching_years',
        'Center_they_work',
        'Address',
        'sex_id',
        'sexual_id',
        'identiti_id',
        'Number_identity',

               ];
}
