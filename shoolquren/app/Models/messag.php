<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class messag extends Model
{
    use HasFactory;
    public function conversation(){
        return $this->hasOne(App\Models\conversation);
     }
}
