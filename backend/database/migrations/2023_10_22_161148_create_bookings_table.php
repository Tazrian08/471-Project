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
        Schema::create('bookings', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->foreign('user_id')
                ->references('id') // Reference the primary key of 'users' table
                ->on('users')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->unsignedBigInteger('travel_package_id');
            $table->foreign('travel_package_id')
                ->references('id') 
                ->on('travel__packages')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->string('invoice'); //location of generated pdf
            $table->boolean("status");
            $table->date('date');
            $table->string("payment info"); //location of info pdf
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bookings');
    }
};
