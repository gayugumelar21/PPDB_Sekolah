<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Persyaratanppdb extends Model
{
    protected $table = 'persyaratanppdb';

    protected $fillable = [
        'nama',
        'jenis_kelamin',
        'status_siswa',
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
        'penghasilan_perbulan_ibu',
        'foto_diri',  
        'akta_kelahiran',
        'kartu_keluarga',
        'ktp_wali',
        'ijazah_tk',
    ];
    
    
}
