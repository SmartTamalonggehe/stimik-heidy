@extends('penyewa.layouts.default')
@section('title', 'Dashboard')

@section('content')
    <div class="col-12">
        <div class="card">
            <div class="row m-2">
                <div>
                    <h3>Selamat datang ...</h3>
                </div>
                <div class="mt-2">
                    <ul>
                        <li>
                            No. Rekening yang dapat digunakan untuk pembayaran sewa: <br />
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
            </div>
        </div>
    </div>
    <div class="col-sm-12">
        <div class="card">
            <div class="card-body">
                <h6 class="text-center">Jadwal Sewa Gedung</h6>
                <div class="row">
                    <div id="schedule-table" class="col-12"></div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')

@endsection
