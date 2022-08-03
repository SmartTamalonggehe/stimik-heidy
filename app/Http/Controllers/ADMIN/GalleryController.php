<?php

namespace App\Http\Controllers\ADMIN;

use App\Models\Gallery;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

use Illuminate\Support\Facades\File;

// use File;

class GalleryController extends Controller
{
    // validation
    protected function spartaValidation($request, $id = "")
    {
        $required = "";
        if ($id == "") {
            $required = "required";
        }
        $rules = [
            'image' => $required . '|mimes:jpeg,jpg,png,gif|max:2048',
        ];

        $messages = [
            'image.required' => 'Gambar harus diisi.',
            'image.mimes' => 'Format gambar harus jpg, png, gif.',
            'image.max' => 'Ukuran gambar maksimal 2MB.',
        ];
        $validator = Validator::make($request, $rules, $messages);

        if ($validator->fails()) {
            $pesan = [
                'judul' => 'Gagal',
                'type' => 'error',
                'pesan' => $validator->errors()->all(),
            ];
            return response()->json($pesan);
        }
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Gallery::latest()->get();
        return response()->json($data);
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
        $data_req = $request->all();
        $validate = $this->spartaValidation($data_req);
        if ($validate) {
            return $validate;
        }
        $image = $data_req['image'];
        // save image to folder galery
        $imageName = time() . '.' . $image->getClientOriginalExtension();
        // storage file image
        // Storage::putFileAs('my_images/gallery', $image, "$imageName");
        // destination path
        $destinationPath = public_path('/my_storage/gallery');
        // move image to destination path
        $image->move($destinationPath, $imageName);

        // get APP_URL from .env
        $url = env('APP_URL');

        $data_req['image'] = "$url/my_storage/gallery/$imageName";
        Gallery::create($data_req);
        $pesan = [
            'judul' => 'Berhasil',
            'type' => 'success',
            'pesan' => 'Galery berhasil ditambahkan.',
        ];
        return response()->json($pesan);
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
        $data = Gallery::findOrFail($id);
        return response()->json($data);
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
        $data_req = $request->all();
        // return $data_req;
        $validate = $this->spartaValidation($data_req, $id);
        if ($validate) {
            return $validate;
        }
        // find data by id
        $find_data = Gallery::find($id);
        $data_image = $find_data->image;

        // save image if exist
        if ($request->hasFile('image')) {
            //    delete image
            $img = str_replace(env('APP_URL') . '/', "", $data_image);
            File::delete($img);

            //   save image
            $image = $data_req['image'];
            // save image to folder galery
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            // destination path
            $destinationPath = public_path('/my_storage/gallery');
            // move image to destination path
            $image->move($destinationPath, $imageName);
            // get APP_URL from .env
            $url = env('APP_URL');

            $data_req['image'] = "$url/my_storage/gallery/$imageName";
        }
        $find_data->update($data_req);
        $pesan = [
            'judul' => 'Berhasil',
            'type' => 'success',
            'pesan' => 'Galery berhasil diperbaharui.',
        ];
        return response()->json($pesan);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = Gallery::findOrFail($id);
        // delete file image
        $img = $data->image;
        $img = str_replace(env('APP_URL') . '/', "", $img);
        // remove file image
        File::delete($img);

        // delete data
        $data->delete();
        $pesan = [
            'judul' => 'Berhasil',
            'type' => 'success',
            'pesan' => 'Galery berhasil dihapus.',
        ];
        return response()->json($pesan);
    }
}
