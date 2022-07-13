<!DOCTYPE html>
<html lang="en">

<head>
    <title>Verifikasi Email</title>
    @include('admin.layouts.head')
</head>

<body>
    <!-- Loader starts-->
    <div class="loader-wrapper">
        <div class="theme-loader">
            <div class="loader-p"></div>
        </div>
    </div>
    <!-- Loader ends-->
    <!-- page-wrapper Start-->
    <section>
        <div class="container-fluid p-0">
            <div class="row">
                <div class="col-12">
                    <div class="login-card">
                        <form class="theme-form login-form" method="POST" action="{{ route('verifikasi-email') }}">
                            @csrf
                            <div class="d-flex">
                                <div class="d-flex flex-column">
                                    <h4>Verifikasi Email</h4>

                                </div>
                                <div class="mode ms-auto align-self-center"><i class="fa fa-moon-o"></i></div>
                            </div>
                            <h6>Silahkan cek email dan lakukan verifikasi untuk akses selanjutnya. Cek pada email spam.
                                Bila email belum diterima silahkan klik kirim email verifikasi dibawah.</h6>
                            {{-- error --}}
                            @if ($errors->any())
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif

                            {{-- sesion --}}
                            @if (session()->has('success'))
                                <div class="alert alert-success">
                                    {{ session()->get('success') }}
                                </div>
                            @endif
                            {{-- sesion error --}}
                            @if (session()->has('error'))
                                <div class="alert alert-danger">
                                    {{ session()->get('error') }}
                                </div>
                            @endif

                            <div class="d-flex justify-content-between">
                                <div>
                                    <button class="btn btn-primary btn-block" type="submit">Kirim Email
                                        Verifikasi</button>
                                </div>
                                <p><a class="ms-2" href="javascript:void(0)" id="btn-logout">Logout</a></p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- page-wrapper end-->
    <!-- Plugin used-->
    @include('admin.layouts.scripts')
</body>

</html>
