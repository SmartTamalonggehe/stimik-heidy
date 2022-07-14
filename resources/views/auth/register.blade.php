<!DOCTYPE html>
<html lang="en">

<head>
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
            <div class="row m-0">
                <div class="col-12 p-0">
                    <div class="login-card">
                        <form class="theme-form login-form" method="POST" action="{{ route('register') }}">
                            @csrf
                            <div class="d-flex">
                                <div class="d-flex flex-column">
                                    <h4>Buat Akun</h4>
                                    <h6>Silahkan mengisi data dibawah ini.</h6>
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
                            {{-- sesion --}}
                            @if (session('success'))
                                <div class="alert alert-success">
                                    {{ session('success') }}
                                </div>
                            @endif
                            <div class="form-group">
                                <label for="name">User Name</label>
                                <div class="small-group">
                                    <div class="input-group"><span class="input-group-text"><i
                                                class="icon-user"></i></span>
                                        <input class="form-control" type="text" name="name" id="name"
                                            required="" placeholder="User Name">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <div class="input-group"><span class="input-group-text"><i
                                            class="icon-email"></i></span>
                                    <input class="form-control" type="email" name="email" id="email"
                                        required="" placeholder="email@gmail.com">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <div class="input-group"><span class="input-group-text"><i class="icon-lock"></i></span>
                                    <input class="form-control" type="password" name="password" id="password"
                                        required="" placeholder="*********">
                                    <div class="toogle-password">
                                        <i data-feather="eye-off" width="15" height="24"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="password_confirmation">Konfirmasi Password</label>
                                <div class="input-group"><span class="input-group-text"><i class="icon-lock"></i></span>
                                    <input class="form-control" type="password" name="password_confirmation"
                                        id="password_confirmation" required="" placeholder="*********">
                                    <div class="toogle-password">
                                        <i data-feather="eye-off" width="15" height="24"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <button class="btn btn-primary btn-block" type="submit">Buat Akun</button>
                            </div>
                            <p>Sudah punya akun?<a class="ms-2" href="{{ route('login') }}">Login</a></p>
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
