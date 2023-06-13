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
            // $table->integer('qualification_studi_id');
            $table->foreignId('qualification_studi_id')->constrained('qualifications_studies');
            $table->date('Teaching_years');
            $table->string('Center_they_work');
            // $table->string('Experience');
            $table->string('Address');
            // $table->integer('sex_id');
            $table->foreignId('sex_id')->constrained('sexes');
            // $table->integer('sexual_id');
            $table->foreignId('sexual_id')->constrained('sexuals');
            // $table->integer('identity_id');
            $table->foreignId('identiti_id')->constrained('identities');
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
