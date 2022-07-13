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
                        <form class="theme-form login-form" method="POST">
                            @csrf
                            <div class="d-flex">
                                <div class="d-flex flex-column">
                                    <h4>Login</h4>
                                    <h6>Selamat datang, silahkan melakukan login.</h6>
                                </div>
                                <div class="mode ms-auto align-self-center"><i class="fa fa-moon-o"></i></div>
                            </div>
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
                            <div class="form-group">
                                <div class="form-group">
                                    <label id="email">Email</label>
                                    <div class="input-group"><span class="input-group-text"><i
                                                class="icon-email"></i></span>
                                        <input class="form-control" type="email" name="email" id="email"
                                            required="" placeholder="email@gmail.com">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label id="email">Password</label>
                                <div class="input-group"><span class="input-group-text"><i class="icon-lock"></i></span>
                                    <input class="form-control" type="password" name="password" id="password"
                                        required="" placeholder="*********">
                                    <div class="toogle-password">
                                        <i data-feather="eye-off" width="15" height="24"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="checkbox">
                                    <input id="checkbox1" type="checkbox" name="remember">
                                    <label for="checkbox1">Ingat saya</label>
                                </div><a class="link" href="forget-password.html">Lupa password?</a>
                            </div>
                            <div class="form-group">
                                <button class="btn btn-primary btn-block" type="submit">Login</button>
                            </div>
                            {{-- <div class="login-social-title">
                                <h5>Sign in with</h5>
                            </div>
                            <div class="form-group">
                                <ul class="login-social">
                                    <li><a href="https://www.linkedin.com/login" target="_blank"><i
                                                data-feather="linkedin"></i></a></li>
                                    <li><a href="https://www.linkedin.com/login" target="_blank"><i
                                                data-feather="twitter"></i></a></li>
                                    <li><a href="https://www.linkedin.com/login" target="_blank"><i
                                                data-feather="facebook"></i></a></li>
                                    <li><a href="https://www.instagram.com/login" target="_blank"><i
                                                data-feather="instagram"> </i></a></li>
                                </ul>
                            </div> --}}
                            <hr>
                            <p>Tidak punya akun?<a class="ms-2" href="{{ route('register') }}">Buat akun</a></p>
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
