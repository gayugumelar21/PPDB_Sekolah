<?php

namespace App\Http\Controllers\Backend\Website;

use App\Http\Controllers\Controller;
use App\Models\Persyaratanppdb;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Requests\CekValidasiDataRequest;
use ErrorException;
use Session;
use DB;

class CekValidasiDataController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // KERJAAN
        $persyaratanppdb = Persyaratanppdb::all();
        return view('backend.website.cekvalidasidata.index', ['persyaratan' => $persyaratanppdb]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        // echo "test";
        $data = Persyaratanppdb::find($id);
        return view('backend.pengguna.murid.cekdata', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        // echo "test update";     
        $persyaratanPpdb = Persyaratanppdb::find($id);

        if (is_null($persyaratanPpdb)) {
            return response()->json(['message' => 'Data not found'], 404);
        }

        $validated = $request->validate([
            'nama' => 'sometimes|required|string|max:255',
            'jenis_kelamin' => 'sometimes|required|in:Laki-laki,Perempuan',
            'status_siswa' => 'sometimes|required|in:Diproses,Diterima,Ditolak',
            'nama_panggilan' => 'required|string|max:255',
            'tempat_lahir' => 'required|string|max:255',
            'tanggal_lahir' => 'required|date',
            'agama' => 'required|string|max:255',
            'anak_ke' => 'required|integer',
            'dari_bersaudara' => 'required|integer',
            'status_anak' => 'required|string|max:255',
            'alamat' => 'required|string|max:255',
            'no_hp' => 'required|string|max:15',
            'nama_sekolah' => 'required|string|max:255',
            'alamat_sekolah' => 'required|string|max:255',
            'nama_lengkap_ayah' => 'required|string|max:255',
            'nama_lengkap_ibu' => 'required|string|max:255',
            'alamat_ayah' => 'required|string|max:255',
            'alamat_ibu' => 'required|string|max:255',
            'pekerjaan_ayah' => 'required|string|max:255',
            'pekerjaan_ibu' => 'required|string|max:255',
            'pendidikan_terakhir_ayah' => 'required|string|max:255',
            'pendidikan_terakhir_ibu' => 'required|string|max:255',
            'penghasilan_perbulan_ayah' => 'required|numeric',
            'penghasilan_perbulan_ibu' => 'required|numeric',
        ]);

        $persyaratanPpdb->update($validated);

        // return response()->json($persyaratanPpdb); 
        // Redirect atau kembalikan respon
        return redirect()->back()->with('success', 'Data berhasil disimpan');    
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
