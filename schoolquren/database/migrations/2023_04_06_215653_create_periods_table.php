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
        Schema::create('periods', function (Blueprint $table) {
            $table->id();
            $table->string('Name_parents');
            $table->integer('Phone');
            // $table->foreignId('phon_id')->constrained('phons');
            // $table->integer('ID_sex');
            $table->foreignId('sex_id')->constrained('sexes');
            $table->string('Email')->unique();
            $table->string('Job');
            $table->string('link_kinship');
            $table->string('Social_status');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('periods');
    }
};
