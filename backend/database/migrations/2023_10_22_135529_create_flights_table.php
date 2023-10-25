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
        Schema::create('flights', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger("airlines_id");
            $table->foreign('airlines_id')
                ->references('id') 
                ->on('airlines')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->unsignedBigInteger("destination_id");
            $table->foreign('destination_id')
                ->references('id') 
                ->on('destinations')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->timestamp("departure");
            $table->decimal("prices,10,2");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('flights');
    }
};
