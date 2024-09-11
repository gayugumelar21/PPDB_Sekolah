@extends('layouts.backend.app')

@section('title')
   Cek Data
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
                    <h2> Cek Data PPDB - {{$data->nama}}</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="content-body">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header header-bottom">
                        <!-- <h4>Edit Murid</h4> -->
                    </div>
                    <div class="card-body">
                        <form action=" {{route('backend-pengguna-murid-status.update', $data->id)}} " method="post" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="row">
                            
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Nama Lengkap</label> <span class="text-danger">*</span>
                                        <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" value=" {{$data->nama}} " placeholder="Nama" readonly />
                                        @error('name')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Nama Panggilan</label> <span class="text-danger">*</span>
                                        <input type="text" class="form-control @error('name') is-invalid @enderror" name="nama_panggilan" value=" {{$data->nama_panggilan}} " placeholder="Nama Panggilan" readonly/>
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
                                        <input type="text" class="form-control @error('tempat_lahir') is-invalid @enderror" name="tempat_lahir" value=" {{ $data->tempat_lahir }} " placeholder="Tempat Lahir" readonly/>
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
                                        <input type="date" class="form-control @error('tanggal_lahir') is-invalid @enderror" id="tanggalLahir" name="tanggal_lahir" value="{{ $data->tanggal_lahir }}" readony/>
                                        @error('tanggal_lahir')
                                            <div class="invalid-feedback">
                                                <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                <div class="form-group">
                                    <label for="jenis_kelamin">Jenis Kelamin</label> <span class="text-danger">*</span>
                                    <input type="text" class="form-control @error('jenis_kelamin') is-invalid @enderror" name="jenis_kelamin" value=" {{$data->jenis_kelamin}} " placeholder="Jenis Kelamin" readonly />
                                </div>
                                </div>

                                <div class="col-6">
                                <div class="form-group">
                                    <label for="agama">Agama</label> <span class="text-danger">*</span>
                                    <input type="text" class="form-control @error('agama') is-invalid @enderror" name="agama" value=" {{$data->agama}} " placeholder="Agama" readonly />
                                </div>
                                </div>


                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Anak Ke</label> <span class="text-danger">*</span>
                                        <input type="text" class="form-control @error('anak_ke') is-invalid @enderror" name="anak_ke" value=" {{$data->anak_ke}} " placeholder="Anak Ke" readonly/>
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
                                        <input type="text" class="form-control @error('dari_bersaudara') is-invalid @enderror" name="dari_bersaudara" value=" {{$data->dari_bersaudara}} " placeholder="Dari ... Bersaudara" readonly/>
                                        @error('dari_bersaudara')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                <div class="form-group">
                                    <label for="agama">Status Anak Dalam Keluarga</label> <span class="text-danger">*</span>
                                    <input type="text" class="form-control @error('status_anak') is-invalid @enderror" name="status_anak" value=" {{$data->status_anak}} " placeholder="Status Anak" readonly />
                                </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="basicInput">Alamat</label> <span class="text-danger">*</span>
                                        <input type="text" class="form-control @error('alamat') is-invalid @enderror" name="alamat" value=" {{$data->alamat}} " placeholder="Alamat Siswa" readonly/>
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
                                        <input type="text" class="form-control @error('no_hp') is-invalid @enderror" name="no_hp" value=" {{$data->no_hp}} " placeholder="No Hp" readonly/>
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
                                        <input type="text" class="form-control @error('nama_sekolah') is-invalid @enderror" name="nama_sekolah" value=" {{$data->nama_sekolah}} " placeholder="Nama Sekolah RA/TK Asal" readonly/>
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
                                        <input type="text" class="form-control @error('alamat_sekolah') is-invalid @enderror" name="alamat_sekolah" value=" {{$data->alamat_sekolah}} " placeholder="Alamat Sekolah RA/TK Asal" readonly/>
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
                                        <input type="text" class="form-control @error('nama_lengkap_ayah') is-invalid @enderror" name="nama_lengkap_ayah" value=" {{$data->nama_lengkap_ayah}} " placeholder="Nama Lengkap Ayah" readonly/>
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
                                        <input type="text" class="form-control @error('nama_lengkap_ibu') is-invalid @enderror" name="nama_lengkap_ibu" value=" {{$data->nama_lengkap_ibu}} " placeholder="Nama Lengkap Ibu" readonly/>
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
                                        <input type="text" class="form-control @error('alamat_ayah') is-invalid @enderror" name="alamat_ayah" value=" {{$data->alamat_ayah}} " placeholder="Alamat Ayah" readonly/>
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
                                        <input type="text" class="form-control @error('alamat_ibu') is-invalid @enderror" name="alamat_ibu" value=" {{$data->alamat_ibu}} " placeholder="Alamat Ibu" readonly/>
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
                                        <input type="text" class="form-control @error('pekerjaan_ayah') is-invalid @enderror" name="pekerjaan_ayah" value=" {{$data->pekerjaan_ayah}} " placeholder="Pekerjaan Ayah" readonly/>
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
                                        <input type="text" class="form-control @error('pekerjaan_ibu') is-invalid @enderror" name="pekerjaan_ibu" value=" {{$data->pekerjaan_ibu}} " placeholder="Pekerjaan Ibu" readonly/>
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
                                        <input type="text" class="form-control @error('pendidikan_terakhir_ayah') is-invalid @enderror" name="pendidikan_terakhir_ayah" value=" {{$data->pendidikan_terakhir_ayah}} " placeholder="Pendidikan Terakhir Ayah" readonly/>
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
                                        <input type="text" class="form-control @error('pendidikan_terakhir_ibu') is-invalid @enderror" name="pendidikan_terakhir_ibu" value=" {{$data->pendidikan_terakhir_ibu}} " placeholder="Pendidikan Terakhir Ibu" readonly/>
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
                                        <input type="text" class="form-control @error('penghasilan_perbulan_ayah') is-invalid @enderror" name="penghasilan_perbulan_ayah" value=" {{$data->penghasilan_perbulan_ayah}} " placeholder="Penghasilan Perbulan Ayah" readonly/>
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
                                        <input type="text" class="form-control @error('penghasilan_perbulan_ibu') is-invalid @enderror" name="penghasilan_perbulan_ibu" value=" {{$data->penghasilan_perbulan_ibu}} " placeholder="Penghasilan Perbulan Ibu" readonly/>
                                        @error('penghasilan_perbulan_ibu')
                                            <div class="invalid-feedback">
                                            <strong>{{ $message }}</strong>
                                            </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="foto_diri">Foto Diri</label> <span class="text-danger">*</span>
                                        <div>
                                            @if($data->foto_diri)
                                                <img src="{{ asset($data->foto_diri) }}" alt="Foto Diri" class="img-fluid" style="max-width: 200px; height: auto;"/>
                                            @else
                                                <p>Tidak ada foto</p>
                                            @endif
                                        </div>
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="akta_kelahiran">Akta Kelahiran</label>
                                        <div>
                                            @if($data->akta_kelahiran)
                                                <img src="{{ asset($data->akta_kelahiran) }}" alt="Akta Kelahiran" class="img-fluid" style="max-width: 200px; height: auto;"/>
                                            @else
                                                <p>Tidak ada akta kelahiran</p>
                                            @endif
                                        </div>
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="kartu_keluarga">Kartu Keluarga</label>
                                        <div>
                                            @if($data->kartu_keluarga)
                                                <img src="{{ asset($data->kartu_keluarga) }}" alt="Kartu Keluarga" class="img-fluid" style="max-width: 200px; height: auto;"/>
                                            @else
                                                <p>Tidak ada kartu keluarga</p>
                                            @endif
                                        </div>
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="ktp_wali">KTP Wali</label>
                                        <div>
                                            @if($data->ktp_wali)
                                                <img src="{{ asset($data->ktp_wali) }}" alt="KTP Wali" class="img-fluid" style="max-width: 200px; height: auto;"/>
                                            @else
                                                <p>Tidak ada KTP wali</p>
                                            @endif
                                        </div>
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="ijazah_tk">Ijazah TK</label>
                                        <div>
                                            @if($data->ijazah_tk)
                                                <img src="{{ asset($data->ijazah_tk) }}" alt="ijazah_tk" class="img-fluid" style="max-width: 200px; height: auto;"/>
                                            @else
                                                <p>Tidak ada ijazah_tk</p>
                                            @endif
                                        </div>
                                    </div>
                                </div>

                                <div class="col-6">
                                <div class="form-group">
                                    <label for="status_siswa">Status Siswa</label> <span class="text-danger">*</span>
                                    <select class="form-control @error('status_siswa') is-invalid @enderror" name="status_siswa">
                                        <option value="">Pilih Status Siswa</option>
                                        <option value="Diproses" {{ $data->status_siswa == 'Diproses' ? 'selected' : '' }}>Diproses</option>
                                        <option value="Diterima" {{ $data->status_siswa == 'Diterima' ? 'selected' : '' }}>Diterima</option>
                                        <option value="Ditolak" {{ $data->status_siswa == 'Ditolak' ? 'selected' : '' }}>Ditolak</option>
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