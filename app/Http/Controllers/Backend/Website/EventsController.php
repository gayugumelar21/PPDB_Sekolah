<?php

namespace App\Http\Controllers\Backend\Website;

use App\Http\Controllers\Controller;
use App\Models\Events;
use Illuminate\Http\Request;
use App\Http\Requests\EventRequest;
use ErrorException;
use Session;
use Str;

class EventsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $event = Events::all();
        return view('backend.website.content.event.index', compact('event'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.website.content.event.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(EventRequest $request)
    {
        try {
            // Validasi input file
            $validatedData = $request->validate([
                'title'         => 'required|string|max:255',
                'desc'          => 'required|string',
                'content'       => 'required|string',
                'acara'         => 'nullable|string',
                'lokasi'        => 'nullable|string',
                'thumbnail'     => 'required|image|mimes:jpeg,png,jpg,gif|max:2048', // Validasi untuk thumbnail
            ]);
            
            // Proses upload thumbnail
            $destinationPath = 'foto_diri/'; // Nama direktori dalam folder 'public'
        
            if ($request->hasFile('thumbnail')) {
                $file = $request->file('thumbnail');
                $fileName = time() . '_' . $file->getClientOriginalName();
                $file->move(public_path($destinationPath), $fileName);
                $validatedData['thumbnail'] = $destinationPath . $fileName; // Path relatif untuk disimpan di database
            }
        
            // Create Slug
            $slug = Str::slug($request->title);

            // Simpan data event
            $event = new Events;
            $event->title       = $request->title;
            $event->slug        = $slug;
            $event->desc        = $request->desc;
            $event->content     = $request->content;
            $event->thumbnail   = $validatedData['thumbnail'];
            $event->acara       = $request->acara;
            $event->lokasi      = $request->lokasi;
            $event->save();

            Session::flash('success','Event Berhasil ditambah !');
            return redirect()->route('backend-event.index');
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
        $event = Events::find($id);
        return view('backend.website.content.event.edit', compact('event'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(EventRequest $request, $id)
    {
        try {
            // Validasi input file
            $validatedData = $request->validate([
                'title'         => 'required|string|max:255',
                'desc'          => 'required|string',
                'content'       => 'required|string',
                'acara'         => 'nullable|string',
                'lokasi'        => 'nullable|string',
                'is_Active'     => 'required|boolean',
                'thumbnail'     => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048', // Validasi untuk thumbnail
            ]);
            
            // Proses upload thumbnail
            $destinationPath = 'foto_diri/'; // Nama direktori dalam folder 'public'
        
            if ($request->hasFile('thumbnail')) {
                $file = $request->file('thumbnail');
                $fileName = time() . '_' . $file->getClientOriginalName();
                $file->move(public_path($destinationPath), $fileName);
                $validatedData['thumbnail'] = $destinationPath . $fileName; // Path relatif untuk disimpan di database
            }
        
            // Update data event
            $event = Events::find($id);
            $event->title       = $validatedData['title'];
            $event->desc        = $validatedData['desc'];
            $event->content     = $validatedData['content'];
            $event->thumbnail   = $validatedData['thumbnail'] ?? $event->thumbnail; // Update jika ada thumbnail baru
            $event->acara       = $validatedData['acara'] ?? $event->acara;
            $event->is_Active   = $validatedData['is_Active'];
            $event->lokasi      = $validatedData['lokasi'] ?? $event->lokasi;
            $event->save();

            Session::flash('success','Event Berhasil diupdate !');
            return redirect()->route('backend-event.index');
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
