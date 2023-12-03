@php
    $customizerHidden = 'customizer-hide';
@endphp

@extends('layouts/blankLayout')

@section('title', 'I Forgot My Password')

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
                <!-- Forgot Password basic -->
                <div class="card mb-0">
                    <div class="card-body">
                        <!-- Logo -->
                        <div class="app-brand justify-content-center mb-4 mt-2">
                            <a href="{{ url('/') }}" class="app-brand-link gap-2">
                                <span class="app-brand-logo demo">
                                    <img src="{{ asset('assets/img/logo/solo-coloured.png') }}" alt="Brand Logo"
                                        class="img-fluid" />
                                </span>
                                <span
                                    class="app-brand-text demo text-body fw-bold ms-1">Codebumble Inc.</span>
                            </a>
                        </div>
                        <!-- /Logo -->
                        @if (session('status'))
                            <div class="alert alert-info p-1 text-center">
                                {{ session('status') }}
                            </div>
                        @else
                            <h4 class="card-title mb-1">{{__('translate.forgot_password')}} 🔒</h4>
                            <p class="card-text mb-2">{{__('translate.forgot_password_text')}}</p>

                            @if ($errors->any())
                                <div class="alert alert-danger py-1">
                                    @foreach ($errors->all() as $error)
                                        <div class="fw-bold text-center">{{ $error }}</div>
                                    @endforeach
                                </div>
                            @endif


                            <form class="auth-forgot-password-form mt-2" action="{{ route('password.email') }}"
                                method="POST">
                                @csrf
                                <div class="mb-1">
                                    <label for="forgot-password-email" class="form-label">{{__('translate.email')}}</label>
                                    <input type="text" class="form-control" id="forgot-password-email" name="email"
                                        placeholder="john@example.com" aria-describedby="forgot-password-email"
                                        tabindex="1" autofocus required />
                                </div>
                                <button class="btn btn-primary w-100" tabindex="2" type="submit">{{__('translate.send_password_reset_link')}}</button>
                            </form>
                        @endif

                        <p class="mt-3 text-center">
                            <a href="{{ route('login') }}" class="d-inline-flex align-items-center"> <i class="ti ti-arrow-left"></i> {{__('translate.back_to_login')}} </a>
                        </p>
                    </div>
                </div>
                <!-- /Forgot Password basic -->
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
    @endsection
