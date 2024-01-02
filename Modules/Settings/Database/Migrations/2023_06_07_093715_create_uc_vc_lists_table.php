<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('uc_vc_lists', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->enum('type', ['UC', 'VC', 'NC'])->default('UC');
            $table->integer('district_id');
            $table->foreign('district_id')->references('id')->on('districts')->onDelete('cascade');
            $table->integer('tehsil_id');
            $table->foreign('tehsil_id')->references('id')->on('tehsils')->onDelete('cascade');
            $table->boolean('status')->default(1);
            $table->softDeletes();
            $table->timestamps();
            $table->charset = 'utf8mb3';
            $table->collation = 'utf8mb3_general_ci';
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uc_vc_lists');
    }
};
