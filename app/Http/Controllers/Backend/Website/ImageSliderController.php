<?php

namespace App\Http\Controllers\Backend\Website;

use App\Http\Controllers\Controller;
use App\Http\Requests\ImageSliderRequest;
use ErrorException;
use App\Models\ImageSlider;
use Illuminate\Http\Request;
use Session;

class ImageSliderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $image = ImageSlider::all();
        return view('backend.website.content.imageSlider.index', compact('image'));
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
    public function store(ImageSliderRequest $request)
    {
        try {
            // Proses upload image
            $destinationPath = 'foto_diri/'; // Lokasi penyimpanan file

            if ($request->hasFile('image')) {
                $image = $request->file('image');
                $nama_image = time() . "_" . $image->getClientOriginalName();
                $image->move(public_path($destinationPath), $nama_image);
            }

            $imageSlider = new ImageSlider;
            $imageSlider->image     = $nama_image;
            $imageSlider->desc      = $request->desc;
            $imageSlider->title     = $request->title;
            $imageSlider->urutan    = $request->urutan;
            $imageSlider->save();

            Session::flash('success', 'Gambar Slider Berhasil ditambah!');
            return redirect()->route('backend-imageslider.index');

        } catch (ErrorException $e) {
            throw new ErrorException($e->getMessage());
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $image = ImageSlider::find($id);
        return view('backend.website.content.imageSlider.edit', compact('image'));
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
        try {
            // Proses upload image jika ada
            $destinationPath = 'foto_diri/'; // Lokasi penyimpanan file

            if ($request->hasFile('image')) {
                $image = $request->file('image');
                $nama_image = time() . "_" . $image->getClientOriginalName();
                $image->move(public_path($destinationPath), $nama_image);
            }

            $imageSlider = ImageSlider::find($id);
            $imageSlider->image     = $nama_image ?? $imageSlider->image;
            $imageSlider->title     = $request->title ?? $imageSlider->title;
            $imageSlider->desc      = $request->desc ?? $imageSlider->desc;
            $imageSlider->urutan    = $request->urutan ?? $imageSlider->urutan;
            $imageSlider->is_active = $request->is_active ?? $imageSlider->is_active;
            $imageSlider->save();

            Session::flash('success', 'Gambar Slider Berhasil diupdate!');
            return redirect()->route('backend-imageslider.index');

        } catch (ErrorException $e) {
            throw new ErrorException($e->getMessage());
        }
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
