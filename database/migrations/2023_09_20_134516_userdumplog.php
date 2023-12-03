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
        Schema::create('userdumplog', function (Blueprint $table) {
            $table->id();
            $table->string('username');
            $table->string('_token')->nullable();
            $table->string('ip')->nullable();
            $table->string('action_type')->nullable();
            $table->string('user_agent')->nullable();
            $table->string('browser')->nullable();
            $table->string('platform')->nullable();
            $table->string('device')->nullable();
            $table->string('attempt_at')->nullable();
            $table->string('attempted_action')->nullable();
            $table->string('loggedout_at')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('userdumplog');
    }
};
