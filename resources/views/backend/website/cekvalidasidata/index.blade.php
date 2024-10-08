@extends('layouts.backend.app')

@section('title')
    Cek & Validasi Data
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
                    <h2> Cek & Validasi Data</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="content-body">
        <div class="row">
            <div class="col-12">
                <section>
                    <div class="row">
                        <div class="col-12">
                            <div class="card">

                                <div class="card-datatable">
                                    <table class="dt-responsive table">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th>Nama</th>
                                                <th>Tanggal Lahir</th>
                                                <th>Umur</th>
                                                <th>Status Siswa</th>
                                                <th>Action</th>
                                                <th></th>
                                            </tr>
                                        </thead>    
                                        <tbody>
                                            @php
                                                use Carbon\Carbon; // Import Carbon jika belum ada
                                                $counter = 1;
                                            @endphp
                                            @foreach($persyaratan as $data)
                                            <tr>
                                                <td>{{ $counter++ }}</td>
                                                <td>{{ $data->nama }}</td>
                                                <td>{{ Carbon::parse($data->tanggal_lahir)->translatedFormat('d F Y') }}</td> <!-- Format tanggal -->
                                                <td>{{ Carbon::parse($data->tanggal_lahir)->age }} tahun</td> <!-- Hitung umur -->
                                                <td>{{ $data->status_siswa }}</td>
                                                <td>
                                                    <a href="{{ route('backend-pengguna-murid-cekdata.edit', $data->id) }}" class="btn btn-success btn-sm">Cek Data</a>
                                                </td>
                                            </tr>
                                            @endforeach
                                        </tbody>


                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>
@endsection
