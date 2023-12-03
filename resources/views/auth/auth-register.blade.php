@php
    $customizerHidden = 'customizer-hide';
@endphp

@extends('layouts/blankLayout')

@section('title', 'Register')

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

                <!-- Register Card -->
                <div class="card">
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
                        <h4 class="mb-1 pt-2">{{ __('translate.register') }} 🚀</h4>
                        <p class="mb-4">{{ __('translate.register_text') }} </p>

                        <form id="formAuthentication" class="mb-3" action="{{ route('register') }}" method="POST"
                            enctype="multipart/form-data">
                            @csrf
                            <div class="mb-3">
                                <label for="register-username" class="form-label">{{ __('translate.username') }}</label>
                                <input type="text" class="form-control" id="register-username" name="username"
                                    placeholder="johndoe" aria-describedby="register-username" tabindex="1" autofocus
                                    required />
                                @error('username')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>

                            <div class="mb-3">
                                <label for="full-name" class="form-label">{{ __('translate.full_name') }}</label>
                                <input type="text" class="form-control" id="full-name" name="name"
                                    placeholder="Jhone Doe" aria-describedby="full-name" tabindex="1" autofocus
                                    required />
                                @error('name')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>

                            <div class="mb-3">
                                <label for="mobile-number" class="form-label">{{ __('translate.mobile_number') }}</label>
                                <input type="tel" class="form-control" id="mobile-number" name="mobile"
                                    placeholder="01700000000" aria-describedby="mobile-number" tabindex="1"
                                    pattern="[0-9]{4}[0-9]{3}[0-9]{4}" autofocus required />
                                @error('mobile')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>

                            <div class="mb-3">
                                <label for="register-email" class="form-label">{{ __('translate.email') }}</label>
                                <input type="text" class="form-control" id="register-email" name="email"
                                    placeholder="john@example.com" aria-describedby="register-email" tabindex="2"
                                    required />
                                @error('email')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>

                            <div class="mb-3">
                                <label for="register-password" class="form-label">{{ __('translate.password') }}</label>

                                <div class="input-group input-group-merge form-password-toggle">
                                    <input type="password" class="form-control form-control-merge" id="register-password"
                                        name="password"
                                        placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                                        aria-describedby="register-password" tabindex="3" required />
                                    <span class="input-group-text cursor-pointer"><i class="ti ti-eye-off"></i></span>
                                </div>
                                @error('password')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>

                            <div class="mb-3">
                                <label for="retype-password" class="form-label">{{ __('translate.retype_password') }}</label>

                                <div class="input-group input-group-merge form-password-toggle">
                                    <input type="password" class="form-control form-control-merge" id="retype-password"
                                        name="password_confirmation"
                                        placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                                        aria-describedby="retype-password" tabindex="3" required />
                                    <span class="input-group-text cursor-pointer"><i class="ti ti-eye-off"></i></span>
                                </div>
                            </div>

                            <div class="mb-3">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="register-privacy-policy"
                                        name="register-privacy-policy" tabindex="4" />
                                    <label class="form-check-label" for="register-privacy-policy">
                                        {{ __('translate.i_agree_to_the') }} <a href="{{url('https://codebumble.net/terms-of-service')}}">{{ __('translate.terms_and_conditions') }} </a>
                                    </label>
                                </div>
                            </div>
                            <button class="btn btn-primary d-grid w-100">
                                {{ __('translate.sign_up') }}
                            </button>
                        </form>

                        <p class="text-center">
                            <span>{{ __('translate.already_have_an_account') }}</span>
                            <a href="{{ route('login') }}">
                                <span>{{ __('translate.sign_in_instead') }}</span>
                            </a>
                        </p>

                        <div class="divider my-4">
                            <div class="divider-text">{{ __('translate.or') }}</div>
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
                    </div>
                </div>
                <!-- Register Card -->
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
