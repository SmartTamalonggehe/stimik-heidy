@extends('admin.layouts.default')

@php
$folder = 'schedule';
$title = 'Jadwal Sewa';
@endphp

@section('title', $title)

@section('judul', $title)

@section('btn-tambah')
    {{-- <button class="btn btn-primary" id="btn-tambah">Tambah Data</button> --}}
@endsection

@section('content')
    <div id="route" style="display: none"><?= $folder ?></div>
    <div class="col-sm-12">
        <div class="card">
            <div class="card-body">
                <p>Silahkan mengubah status {{ $title }}</p>
                <div id="{{ $folder }}-table"></div>
            </div>
        </div>
        @include("admin.$folder.form")
    </div>
@endsection

@section('scripts')
    @vite('resources/js/my-crud.js')
@endsection
