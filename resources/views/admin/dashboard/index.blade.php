@extends('admin.layouts.default')
@section('title', 'Dashboard')

@section('content')
    <div class="col-sm-12">
        {{-- pilih tahun --}}
        <select name="tahun" id="tahun" class="form-select mb-1">
            <option value="">Pilih Tahun</option>
            @php
                $tahun = date('Y');
            @endphp
            @for ($i = $tahun; $i >= $tahun - 5; $i--)
                <option value="{{ $i }}">{{ $i }}</option>
            @endfor
        </select>
        <div class="card">
            <div id="chart-year"></div>
        </div>
    </div>
@endsection

@section('scripts')
    <script src="{{ mix('js/my-chart.js') }}"></script>
@endsection
