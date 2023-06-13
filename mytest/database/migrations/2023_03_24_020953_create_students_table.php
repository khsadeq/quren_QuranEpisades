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
        Schema::create('students', function (Blueprint $table) {
            $table->Id();
            $table->String('Name_student');
            $table->String('Name_Episode');
            $table->Date('Date_birth');
            $table->String('Address');
            $table->String('Chapret');
            $table->String('School');
            $table->integer('ID_identtity');
            $table->integer('Number_identity');
            $table->integer('ID_sex');
            $table->integer('ID_sexual');
            $table->integer('ID_parents');
            $table->String('Previous_save');
            $table->String('Current_save');
            $table->Date('Date_Join_Episode');
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('students');
    }
};
