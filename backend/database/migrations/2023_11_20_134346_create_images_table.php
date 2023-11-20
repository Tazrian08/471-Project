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
        Schema::create('images', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('travel_package_id')->default(NULL)->nullable();
            $table->foreign('travel_package_id')
                ->references('id') 
                ->on('travel__packages')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->unsignedBigInteger('destination_id')->default(NULL)->nullable();
            $table->foreign('destination_id')
                ->references('id') 
                ->on('destinations')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->unsignedBigInteger('attraction_id')->default(NULL)->nullable();
            $table->foreign('attraction_id')
                ->references('id') 
                ->on('attractions')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->unsignedBigInteger('activity_id')->default(NULL)->nullable();
            $table->foreign('activity_id')
                ->references('id') 
                ->on('activities')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('images');
    }
};
