@php
    $customizerHidden = 'customizer-hide';

@endphp

@extends('layouts/blankLayout')

@section('title', 'Login')

@section('vendor-style')
    <!-- Vendor -->
    <link rel="stylesheet" href="{{ asset('assets/vendor/libs/@form-validation/umd/styles/index.min.css') }}" />
@endsection

@section('page-style')
    <!-- Page -->
    <link rel="stylesheet" href="{{ asset('assets/vendor/css/pages/page-auth.css') }}">
@endsection

@section('vendor-script')
    <script src="{{ asset('assets/vendor/libs/@form-validation/umd/bundle/popular.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js') }}"></script>
@endsection

@section('page-script')
    <script>
    let lang = "{{ session()->get('locale') ?? app()->getLocale() }}";
    </script>
    <script src="{{ asset('assets/js/pages-auth.js') }}"></script>
@endsection

@section('content')
    <div class="container-xxl">
        <div class="authentication-wrapper authentication-basic container-p-y">
            <div class="authentication-inner py-4">
                <!-- Login -->
                <div class="card">
                    <div class="card-body">
                        <!-- Logo -->
                        <div class="app-brand justify-content-center mb-4 mt-2">
                            <a href="{{ url('/') }}" class="app-brand-link gap-2">
                                <span class="app-brand-logo demo">
                                    <img src="{{ asset('assets/img/logo/solo-coloured.png') }}" alt="Brand Logo"
                                        class="img-fluid" />
                                </span>
                                <span class="app-brand-text demo text-body fw-bold ms-1">Codebumble Inc.</span>
                            </a>
                        </div>
                        <!-- /Logo -->
                        <h4 class="mb-1 pt-2">{{ __('translate.welcome_message') }}</h4>
                        <p class="mb-4">{{ __('translate.welcome_short_message') }}</p>


                        @if (session('success'))
                            <div class="alert alert-success p-1 text-center">
                                {{ session('success') }}
                            </div>
                        @endif
                        @if (session('status'))
                            <div class="alert alert-info p-1 text-center">
                                {{ session('status') }}
                            </div>
                        @endif

                        @if (session('error'))
                            <div class="alert alert-danger p-1 text-center">
                                {{ __(session('error')) }}
                            </div>
                        @endif

                        @if (session('error-wrong-password'))
                            <div class="alert alert-danger p-1 text-center">
                                {{__('auth.failed')}} {{ __('passwords.left', ['left_attempt' => session('error-wrong-password')]) }}
                            </div>
                        @endif

                        @if ($errors->any() && !Session::has('error-wrong-password'))
                            <div class="alert alert-danger py-1">
                                @foreach ($errors->all() as $error)
                                    <div class="fw-bold text-center">{{ $error }}</div>
                                @endforeach
                            </div>
                        @endif

                        @php
                            if (Session::has('attempt-failed')) {
                                if (Session::get('end_time') < time()) {
                                    session()->forget('attempt-failed', 'end_time');
                                }
                            }
                        @endphp

                        @if ($possible == 0)
                        <div class="alert alert-danger d-flex align-items-baseline" role="alert">
                            <span class="alert-icon alert-icon-lg text-danger me-2">
                              <i class="ti ti-user ti-sm"></i>
                            </span>
                            <div class="d-flex flex-column ps-1">
                              <h5 class="alert-heading mb-2">{{__('translate.login_unavailable')}}</h5>
                              <p class="mb-0">{{__('translate.login_unavailable_details')}}</p>
                              </button>
                            </div>
                        </div>
                        @endif


                        @if (Session::has('attempt-failed'))
                            <div class="alert alert-danger p-1 text-center">
                                {{ __(Session::get('attempt-failed')) }}
                                {{ __('numbers.'.strval(round((Session::get('end_time') - time()) / 60))) }} {{__('translate.minutes_left')}}
                            </div>
                        @else
                            <form id="formAuthentication" class="mb-3" action="{{ route('login') }}" method="POST">
                                @csrf
                                <div class="mb-3">
                                    <label for="email" class="form-label">{{
                                        __('translate.email_or_username') }}</label>
                                    <input type="text" class="form-control" id="email" name="email"
                                        placeholder="Enter your email or username" autofocus>
                                </div>
                                <div class="mb-3 form-password-toggle">
                                    <div class="d-flex justify-content-between">
                                        <label class="form-label" for="password">{{
                                        __('translate.password') }}</label>
                                        <a href="{{ route('password.request') }}">
                                            <small>{{
                                        __('translate.forgot_password') }}</small>
                                        </a>
                                    </div>
                                    <div class="input-group input-group-merge">
                                        <input type="password" id="password" class="form-control" name="password"
                                            placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                                            aria-describedby="password" />
                                        <span class="input-group-text cursor-pointer"><i class="ti ti-eye-off"></i></span>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="remember-me">
                                        <label class="form-check-label" for="remember-me">
                                            {{
                                        __('translate.remember_me') }}
                                        </label>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <button class="btn btn-primary d-grid w-100" type="submit">{{
                                        __('translate.login') }}</button>
                                </div>
                            </form>

                            <p class="text-center">
                                <span>{{
                                        __('translate.new_on_our_platform') }}</span>
                                <a href="{{ route('register') }}">
                                    <span>{{
                                        __('translate.create_an_account') }}</span>
                                </a>
                            </p>
                            @if($possible == 1 && $possible_social == 1)
                            <div class="divider my-4">
                                <div class="divider-text">{{
                                        __('translate.or') }}</div>
                            </div>

                            <div class="d-flex justify-content-center">
                                <a href="javascript:;" class="btn btn-icon btn-label-facebook me-3">
                                    <i class="tf-icons fa-brands fa-facebook-f fs-5"></i>
                                </a>

                                <a href="javascript:;" class="btn btn-icon btn-label-google-plus me-3">
                                    <i class="tf-icons fa-brands fa-google fs-5"></i>
                                </a>

                                <a href="javascript:;" class="btn btn-icon btn-label-twitter">
                                    <i class="tf-icons fa-brands fa-twitter fs-5"></i>
                                </a>
                            </div>
                            @endif
                        @endif


                    </div>
                </div>
                <!-- /Register -->
                <div class="text-center text-muted mt-2">
                    <a href="{{ route("change.language.english") }}" class="text-muted me-1">English</a> | <a
                        href="{{ route("change.language.bangla") }}" class="text-muted ms-1">বাংলা</a> | <a
                        href="{{ route("change.language.hindi") }}" class="text-muted ms-1">हिंदी</a> | <a
                        href="{{ route("change.language.arabic") }}" class="text-muted ms-1">العربية</a> | <a
                        href="{{ route("change.language.french") }}" class="text-muted ms-1">Français</a> | <a
                        href="{{ route("change.language.german") }}" class="text-muted ms-1">Deutsche</a> <a
                        href="{{ route("change.language.italian") }}" class="text-muted ms-1">Italiano</a> | <a
                        href="{{ route("change.language.japanese") }}" class="text-muted ms-1">日本語</a> | <a
                        href="{{ route("change.language.korean") }}" class="text-muted ms-1">한국어</a> | <a
                        href="{{ route("change.language.russian") }}" class="text-muted ms-1">Русский</a> | <a
                        href="{{ route("change.language.spanish") }}" class="text-muted ms-1">Español</a>

                </div>
            </div>
        </div>
    </div>
@endsection
