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
        Schema::create('travel__packages', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->longText('description');
            $table->decimal("price",10,2);
            $table->unsignedBigInteger('airline_id');
            // $table->foreign('airline_id')
            //     ->references('id') 
            //     ->on('airlines')
            //     ->onUpdate('cascade')
            //     ->onDelete('cascade');
            $table->unsignedBigInteger('destination_id');
            $table->unsignedBigInteger('departure_flight_id');
            $table->unsignedBigInteger('return_flight_id');
            // $table->foreign('destination_id')
            //     ->references('id') 
            //     ->on('destination')
            //     ->onUpdate('cascade')
            //     ->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('travel__packages');
    }
};
