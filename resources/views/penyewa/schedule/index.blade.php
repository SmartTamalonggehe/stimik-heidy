@extends('penyewa.layouts.default')

@php
$folder = 'schedule';
$title = 'Sewa Gedung';
$user = auth()->user()->tenant;
@endphp

@section('title', $title)

@section('judul', $title)

@section('css')

@endsection

@section('btn-tambah')
    <button class="btn btn-primary" id="btn-tambah">Tambah Data</button>
@endsection

@section('content')
    <div id="route" style="display: none"><?= $folder ?></div>
    <div class="col-sm-12">
        <div class="card">
            <div class="card-body">
                <div class="mb-3">
                    <ul>
                        <li>
                            No. Rekening yang dapat digunakan untuk pembayaran sewa gedung: <br />
                            <ul className="my-ul">
                                <li>
                                    <b>Bank Mandiri</b> <br />
                                    No. Rekening: <b>1540016698601</b> <br />
                                    Atas Nama: <b>Amelia</b>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <p>Riwayat pesanan gedung {{ $user->first_name }} {{ $user->last_name }}</p>
                <div id="history-{{ $folder }}-table" data-id="{{ $user->id }}"></div>
            </div>
        </div>
    </div>
    <div class="col-sm-12">
        <div class="card">
            <div class="card-body">
                <p>Silahkan mencari jadwal sewa gedung {{ $title }}</p>
                <div id="{{ $folder }}-table"></div>
            </div>
        </div>
    </div>
    <div class="col-12">
        @include("penyewa.$folder.form")
        @include("penyewa.$folder.form-upload")
    </div>
@endsection

@section('scripts')
    <script src="{{ mix('js/my-crud.js') }}"></script>

@endsection
