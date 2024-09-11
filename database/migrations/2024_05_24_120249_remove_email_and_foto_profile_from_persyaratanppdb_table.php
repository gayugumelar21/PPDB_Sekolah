<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class RemoveEmailAndFotoProfileFromPersyaratanppdbTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('persyaratanppdb', function (Blueprint $table) {
            $table->dropColumn('email');
            $table->dropColumn('foto_profile');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('persyaratanppdb', function (Blueprint $table) {
            $table->string('email')->nullable();
            $table->string('foto_profile')->nullable();
        });
    }
}
