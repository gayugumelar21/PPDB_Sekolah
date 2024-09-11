<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFotoDiriToPersyaratanppdb extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('persyaratanppdb', function (Blueprint $table) {
            $table->string('foto_diri')->nullable()->after('penghasilan_perbulan_ibu'); // ganti 'existing_column' dengan nama kolom setelah mana foto_diri akan ditambahkan
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
            $table->dropColumn('foto_diri');
        });
    }
}
