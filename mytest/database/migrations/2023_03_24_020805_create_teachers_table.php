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
        Schema::create('teachers', function (Blueprint $table) {
            $table->id();
            $table->string('Name_tracher');
            $table->Date('Date_birth');
            $table->string('Qualification');
            $table->string('Work');
            $table->integer('Salary');
            $table->integer('phone');
            $table->string('Email')->unique();
            $table->integer('ID_Qualification');
            $table->date('Teaching_years');
            $table->string('Center_they_work');
            // $table->string('Experience');
            $table->string('Address');
            $table->integer('ID_Sex');
            $table->integer('ID_Sexual');
            $table->integer('ID_Identity');
            $table->integer('Number_identity');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('teachers');
    }
};
