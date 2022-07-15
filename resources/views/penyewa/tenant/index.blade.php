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
        @if ($user_tenant)
            <div class="card">
                {{-- sesion --}}
                @if (session('alert'))
                    <div class="alert alert-warning text-dark">
                        {{ session('alert') }}
                    </div>
                @endif
                <div class="row" id="card-tenant" data-id="{{ $user_tenant->id }}">

                </div>
            </div>
        @else
            <div class="card">
                <div class="card-body">

                    <div>
                        <p>Data diri anda belum terdaftar. Silahkan melakukan pendaftaran dengan mengklik tombol data di
                            atas.</p>
                    </div>
                </div>
            </div>
        @endif
        @include("penyewa.$folder.form")
    </div>
@endsection

@section('scripts')
    @vite('resources/js/my-crud.js')
    <script src="{{ asset('assets/js/select2.full.js') }}"></script>
@endsection
