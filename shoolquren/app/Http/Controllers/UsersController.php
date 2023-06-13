<?php

namespace App\Http\Controllers;

use App\Models\phone;
use App\Models\User;
use App\Models\Role;

use App\Http\Requests\Store_users_Request;
use App\Http\Requests\Update_users_Request;
use Illuminate\Support\Facades\DB;
class UsersController extends Controller
{
    // public function index($id){
    //     return $id;
    // }
    /**
     * Display a listing of the resource.
     */
    // public function index()
    // {
    //     $phone = phone::find(1);
    //      return $phone->user;
    // }
    // public function index()
    // {
    //     $user = User::find(2);
    //      return $user->phone;
    // }
    // public function index()
    // {
    //     $user = User::find(1);
    //      return $user->roles;
    // }
    public function index($id)
    {
        $role = role::find($id);
         return $role->users;
    }
    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Store_users_Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(_users_ $_users_)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(_users_ $_users_)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Update_users_Request $request, _users_ $_users_)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(_users_ $_users_)
    {
        //
    }
}
