<nav class="navbar navbar-expand-lg fixed-top bg-light">
    <div class="container">
        <a class="navbar-brand logo" href="{{ route('home') }}">
            <img src="{{ asset('uploads/'.$global_setting_data->logo) }}" alt="">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('/') ? "active" : "" }}" href="{{ route('home') }}">Home</a>
                </li>
                <li class="nav-item dropdown ">
                    <a class="nav-link dropdown-toggle {{ 
                    Request::is('about')||
                    Request::is('history')||
                    Request::is('visi-misi')||
                    Request::is('aparatur') ? "active" : "" }}" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Profile Desa
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="nav-link {{ Request::is('about') ? "active" : "" }}" href="{{ route('about') }}">Tentang Kami</a></li>
                      <li><a class="nav-link {{ Request::is('history') ? "active" : "" }}" href="{{ route('history') }}">Sejarah Desa</a></li>
                      <li><a class="nav-link {{ Request::is('visi_misi') ? "active" : "" }}" href="{{ route('visi_misi') }}">Visi dan Misi</a></li>
                      <li><a class="nav-link {{ Request::is('aparatur') ? "active" : "" }}" href="{{ route('aparatur') }}">Aparatur Desa</a></li>

                    </ul>
                  </li>
                {{-- <li class="nav-item">
                    <a class="nav-link {{ Request::is('about') ? "active" : "" }}" href="{{ route('about') }}">Profil Desa</a>
                </li> --}}
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('services') ? "active" : "" }}" href="{{ route('services') }}">Pelayanan</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('portfolios') ? "active" : "" }}" href="{{ route('portfolios') }}">Kegiatan</a>
                </li>
                {{-- <li class="nav-item">
                    <a class="nav-link {{ Request::is('blog') ? "active" : "" }}" href="{{ route('blog') }}">Berita Desa</a>
                </li> --}}

                <li class="nav-item">
                    <a class="nav-link {{ Request::is('blog') ? "active" : "" }}" href="{{ route('blog') }}">Berita Desa</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link {{ Request::is('faq') ? "active" : "" }}" href="{{ route('faq') }}">FAQ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('contact') ? "active" : "" }}" href="{{ route('contact') }}">Kontak</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

