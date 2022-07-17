<header class="main-nav">
    <div class="sidebar-user text-center">
        <a href="{{ asset('assets/images/avatar-1.png') }}" data-lightbox="image-1" data-title="Paul Baru">
            <img class="img-90 rounded-circle" src="{{ asset('assets/images/avatar-1.png') }}" alt="">
        </a>

        <a href="{{ route('penyewa.dashboard') }}">
            <h6 class="mt-3 f-14 f-w-600">Penyewa</h6>
        </a>
    </div>
    <nav>
        <div class="main-navbar">
            <div class="left-arrow" id="left-arrow"><i data-feather="arrow-left"></i></div>
            <div id="mainnav">
                <ul class="nav-menu custom-scrollbar">
                    <li class="back-btn">
                        <div class="mobile-back text-end"><span>Back</span><i class="fa fa-angle-right ps-2"
                                aria-hidden="true"></i></div>
                    </li>
                    <li>
                        <a class="nav-link" href="{{ route('penyewa.dashboard') }}">
                            <i data-feather="home"></i><span>Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="{{ route('penyewa.tenant') }}">
                            <i data-feather="user-plus"></i><span>Data Diri</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="{{ route('penyewa.schedule') }}">
                            <i data-feather="save"></i><span>Sewa</span>
                        </a>
                    </li>
                    {{-- <li class="dropdown collapsed">
                        <a class="nav-link menu-title active" href="javascript:void(0)"><i
                                data-feather="git-pull-request"></i><span>Tempat</span></a>
                        <ul class="nav-submenu menu-content">
                            <li><a href="{{ route('penyewa.district') }}">Kabupaten</a></li>
                            <li><a href="{{ route('penyewa.sub-district') }}">Distrik</a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="nav-link" href="{{ route('penyewa.gallery') }}">
                            <i data-feather="home"></i><span>Galeri</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="{{ route('penyewa.facility') }}">
                            <i data-feather="home"></i><span>Fasilitas</span>
                        </a>
                    </li> --}}
                </ul>
            </div>
            <div class="right-arrow" id="right-arrow"><i data-feather="arrow-right"></i></div>
        </div>
    </nav>
</header>
