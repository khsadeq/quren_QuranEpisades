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
        Schema::create('quran_episodes', function (Blueprint $table) {
            $table->id();
            $table->string('name_episodes');
            $table->integer('Id_teacher');
            $table->integer('period');
            $table->integer('number_student');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('quran_episodes');
    }
};
