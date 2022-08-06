@php
use Carbon\Carbon;
@endphp
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cetak Jadwal Sewa</title>

    <style>
        /* reset */
        body {
            margin: 0 10px;
            padding: 0;
            box-sizing: border-box;
            font-size: 12px;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        p {
            margin: 0;
            padding: 0;
        }

        ol,
        ul {
            margin: 0;
            padding-left: 20px
        }

        .text-center {
            text-align: center;
        }

        .text-right {
            text-align: right;
        }

        .text-underline {
            text-decoration: underline;
        }

        .mt-1 {
            margin-top: 0.3em;
        }

        .mt-2 {
            margin-top: 0.5em;
        }

        .mt-3 {
            margin-top: 1em;
        }

        .mt-4 {
            margin-top: 1.5em;
        }

        hr {
            margin: 0;
        }

        hr.garis_surat {
            border: 1px solid #000;
            height: 1px;
            background-color: #000;
            margin-bottom: 2px
        }

        .table {
            border-collapse: collapse;
            width: 100%;

        }

        .table td,
        th {
            padding: 5px 3px;
            border-color: #000;
            border-style: solid;
            border-width: 1px;
            vertical-align: top;
        }

        .clearfix {
            clear: both;
        }

        .float-left {
            float: left;
        }

        .float-right {
            float: right;
        }

        .d-inline {
            display: inline;
        }

        .d-inline-block {
            display: inline-block;
        }

        .img {
            width: 50px;
            height: auto;
        }

        tr p {
            padding: 5px 0px;
        }
    </style>
</head>

<body>
    <h2 class="text-center">Laporan Sewa GSG</h2>
    <table class="table mt-4">
        <thead>
            <tr>
                <th>Nama Penyewa</th>
                <th>Tgl. Sewa</th>
                <th>Tujuan</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($schedule as $item)
                <tr>
                    <td>{{ $item->tenant->first_name }} {{ $item->tenant->last_name }}</td>
                    <td>
                        {{ Carbon::createFromFormat('Y-m-d', $item->date_start)->format('d M Y') }} -
                        {{ Carbon::createFromFormat('Y-m-d', $item->date_end)->format('d M Y') }}
                    </td>
                    <td>{{ $item->purpose }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>

</html>
