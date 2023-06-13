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
        Schema::create('episodes_qurans', function (Blueprint $table) {
            $table->id();
            $table->string('name_episodes');
            // $table->integer('teacher_id');
            $table->foreignId('teacher_id')->constrained('teachers')->cascadeOnDelete();
            // $table->integer('period_id');
            $table->foreignId('period_id')->constrained('periods')->cascadeOnDelete();
            $table->time('time_episode');
            $table->integer('number_student');
            // $table->int('system_episod_id');
            $table->foreignId('system_episodes_id')->constrained('system_episodes')->cascadeOnDelete();
            //  $table->foreignId('parent_id')->references('id')->on('parents');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('episodes_qurans');
    }
};
