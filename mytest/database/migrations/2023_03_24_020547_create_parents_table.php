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
        Schema::create('parents', function (Blueprint $table) {
            $table->id();
            $table->string('Name_parent');
            $table->integer('phone');
            $table->string('jop');
            $table->string('email')->uniqid();
            $table->string('episode_in_which_his_son');
            $table->string('link_kinship');
            $table->string('Social_status');
            $table->integer('id_sex');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('parents');
    }
};
