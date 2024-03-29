<header class="main-nav">
    <div class="sidebar-user text-center">
        <a href="{{ asset('assets/images/avatar-1.png') }}" data-lightbox="image-1" data-title="Paul Baru">
            <img class="img-90 rounded-circle" src="{{ asset('assets/images/avatar-1.png') }}" alt="">
        </a>


        <a href="{{ route('admin.dashboard') }}">
            <h6 class="mt-3 f-14 f-w-600">Admin</h6>
        </a>
        {{-- <p class="mb-0 font-roboto">PEMIMPIN PERUBAHAN</p> --}}
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
                        <a class="nav-link" href="{{ route('admin.dashboard') }}">
                            <i data-feather="home"></i><span>Dashboard</span>
                        </a>
                    </li>
                    <li class="dropdown collapsed">
                        <a class="nav-link menu-title active" href="javascript:void(0)"><i
                                data-feather="git-pull-request"></i><span>Tempat</span></a>
                        <ul class="nav-submenu menu-content">
                            <li><a href="{{ route('admin.district') }}">Kabupaten</a></li>
                            <li><a href="{{ route('admin.sub-district') }}">Distrik</a></li>
                            <li><a href="{{ route('admin.congregation') }}">Jemaat</a></li>
                            <li><a href="{{ route('admin.wijk') }}">Wijk</a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="nav-link" href="{{ route('admin.gallery') }}">
                            <i data-feather="image"></i><span>Galeri</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="{{ route('admin.facility') }}">
                            <i data-feather="activity"></i><span>Fasilitas</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="{{ route('admin.tenant') }}">
                            <i data-feather="user-check"></i><span>Penyewa</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="{{ route('admin.schedule') }}">
                            <i data-feather="monitor"></i><span>Jadwal Sewa</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="right-arrow" id="right-arrow"><i data-feather="arrow-right"></i></div>
        </div>
    </nav>
</header>
