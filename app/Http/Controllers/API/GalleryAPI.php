<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Gallery;
use Illuminate\Http\Request;

class GalleryAPI extends Controller
{
    public function index()
    {
        $data = Gallery::all();
        return response()->json($data);
    }
}
