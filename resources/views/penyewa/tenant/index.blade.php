@extends('penyewa.layouts.default')

@php
$folder = 'tenant';
$title = 'Data Diri';

$user_tenant = auth()->user()->tenant;
@endphp

@section('title', $title)

@section('judul', $title)

@section('btn-tambah')
    @if (!$user_tenant)
        <button class="btn btn-primary" id="btn-tambah">Tambah Data</button>
    @endif
@endsection

@section('content')
    <div id="route" style="display: none"><?= $folder ?></div>
    <div class="col-sm-12">
        <div class="card">
            <div class="card-body">
                @if ($user_tenant)
                    <div>Data Diri</div>
                @else
                    <div>
                        <p>Data diri anda belum terdaftar. Silahkan melakukan pendaftaran dengan mengklik tombol data di
                            atas.</p>
                    </div>
                @endif
            </div>
        </div>
        @include("penyewa.$folder.form")
    </div>
@endsection

@section('scripts')
    @vite('resources/js/my-crud.js')
    <script src="{{ asset('assets/js/select2.full.js') }}"></script>
@endsection
