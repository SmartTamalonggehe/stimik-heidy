@extends('penyewa.layouts.default')
@section('title', 'Dashboard')

@section('content')
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h5>Selamat datang ...</h5>
            </div>
        </div>
    </div>
    <div class="col-sm-12">
        <div class="card">
            <div class="card-body">
                <h6 class="text-center">Jadwal Sewa Gedung</h6>
                <div id="schedule-table"></div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')

@endsection
