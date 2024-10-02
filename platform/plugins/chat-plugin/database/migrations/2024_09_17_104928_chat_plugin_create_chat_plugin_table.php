<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        Schema::create('chat_plugins', function (Blueprint $table) {
            $table->id();
            $table->string('name', 255);
            $table->string('status', 60)->default('published');
            $table->timestamps();
        });

        Schema::create('chat_plugins_translations', function (Blueprint $table) {
            $table->string('lang_code');
            $table->foreignId('chat_plugins_id');
            $table->string('name', 255)->nullable();

            $table->primary(['lang_code', 'chat_plugins_id'], 'chat_plugins_translations_primary');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('chat_plugins');
        Schema::dropIfExists('chat_plugins_translations');
    }
};
