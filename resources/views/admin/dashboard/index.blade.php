@extends('admin.layouts.default')
@section('title', 'Dashboard')

@section('content')
    <div class="col-sm-12">
        <div class="card">
            <div id="chart-year"></div>
        </div>
    </div>
@endsection

@section('scripts')
    @vite('resources/js/my-chart.js')
@endsection
