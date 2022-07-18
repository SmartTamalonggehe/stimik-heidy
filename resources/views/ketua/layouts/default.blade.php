<!DOCTYPE html>
<html lang="en">

<head>
    @include('ketua.layouts.head')
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
    <div class="page-wrapper" id="pageWrapper">
        <!-- Page Header Start-->
        @include('ketua.layouts.top-bar')
        <!-- Page Header Ends                              -->
        <!-- Page Body Start-->
        <div class="page-body-wrapper horizontal-menu">
            <!-- Page Sidebar Start-->
            @include('ketua.layouts.side-bar')
            <!-- Page Sidebar Ends-->
            <div class="page-body">
                <div class="container-fluid">
                    <div class="page-header">
                        <div class="row">
                            <div class="col-sm-6">
                                <h3>@yield('judul')</h3>
                                {{-- <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item">Pages</li>
                                    <li class="breadcrumb-item active">Sample Page</li>
                                </ol> --}}
                            </div>
                            <div class="col-sm-6">
                                <!-- Bookmark Start-->
                                <div class="bookmark">
                                    @yield('btn-tambah')
                                </div>
                                <!-- Bookmark Ends-->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Container-fluid starts-->
                <div class="container-fluid">
                    <div class="row">
                        @yield('content')
                    </div>
                </div>
                <!-- Container-fluid Ends-->
            </div>
            <!-- footer start-->
            @include('ketua.layouts.footer')
        </div>
    </div>
    <script>
        let route = document.getElementById('route');
        if (route) {
            route = route.textContent
        }
        const role = 'ketua';
        let my_grid;
    </script>

    @include('ketua.layouts.scripts')
</body>

</html>

{{-- vihoketua-10 --}}
