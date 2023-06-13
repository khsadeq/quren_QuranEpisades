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
        Schema::create('sexes', function (Blueprint $table) {
            $table->id();
            $table->string('type_sexes');
            // $table->foreignId('parent_id')->constrained('parents');//
            //  $table->foreignId('parent_id')->references('parents');//
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sexes');
    }
};
