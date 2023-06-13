<?php

namespace App\Models;
//use App\Models\Messag;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class conversation extends Model
{
    use HasFactory;
    public function messages(){
        return $this->hasMany('App\Models\Messag');
    }
}
