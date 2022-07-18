@extends('ketua.layouts.default')
@section('title', 'Dashboard')

@section('content')
    <div class="col-sm-12">
        <div class="card">
            {{-- pilih tahun --}}
            <select name="tahun" id="tahun" class="form-control">
                <option value="">Pilih Tahun</option>
                @php
                    $tahun = date('Y');
                @endphp
                @for ($i = $tahun; $i >= $tahun - 5; $i--)
                    <option value="{{ $i }}">{{ $i }}</option>
                @endfor
            </select>
            <div id="chart-year"></div>
        </div>
    </div>
@endsection

@section('scripts')
    @vite('resources/js/my-chart.js')
@endsection
