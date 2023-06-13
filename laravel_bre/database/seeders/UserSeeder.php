<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        User::truncate();
        User::create([
            'name'=>'khattab',
            'email'=>'khattab@gmail.com',
            'password'=>Hash::make('12341234'),
        ]);
        // User::create([]);
    }
}
