<?php

namespace App\Http\Controllers\Backend\Pengguna;

use App\Http\Controllers\Controller;
use App\Models\Persyaratanppdb;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use ErrorException;
use Session;
use DB;
use Validator;

class InputSyaratController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // return view('backend.pengguna.murid.createsyarat');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.pengguna.murid.createsyarat');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validasi input
        $validatedData = $request->validate([
            'nama' => 'required|string|max:255',
            'jenis_kelamin' => 'required|string|max:255',
            'status_siswa' => 'required|string|max:255',
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
            'foto_diri' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            'akta_kelahiran' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'kartu_keluarga' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'ktp_wali' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'ijazah_tk' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);
        
        // Proses upload file
        $destinationPath = 'foto_diri/'; // Lokasi penyimpanan file
        
        // Proses upload foto_diri
        if ($request->hasFile('foto_diri')) {
            $file = $request->file('foto_diri');
            $fileName = time() . '_' . $file->getClientOriginalName();
            $file->move(public_path($destinationPath), $fileName);
            $validatedData['foto_diri'] = $destinationPath . $fileName;
        }
        
        // Proses upload akta_kelahiran
        if ($request->hasFile('akta_kelahiran')) {
            $file = $request->file('akta_kelahiran');
            $fileName = time() . '_' . $file->getClientOriginalName();
            $file->move(public_path($destinationPath), $fileName);
            $validatedData['akta_kelahiran'] = $destinationPath . $fileName;
        }
        
        // Proses upload kartu_keluarga
        if ($request->hasFile('kartu_keluarga')) {
            $file = $request->file('kartu_keluarga');
            $fileName = time() . '_' . $file->getClientOriginalName();
            $file->move(public_path($destinationPath), $fileName);
            $validatedData['kartu_keluarga'] = $destinationPath . $fileName;
        }
        
        // Proses upload ktp_wali
        if ($request->hasFile('ktp_wali')) {
            $file = $request->file('ktp_wali');
            $fileName = time() . '_' . $file->getClientOriginalName();
            $file->move(public_path($destinationPath), $fileName);
            $validatedData['ktp_wali'] = $destinationPath . $fileName;
        }
        
        // Proses upload ijazah_tk
        if ($request->hasFile('ijazah_tk')) {
            $file = $request->file('ijazah_tk');
            $fileName = time() . '_' . $file->getClientOriginalName();
            $file->move(public_path($destinationPath), $fileName);
            $validatedData['ijazah_tk'] = $destinationPath . $fileName;
        }
        
        // Menyimpan data ke dalam database
        Persyaratanppdb::create($validatedData);
        


    
        // Redirect atau kembalikan respon
        return redirect()->back()->with('success', 'Data berhasil disimpan');
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
        //
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
