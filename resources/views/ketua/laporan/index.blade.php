@extends('ketua.layouts.default')

@php
$folder = 'laporan';
$title = 'Laporan Sewa Gedung';
@endphp

@section('title', $title)

@section('judul', $title)

@section('content')
    <form action="">
        <div class="row">
            <div class="col-12 col-md-10">
                {{-- pilih tahun --}}
                <select name="year" id="year" class="form-select mb-1">
                    <option value="20">Pilih Tahun</option>
                    @php
                        $tahun = date('Y');
                    @endphp
                    @for ($i = $tahun; $i >= $tahun - 5; $i--)
                        <option value="{{ $i }}">{{ $i }}</option>
                    @endfor
                </select>
            </div>
            <div class="col-12 col-md-2">
                <div class="d-grid col-12 mx-auto">
                    <button class="btn btn-primary" type="button">Cetak</button>
                </div>
            </div>
        </div>
    </form>
    <div class="col-sm-12">

        <div class="card">
            <div class="card-body">
                <div id="laporan-schedule"></div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
@endsection
