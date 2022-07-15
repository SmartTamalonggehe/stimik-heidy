<?php

namespace App\Http\Controllers\ADMIN;

use App\Models\Tenant;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class TenantController extends Controller
{
    // validation
    protected function spartaValidation($request, $id = "")
    {
        $required = "";
        if ($id == "") {
            $required = "required";
        }
        $rules = [
            'ktp_picture' => $required . '|mimes:jpeg,jpg,png,gif|max:2048',
        ];

        $messages = [
            'ktp_picture.required' => 'Gambar harus diisi.',
            'ktp_picture.mimes' => 'Format gambar harus jpg, png, gif.',
            'ktp_picture.max' => 'Ukuran gambar maksimal 2MB.',
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
        $data = Tenant::latest()->get();
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
        $image = $data_req['ktp_picture'];
        // save image to folder tenant
        $imageName = time() . '.' . $image->getClientOriginalExtension();
        // storage file image
        Storage::putFileAs('/public/tenant', $image, $imageName);
        // get APP_URL from .env
        $url = env('APP_URL');

        $data_req['ktp_picture'] = "$url/storage/tenant/$imageName";
        // data_req remove district_id
        unset($data_req['district_id']);
        // add status in data_req
        $data_req['status'] = 'inactive';
        Tenant::create($data_req);
        $pesan = [
            'judul' => 'Berhasil',
            'type' => 'success',
            'pesan' => 'Data berhasil ditambahkan.',
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
        $data = Tenant::with(['subDistrict' => function ($sub_distirct) {
            $sub_distirct->with('district');
        }])->find($id);
        return response()->json($data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Tenant::with(['subDistrict' => function ($sub_distirct) {
            $sub_distirct->with('district');
        }])->findOrFail($id);
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
        $find_data = Tenant::find($id);
        $data_image = $find_data->ktp_picture;
        // get APP_URL from .env
        $url = env('APP_URL');

        // save image if exist
        if ($request->hasFile('image')) {
            //    delete image
            $img = str_replace(env('APP_URL') . '/storage', "", $data_image);
            Storage::delete('public/' . $img);
            //   save image
            $image = $data_req['ktp_picture'];
            // save image to folder tenant
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            // storage file image
            Storage::putFileAs('/public/tenant', $image, $imageName);
            $data_req['ktp_picture'] = "$url/storage/tenant/$imageName";
        }
        // data_req remove district_id
        unset($data_req['district_id']);
        $find_data->update($data_req);
        $pesan = [
            'judul' => 'Berhasil',
            'type' => 'success',
            'pesan' => 'Data berhasil diperbaharui.',
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
        $data = Tenant::findOrFail($id);
        // delete file image
        $img = $data->ktp_picture;
        $img = str_replace(env('APP_URL') . '/storage', "", $img);
        Storage::delete('public/' . $img);
        // delete data
        $data->delete();
        $pesan = [
            'judul' => 'Berhasil',
            'type' => 'success',
            'pesan' => 'Data berhasil dihapus.',
        ];
        return response()->json($pesan);
    }
}
