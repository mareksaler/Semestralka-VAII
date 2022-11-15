<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!--<title>{{ config('app.name', 'Laravel') }}</title>-->
    <title>Klub statočných turistov</title>
    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">

    <!-- Scripts -->
    @vite(['resources/sass/app.scss', 'resources/js/app.js'])

    <!-- <link href="style.css" rel="stylesheet" type="text/css"> -->
    <link rel="stylesheet" href="{{ URL::asset('css/style.css') }}">

    <!-- <link href="{{ asset('css/styles.css') }}" rel="stylesheet" type="text/css"> -->

</head>

<body>
    <div id="app">
        <!-- NAVBAR   -->
        <nav class="navbar navbar-expand-sm bg-black navbar-dark">
            <div class="container">
                <a class="navbar-brand text-white" href="/">Klub statočných turistov</a>
                <button class="navbar-toggler navbar-dark" type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse d-flex justify-content-between" id="collapsibleNavbar">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" href="/">Domov</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="/vysokeTatry">Vysoké Tatry</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="/nizkeTatry">Nízke Tatry</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="/zapadneTatry">Západné Tatry</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="#">Akcie 2023</a>
                        </li>
                    </ul>
                    <ul class="navbar-nav">
                        <!-- Authentication Links -->
                        @guest
                        @if (Route::has('login'))

                        <li class="nav-item">
                            <a class="nav-link active" href="{{ route('login') }}">{{ __('Prihlásenie') }}</a>
                        </li>
                        @endif

                        @if (Route::has('register'))
                        <li class="nav-item">
                            <a class="nav-link active" href="{{ route('register') }}">{{ __('Registrácia') }}</a>
                        </li>
                        @endif
                        @else
                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle  active" href="#" role="button"
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ Auth::user()->name }}
                            </a>

                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    {{ __('Odhlásiť') }}
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                            </div>
                        </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>



        <main class="py-4">
            @yield('content')
        </main>

        <div>
            @include('layouts.footer')
        </div>
    </div>

</body>

</html>