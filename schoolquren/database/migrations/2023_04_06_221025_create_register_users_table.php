<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('register_users', function (Blueprint $table) {
            $table->id();
            $table->string('Name');
            $table->string('Email')->unique();
            // $table->string('type_user_id');
            $table->foreignId('type_user_id')->constrained('type_users')->cascadeOnDelete();
           // $table->timestamp('Email_verified_at')->nullable();
            $table->string('Password');
            $table->string('Password2');

            // $table->string('');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('register_users');
    }
};
