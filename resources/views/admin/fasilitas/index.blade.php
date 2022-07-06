@extends('admin.layouts.default')

@php
$folder = 'fasilitas';
@endphp

@section('title', $folder)

@section('judul', $folder)

@section('btn-tambah')
    <button class="btn btn-primary" id="btn-tambah">Tambah Data</button>
@endsection

@section('content')
    <div id="route" style="display: none"><?= $folder ?></div>
    <div class="col-sm-12">
        <div class="card">
            <div class="card-body">
                <p>Silahkan menambah, merubah dan menghapus data {{ $folder }}</p>
                <div id="wrapper"></div>
            </div>
        </div>
        @include("admin.$folder.form")
    </div>
@endsection

@section('scripts')
    @vite('resources/js/my-crud.js')
@endsection
