@php
    $customizerHidden = 'customizer-hide';
@endphp

@extends('layouts/blankLayout')

@section('title', 'Verify Your Email')

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
                <!-- verify email basic -->
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
                                    class="app-brand-text demo text-body fw-bold ms-1">{{config('variables.templateName')}}</span>
                            </a>
                        </div>
                        <!-- /Logo -->

                        @if (session('status') == 'verification-link-sent')

                            <h2 class="card-title fw-bolder mb-1">{{__('translate.verify_email')}} ✉️</h2>
                            <p class="card-text mb-2">
                                {{__('translate.verify_email_text_1')}} <span class="fw-bolder"></span> {{__('translate.verify_email_text_2')}}
                            </p>

                            <div class="alert alert-primary alert-dismissible d-flex align-items-baseline" role="alert">
                                <span class="alert-icon alert-icon-lg text-primary me-2">
                                    <i class="ti ti-send ti-sm"></i>
                                </span>
                                <div class="d-flex flex-column ps-1">
                                    <h5 class="alert-heading mb-2">{{__('translate.verify_mail_sent')}}</h5>
                                    <p class="mb-0">{{__('translate.verify_mail_send_text_1')}}</p>
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
                                    </button>
                                </div>
                            </div>

                            <p class="mt-2 text-center">
                                <span>{{__('translate.did_not_receive_email')}}</span>

                            <form action="{{ route('verification.send') }}" method="POST">
                                @csrf
                                <button type="submit" class="btn btn-primary w-100">&nbsp;{{__('translate.resend')}}</button>
                            </form>

                            <p class="mt-2 text-center">{{__('translate.or')}}</p>

                            <form action="{{ route('logout') }}" method="POST">
                                @csrf
                                <button type="submit" class="btn btn-primary w-100">&nbsp;{{__('translate.logout')}}</button>
                            </form>
                            </p>
                        @else
                            <h2 class="card-title fw-bolder mb-1">{{__('translate.verify_email')}} ✉️</h2>
                            <p class="card-text mb-2">
                                {{__('translate.verify_email_text_1')}}<span class="fw-bolder"></span> {{__('translate.verify_email_text_2')}}
                            </p>

                            <a href="{{ asset('/') }}" class="btn btn-outline-primary w-100">{{__('translate.skip_for_now')}}</a>

                            <p class="mt-2 text-center">
                                <span>{{__('translate.did_not_receive_email')}} </span>

                            <form action="{{ route('verification.send') }}" method="POST">
                                @csrf
                                <button type="submit" class="btn btn-primary w-100">&nbsp;{{__('translate.resend')}}</button>
                            </form>

                            <p class="mt-2 text-center">Or</p>

                            <form action="{{ route('logout') }}" method="POST">
                                @csrf
                                <button type="submit" class="btn btn-primary w-100">&nbsp;{{__('translate.logout')}}</button>
                            </form>
                            </p>
                        @endif
                    </div>
                </div>
                <!-- / verify email basic -->
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
