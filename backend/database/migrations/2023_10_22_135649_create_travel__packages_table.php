<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    protected $priority = 1;
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
            $table->unsignedBigInteger('user_id')->default(NULL)->nullable();
            $table->foreign('user_id')
                ->references('id') 
                ->on('users')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            // $table->unsignedBigInteger('airlines_id');
            // $table->foreign('airlines_id')
            //     ->references('id') 
            //     ->on('airlines')
            //     ->onUpdate('cascade')
            //     ->onDelete('cascade');
            $table->unsignedBigInteger('destination_id');
            $table->foreign('destination_id')
                ->references('id') 
                ->on('destinations')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->unsignedBigInteger('departure_flight_id');
            $table->foreign('departure_flight_id')
                ->references('id') 
                ->on('flights')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            
            $table->unsignedBigInteger('return_flight_id');
            $table->foreign('return_flight_id')
                ->references('id') 
                ->on('flights')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->unsignedBigInteger('hotel_id');
            $table->foreign('hotel_id')
                ->references('id') 
                ->on('hotels')
                ->onUpdate('cascade')
                ->onDelete('cascade');
                $table->boolean("custom_status")->default(0);
            $table->unsignedBigInteger("amount")->default(70);

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
