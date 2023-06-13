<?php

namespace App\Models;
use App\Models\teacher;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Qualification_study extends Model
{
    protected $fillable =[
        'id',
         'name_qualification',
 
 
 ];
    use HasFactory;
    public function teache(){
        return $this ->hasMany(Qualification_study::class, foreignKey: 'Qualification_study_id');
    }
}
