<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddDocumentsToPersyaratanppdbTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('persyaratanppdb', function (Blueprint $table) {
            $table->string('akta_kelahiran')->nullable();
            $table->string('kartu_keluarga')->nullable();
            $table->string('ktp_wali')->nullable();
            $table->string('ijazah_tk')->nullable();
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
            $table->dropColumn('akta_kelahiran');
            $table->dropColumn('kartu_keluarga');
            $table->dropColumn('ktp_wali');
            $table->dropColumn('ijazah_tk');
        });
    }
}
