<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFieldsToPersyaratanppdbTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('persyaratanppdb', function (Blueprint $table) {
            $table->string('nama_panggilan')->nullable();
            $table->string('tempat_lahir')->nullable();
            $table->date('tanggal_lahir')->nullable();
            $table->string('agama')->nullable();
            $table->integer('anak_ke')->nullable();
            $table->integer('dari_bersaudara')->nullable();
            $table->string('status_anak')->nullable();
            $table->text('alamat')->nullable();
            $table->string('no_hp')->nullable();
            $table->string('nama_sekolah')->nullable();
            $table->text('alamat_sekolah')->nullable();
            $table->string('nama_lengkap_ayah')->nullable();
            $table->string('nama_lengkap_ibu')->nullable();
            $table->text('alamat_ayah')->nullable();
            $table->text('alamat_ibu')->nullable();
            $table->string('pekerjaan_ayah')->nullable();
            $table->string('pekerjaan_ibu')->nullable();
            $table->string('pendidikan_terakhir_ayah')->nullable();
            $table->string('pendidikan_terakhir_ibu')->nullable();
            $table->decimal('penghasilan_perbulan_ayah', 15, 2)->nullable();
            $table->decimal('penghasilan_perbulan_ibu', 15, 2)->nullable();
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
            $table->dropColumn([
                'nama_panggilan',
                'tempat_lahir',
                'tanggal_lahir',
                'agama',
                'anak_ke',
                'dari_bersaudara',
                'status_anak',
                'alamat',
                'no_hp',
                'nama_sekolah',
                'alamat_sekolah',
                'nama_lengkap_ayah',
                'nama_lengkap_ibu',
                'alamat_ayah',
                'alamat_ibu',
                'pekerjaan_ayah',
                'pekerjaan_ibu',
                'pendidikan_terakhir_ayah',
                'pendidikan_terakhir_ibu',
                'penghasilan_perbulan_ayah',
                'penghasilan_perbulan_ibu'
            ]);
        });
    }
}
