@extends('admin.layouts.default')

@php
$folder = 'sub-district';
$title = 'Kecamatan';
@endphp

@section('title', $title)

@section('judul', $title)

@section('css')
    <link rel="stylesheet" href="{{ asset('assets/js/tom-select/dist/css/tom-select.bootstrap5.css') }}">
@endsection

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
    <script src="{{ asset('assets/js/tom-select/dist/js/tom-select.complete.js') }}"></script>
    @vite('resources/js/my-crud.js')
@endsection
