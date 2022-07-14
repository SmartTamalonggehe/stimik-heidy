@extends('penyewa.layouts.default')
@section('title', 'Dashboard')

@section('content')
    <div class="col-sm-12">
        <div class="card">
            <div class="card-header pb-0">
                <h5>Selamat datang {{ auth()->user()->first_name }} {{ auth()->user()->last_name }} ...</h5>
            </div>
            <div class="card-body">
                <h6 class="text-center">Jadwal Sewa Gedung</h6>
                <div class="table-responsive">
                    <table id="schedule-table"></table>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')

@endsection
