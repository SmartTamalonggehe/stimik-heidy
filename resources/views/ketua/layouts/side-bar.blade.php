<header class="main-nav">
    <div class="sidebar-user text-center">
        <a href="{{ asset('assets/images/avatar-1.png') }}" data-lightbox="image-1" data-title="Paul Baru">
            <img class="img-90 rounded-circle" src="{{ asset('assets/images/avatar-1.png') }}" alt="">
        </a>

        <a href="{{ route('ketua.dashboard') }}">
            <h6 class="mt-3 f-14 f-w-600">Ketua</h6>
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
                        <a class="nav-link" href="{{ route('ketua.dashboard') }}">
                            <i data-feather="home"></i><span>Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="{{ route('ketua.laporan') }}">
                            <i data-feather="file-text"></i><span>Laporan</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="right-arrow" id="right-arrow"><i data-feather="arrow-right"></i></div>
        </div>
    </nav>
</header>
