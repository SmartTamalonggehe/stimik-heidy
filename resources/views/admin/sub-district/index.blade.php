@extends('admin.layouts.default')

@php
$folder = 'sub-district';
$title = 'Kecamatan';
@endphp

@section('title', $title)

@section('judul', $title)

@section('btn-tambah')
    <button class="btn btn-primary" id="btn-tambah">Tambah Data</button>
@endsection

@section('content')
    <div id="route" style="display: none"><?= $folder ?></div>
    <div class="col-sm-12">
        <div class="card">
            <div class="card-body">
                <p>Silahkan menambah, merubah dan menghapus data {{ $title }}</p>
                <div id="wrapper"></div>
            </div>
        </div>
        @include("admin.$folder.form")
    </div>
@endsection

@section('scripts')
    @vite('resources/js/my-crud.js')
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
@endsection
