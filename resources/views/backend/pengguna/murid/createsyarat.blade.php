@extends('layouts.backend.app')

@section('title')
   Input Persyaratan PPDB
@endsection

@section('content')

    @if ($message = Session::get('success'))
        <div class="alert alert-success" role="alert">
            <div class="alert-body">
                <strong>{{ $message }}</strong>
                <button type="button" class="close" data-dismiss="alert">×</button>
            </div>
        </div>
    @elseif($message = Session::get('error'))
        <div class="alert alert-danger" role="alert">
            <div class="alert-body">
                <strong>{{ $message }}</strong>
                <button type="button" class="close" data-dismiss="alert">×</button>
            </div>
        </div>
    @endif
<div class="content-wrapper container-xxl p-0">
    <div class="content-header row">
        <div class="content-header-left col-md-9 col-12 mb-2">
            <div class="row breadcrumbs-top">
                <div class="col-12">
                    <h2> Input Persyaratan PPDB</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="content-body">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header header-bottom">
                        <h4>Data Calon Siswa</h4>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('inputsyarat-buat.store') }}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Nama Lengkap</label> <span class="text-danger">*</span>
                                        <input type="text" class="form-control @error('name') is-invalid @enderror" name="nama" value=" {{old('nama')}} " placeholder="Nama Lengkap" />
                                        @error('nama')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>



                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Nama Panggilan</label> <span class="text-danger">*</span>
                                        <input type="text" class="form-control @error('name') is-invalid @enderror" name="nama_panggilan" value=" {{old('nama')}} " placeholder="Nama Panggilan" />
                                        @error('name')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Tempat Lahir</label> <span class="text-danger">*</span>
                                        <input type="text" class="form-control @error('tempat_lahir') is-invalid @enderror" name="tempat_lahir" value=" {{old('tempat_lahir')}} " placeholder="Tempat Lahir" />
                                        @error('tempat_lahir')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="tanggalLahir">Tanggal Lahir</label> <span class="text-danger">*</span>
                                        <input type="date" class="form-control @error('tanggal_lahir') is-invalid @enderror" id="tanggalLahir" name="tanggal_lahir" value="{{ old('tanggal_lahir') }}" />
                                        @error('tanggal_lahir')
                                            <div class="invalid-feedback">
                                                <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Jenis Kelamin</label> <span class="text-danger">*</span>
                                        <select name="jenis_kelamin" class="form-control @error('jenis_kelamin') is-invalid @enderror">
                                            <option value="">-- Pilih --</option>
                                            <option value="Laki-laki">Laki-laki</option>
                                            <option value="Perempuan">Perempuan</option>
                                        </select>
                                        @error('jenis_kelamin')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="agama">Agama</label> <span class="text-danger">*</span>
                                        <select class="form-control @error('agama') is-invalid @enderror" id="agama" name="agama">
                                            <option value="" disabled selected>Pilih Agama</option>
                                            <option value="Islam" {{ old('agama') == 'Islam' ? 'selected' : '' }}>Islam</option>
                                            <option value="Kristen" {{ old('agama') == 'Kristen' ? 'selected' : '' }}>Kristen</option>
                                            <option value="Katholik" {{ old('agama') == 'Katholik' ? 'selected' : '' }}>Katholik</option>
                                            <option value="Hindu" {{ old('agama') == 'Hindu' ? 'selected' : '' }}>Hindu</option>
                                            <option value="Budha" {{ old('agama') == 'Budha' ? 'selected' : '' }}>Budha</option>
                                        </select>
                                        @error('agama')
                                            <div class="invalid-feedback">
                                                <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>


                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Anak Ke</label> <span class="text-danger">*</span>
                                        <input type="text" class="form-control @error('anak_ke') is-invalid @enderror" name="anak_ke" value=" {{old('anak_ke')}} " placeholder="Anak Ke" />
                                        @error('anak_ke')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Dari .. Bersaudara</label> <span class="text-danger">*</span>
                                        <input type="text" class="form-control @error('dari_bersaudara') is-invalid @enderror" name="dari_bersaudara" value=" {{old('dari_bersaudara')}} " placeholder="Dari ... Bersaudara" />
                                        @error('dari_bersaudara')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="status_anak">Status Anak dalam Keluarga</label> <span class="text-danger">*</span>
                                        <select class="form-control @error('status_anak') is-invalid @enderror" id="status_anak" name="status_anak">
                                            <option value="" disabled selected>Pilih Status Anak</option>
                                            <option value="Anak Kandung" {{ old('status_anak') == 'Anak Kandung' ? 'selected' : '' }}>Anak Kandung</option>
                                            <option value="Anak Angkat" {{ old('status_anak') == 'Anak Angkat' ? 'selected' : '' }}>Anak Angkat</option>
                                            <option value="Lainnya" {{ old('status_anak') == 'Lainnya' ? 'selected' : '' }}>Lainnya</option>
                                        </select>
                                        @error('status_anak')
                                            <div class="invalid-feedback">
                                                <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>


                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Alamat</label> <span class="text-danger">*</span>
                                        <input type="text" class="form-control @error('alamat') is-invalid @enderror" name="alamat" value=" {{old('alamat')}} " placeholder="Alamat Siswa" />
                                        @error('alamat')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">No. Hp</label> <span class="text-danger">*</span>
                                        <input type="number" class="form-control @error('no_hp') is-invalid @enderror" name="no_hp" value=" {{old('no_hp')}} " placeholder="No Hp" />
                                        @error('no_hp')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Nama Sekolah - Ra/TK Asal</label> <span class="text-danger">*</span>
                                        <input type="text" class="form-control @error('nama_sekolah') is-invalid @enderror" name="nama_sekolah" value=" {{old('nama_sekolah')}} " placeholder="Nama Sekolah RA/TK Asal" />
                                        @error('nama_sekolah')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Alamat Sekolah - Ra/TK Asal</label> <span class="text-danger">*</span>
                                        <input type="text" class="form-control @error('alamat_sekolah') is-invalid @enderror" name="alamat_sekolah" value=" {{old('alamat_sekolah')}} " placeholder="Alamat Sekolah RA/TK Asal" />
                                        @error('alamat_sekolah')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Nama Lengkap Ayah</label> <span class="text-danger">*</span>
                                        <input type="text" class="form-control @error('nama_lengkap_ayah') is-invalid @enderror" name="nama_lengkap_ayah" value=" {{old('nama_lengkap_ayah')}} " placeholder="Nama Lengkap Ayah" />
                                        @error('nama_lengkap_ayah')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>
                                
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Nama Lengkap Ibu</label> <span class="text-danger">*</span>
                                        <input type="text" class="form-control @error('nama_lengkap_ibu') is-invalid @enderror" name="nama_lengkap_ibu" value=" {{old('nama_lengkap_ibu')}} " placeholder="Nama Lengkap Ibu" />
                                        @error('nama_lengkap_ibu')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Alamat Ayah</label> <span class="text-danger">*</span>
                                        <input type="text" class="form-control @error('alamat_ayah') is-invalid @enderror" name="alamat_ayah" value=" {{old('alamat_ayah')}} " placeholder="Alamat Ayah" />
                                        @error('alamat_ayah')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Alamat Ibu</label> <span class="text-danger">*</span>
                                        <input type="text" class="form-control @error('alamat_ibu') is-invalid @enderror" name="alamat_ibu" value=" {{old('alamat_ibu')}} " placeholder="Alamat Ibu" />
                                        @error('alamat_ibu')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Pekerjaan Ayah</label> <span class="text-danger">*</span>
                                        <select class="form-control @error('pekerjaan_ayah') is-invalid @enderror" name="pekerjaan_ayah">
                                            <option value="" disabled selected>Pilih Pekerjaan Ayah</option>
                                            <option value="Pegawai Negeri" {{ old('pekerjaan_ayah') == 'Pegawai Negeri' ? 'selected' : '' }}>Pegawai Negeri</option>
                                            <option value="Karyawan Swasta" {{ old('pekerjaan_ayah') == 'Karyawan Swasta' ? 'selected' : '' }}>Karyawan Swasta</option>
                                            <option value="Wiraswasta" {{ old('pekerjaan_ayah') == 'Wiraswasta' ? 'selected' : '' }}>Wiraswasta</option>
                                            <option value="Petani" {{ old('pekerjaan_ayah') == 'Petani' ? 'selected' : '' }}>Petani</option>
                                            <option value="Nelayan" {{ old('pekerjaan_ayah') == 'Nelayan' ? 'selected' : '' }}>Nelayan</option>
                                            <option value="TNI/Polri" {{ old('pekerjaan_ayah') == 'TNI/Polri' ? 'selected' : '' }}>TNI/Polri</option>
                                            <option value="Guru" {{ old('pekerjaan_ayah') == 'Guru' ? 'selected' : '' }}>Guru</option>
                                            <option value="Dokter" {{ old('pekerjaan_ayah') == 'Dokter' ? 'selected' : '' }}>Dokter</option>
                                            <option value="Pedagang" {{ old('pekerjaan_ayah') == 'Pedagang' ? 'selected' : '' }}>Pedagang</option>
                                            <option value="Sopir" {{ old('pekerjaan_ayah') == 'Sopir' ? 'selected' : '' }}>Sopir</option>
                                            <option value="Buruh" {{ old('pekerjaan_ayah') == 'Buruh' ? 'selected' : '' }}>Buruh</option>
                                            <option value="Lainnya" {{ old('pekerjaan_ayah') == 'Lainnya' ? 'selected' : '' }}>Lainnya</option>
                                        </select>
                                        @error('pekerjaan_ayah')
                                            <div class="invalid-feedback">
                                                <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>



                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Pekerjaan Ibu</label> <span class="text-danger">*</span>
                                        <select class="form-control @error('pekerjaan_ibu') is-invalid @enderror" name="pekerjaan_ibu">
                                            <option value="" disabled selected>Pilih Pekerjaan Ibu</option>
                                            <option value="Ibu Rumah Tangga" {{ old('pekerjaan_ibu') == 'Ibu Rumah Tangga' ? 'selected' : '' }}>Ibu Rumah Tangga</option>
                                            <option value="Pegawai Negeri Sipil (PNS)" {{ old('pekerjaan_ibu') == 'Pegawai Negeri Sipil (PNS)' ? 'selected' : '' }}>Pegawai Negeri Sipil (PNS)</option>
                                            <option value="Karyawan Swasta" {{ old('pekerjaan_ibu') == 'Karyawan Swasta' ? 'selected' : '' }}>Karyawan Swasta</option>
                                            <option value="Wiraswasta" {{ old('pekerjaan_ibu') == 'Wiraswasta' ? 'selected' : '' }}>Wiraswasta</option>
                                            <option value="Pedagang" {{ old('pekerjaan_ibu') == 'Pedagang' ? 'selected' : '' }}>Pedagang</option>
                                            <option value="Buruh" {{ old('pekerjaan_ibu') == 'Buruh' ? 'selected' : '' }}>Buruh</option>
                                            <option value="Tenaga Kesehatan (Dokter/Bidan/Perawat)" {{ old('pekerjaan_ibu') == 'Tenaga Kesehatan (Dokter/Bidan/Perawat)' ? 'selected' : '' }}>Tenaga Kesehatan (Dokter/Bidan/Perawat)</option>
                                            <option value="Guru" {{ old('pekerjaan_ibu') == 'Guru' ? 'selected' : '' }}>Guru</option>
                                            <option value="TNI/Polri" {{ old('pekerjaan_ibu') == 'TNI/Polri' ? 'selected' : '' }}>TNI/Polri</option>
                                            <option value="Petani" {{ old('pekerjaan_ibu') == 'Petani' ? 'selected' : '' }}>Petani</option>
                                            <option value="Nelayan" {{ old('pekerjaan_ibu') == 'Nelayan' ? 'selected' : '' }}>Nelayan</option>
                                            <option value="Lainnya" {{ old('pekerjaan_ibu') == 'Lainnya' ? 'selected' : '' }}>Lainnya</option>
                                        </select>
                                        @error('pekerjaan_ibu')
                                            <div class="invalid-feedback">
                                                <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>



                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Pendidikan Terakhir Ayah</label> <span class="text-danger">*</span>
                                        <select class="form-control @error('pendidikan_terakhir_ayah') is-invalid @enderror" name="pendidikan_terakhir_ayah">
                                            <option value="" disabled selected>Pilih Pendidikan Terakhir Ayah</option>
                                            <option value="Tidak Sekolah" {{ old('pendidikan_terakhir_ayah') == 'Tidak Sekolah' ? 'selected' : '' }}>Tidak Sekolah</option>
                                            <option value="SD" {{ old('pendidikan_terakhir_ayah') == 'SD' ? 'selected' : '' }}>SD</option>
                                            <option value="SMP" {{ old('pendidikan_terakhir_ayah') == 'SMP' ? 'selected' : '' }}>SMP</option>
                                            <option value="SMA/SMK" {{ old('pendidikan_terakhir_ayah') == 'SMA/SMK' ? 'selected' : '' }}>SMA/SMK</option>
                                            <option value="D1/D2/D3" {{ old('pendidikan_terakhir_ayah') == 'D1/D2/D3' ? 'selected' : '' }}>D1/D2/D3</option>
                                            <option value="S1" {{ old('pendidikan_terakhir_ayah') == 'S1' ? 'selected' : '' }}>S1</option>
                                            <option value="S2" {{ old('pendidikan_terakhir_ayah') == 'S2' ? 'selected' : '' }}>S2</option>
                                            <option value="S3" {{ old('pendidikan_terakhir_ayah') == 'S3' ? 'selected' : '' }}>S3</option>
                                            <option value="Lainnya" {{ old('pendidikan_terakhir_ayah') == 'Lainnya' ? 'selected' : '' }}>Lainnya</option>
                                        </select>
                                        @error('pendidikan_terakhir_ayah')
                                            <div class="invalid-feedback">
                                                <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>



                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Pendidikan Terakhir Ibu</label> <span class="text-danger">*</span>
                                        <select class="form-control @error('pendidikan_terakhir_ibu') is-invalid @enderror" name="pendidikan_terakhir_ibu">
                                            <option value="" disabled selected>Pilih Pendidikan Terakhir Ibu</option>
                                            <option value="Tidak Sekolah" {{ old('pendidikan_terakhir_ibu') == 'Tidak Sekolah' ? 'selected' : '' }}>Tidak Sekolah</option>
                                            <option value="SD" {{ old('pendidikan_terakhir_ibu') == 'SD' ? 'selected' : '' }}>SD</option>
                                            <option value="SMP" {{ old('pendidikan_terakhir_ibu') == 'SMP' ? 'selected' : '' }}>SMP</option>
                                            <option value="SMA/SMK" {{ old('pendidikan_terakhir_ibu') == 'SMA/SMK' ? 'selected' : '' }}>SMA/SMK</option>
                                            <option value="D1/D2/D3" {{ old('pendidikan_terakhir_ibu') == 'D1/D2/D3' ? 'selected' : '' }}>D1/D2/D3</option>
                                            <option value="S1" {{ old('pendidikan_terakhir_ibu') == 'S1' ? 'selected' : '' }}>S1</option>
                                            <option value="S2" {{ old('pendidikan_terakhir_ibu') == 'S2' ? 'selected' : '' }}>S2</option>
                                            <option value="S3" {{ old('pendidikan_terakhir_ibu') == 'S3' ? 'selected' : '' }}>S3</option>
                                            <option value="Lainnya" {{ old('pendidikan_terakhir_ibu') == 'Lainnya' ? 'selected' : '' }}>Lainnya</option>
                                        </select>
                                        @error('pendidikan_terakhir_ibu')
                                            <div class="invalid-feedback">
                                                <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>



                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Penghasilan Perbulan Ayah</label> <span class="text-danger">*</span>
                                        <input type="number" class="form-control @error('penghasilan_perbulan_ayah') is-invalid @enderror" name="penghasilan_perbulan_ayah" value=" {{old('penghasilan_perbulan_ayah')}} " placeholder="Penghasilan Perbulan Ayah" />
                                        @error('penghasilan_perbulan_ayah')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Penghasilan Perbulan Ibu</label> <span class="text-danger">*</span>
                                        <input type="number" class="form-control @error('penghasilan_perbulan_ibu') is-invalid @enderror" name="penghasilan_perbulan_ibu" value=" {{old('penghasilan_perbulan_ibu')}} " placeholder="Penghasilan Perbulan Ibu" />
                                        @error('penghasilan_perbulan_ibu')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="foto_diri">Pas Foto (JPG/JPEG/PNG)</label> <span class="text-danger">*</span>
                                        <input type="file" class="form-control @error('foto_diri') is-invalid @enderror" name="foto_diri" id="foto_diri" />
                                        @error('foto_diri')
                                            <div class="invalid-feedback">
                                                <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="akta_kelahiran">Akta Kelahiran (JPG/JPEG/PNG)</label>
                                        <input type="file" class="form-control @error('akta_kelahiran') is-invalid @enderror" name="akta_kelahiran" id="akta_kelahiran" />
                                        @error('akta_kelahiran')
                                            <div class="invalid-feedback">
                                                <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="kartu_keluarga">Kartu Keluarga (JPG/JPEG/PNG)</label>
                                        <input type="file" class="form-control @error('kartu_keluarga') is-invalid @enderror" name="kartu_keluarga" id="kartu_keluarga" />
                                        @error('kartu_keluarga')
                                            <div class="invalid-feedback">
                                                <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="ktp_wali">KTP Wali (JPG/JPEG/PNG)</label>
                                        <input type="file" class="form-control @error('ktp_wali') is-invalid @enderror" name="ktp_wali" id="ktp_wali" />
                                        @error('ktp_wali')
                                            <div class="invalid-feedback">
                                                <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="ijazah_tk">Ijazah TK (JPG/JPEG/PNG)</label>
                                        <input type="file" class="form-control @error('ijazah_tk') is-invalid @enderror" name="ijazah_tk" id="ijazah_tk" />
                                        @error('ijazah_tk')
                                            <div class="invalid-feedback">
                                                <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>
                                
                                <div class="col-6 d-none">
                                    <div class="form-group">
                                        <label for="basicInput">Status Siswa</label> <span class="text-danger">*</span>
                                        <select name="status_siswa" class="form-control @error('status_siswa') is-invalid @enderror">
                                            <option value="">-- Pilih --</option>
                                            <option value="Diproses" selected>Diproses</option>
                                            <option value="Diterima">Diterima</option>
                                            <option value="Ditolak">Ditolak</option>
                                        </select>
                                        @error('status_siswa')
                                            <div class="invalid-feedback">
                                                <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>
                              
                            </div>
                            <button class="btn btn-primary" type="submit">Simpan</button>
                            <a href="{{route('backend-pengguna-murid.index')}}" class="btn btn-warning">Batal</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection