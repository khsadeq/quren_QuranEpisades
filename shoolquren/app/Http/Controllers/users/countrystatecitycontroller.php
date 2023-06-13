<?php

namespace App\Http\Controllers\users;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class countrystatecitycontroller extends Controller
{
    public function gettype_users()
    {
        $type_users = DB::table('type_users')->get();
        return $type_users;

    }
     public function getsexes(request $request)
    {
        $sexes = DB::table('type_users')->where(id,$request->id)->get();
        if(cout($sexes) > 0){
            return response()->json($sexes);
        }
          }
          public function getsummary(request $request)
    {
        $summary = DB::table('summary')->where(id,$request->id)->get();
        if(cout($sexes) > 0){
            return response()->json($sexes);
        }
    }
//  public function getsu()
//     {
//         $type_users = DB::table('type_users')->get();
//         return $type_users;

//     }
//  public function get()
//     {
//         $type_users = DB::table('type_users')->get();
//         return $type_users;

//     }
}
