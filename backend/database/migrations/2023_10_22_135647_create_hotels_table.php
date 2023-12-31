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
        Schema::create('hotels', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string("email");
            $table->decimal('classic_prices', 10, 2)->nullable();
            $table->decimal('deluxe_prices', 10, 2)->nullable();
            $table->decimal('presidential_prices', 10, 2)->nullable();;
            $table->unsignedBigInteger('destination_id');
            $table->foreign('destination_id')
                ->references('id') 
                ->on('destinations')
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
        Schema::dropIfExists('hotels');
    }
};
