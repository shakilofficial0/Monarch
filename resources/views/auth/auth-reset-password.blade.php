@php
$customizerHidden = 'customizer-hide';
@endphp

@extends('layouts/blankLayout')

@section('title', 'Reset Your Password')

@section('vendor-style')
<!-- Vendor -->
<link rel="stylesheet" href="{{asset('assets/vendor/libs/@form-validation/umd/styles/index.min.css')}}" />
@endsection

@section('page-style')
<!-- Page -->
<link rel="stylesheet" href="{{asset('assets/vendor/css/pages/page-auth.css')}}">
@endsection

@section('vendor-script')
<script src="{{asset('assets/vendor/libs/@form-validation/umd/bundle/popular.min.js')}}"></script>
<script src="{{asset('assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js')}}"></script>
<script src="{{asset('assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js')}}"></script>
@endsection

@section('page-script')
<script>
    let lang = "{{ session()->get('locale') ?? app()->getLocale() }}";
</script>
<script src="{{asset('assets/js/pages-auth.js')}}"></script>
@endsection

@section('content')
<div class="container-xxl">
  <div class="authentication-wrapper authentication-basic container-p-y">
    <div class="authentication-inner py-4">
      <!-- Reset Password -->
      <div class="card">
        <div class="card-body">
          <!-- Logo -->
          <div class="app-brand justify-content-center mb-4 mt-2">
            <a href="{{ url('/') }}" class="app-brand-link gap-2">
                <span class="app-brand-logo demo">
                    <img src="{{ asset('assets/img/logo/solo-coloured.png') }}" alt="Brand Logo" class="img-fluid" />
                </span>
                <span class="app-brand-text demo text-body fw-bold ms-1">Codebumble Inc.</span>
            </a>
          </div>
          <!-- /Logo -->
          <h4 class="mb-1 pt-2">{{__('translate.reset_password')}} 🔒</h4>
          <p class="card-text mb-2">{{__('translate.reset_password_text')}}</p>
            @if ($errors->any())
                <div class="alert alert-danger py-1">
                    @foreach ($errors->all() as $error)
                        <div class="fw-bold text-center">{{ $error }}</div>
                    @endforeach
                </div>
            @endif
          <form class="auth-reset-password-form mt-2" action="{{ route('password.update') }}" method="POST">
          @csrf
          <input type="hidden" name="token" value="{{ request()->token }}">
          <input type="hidden" name="email" value="{{ base64_decode(request()->email) }}">
            <div class="mb-3 form-password-toggle">
              <label class="form-label" for="password">{{__('translate.new_password')}}</label>
              <div class="input-group input-group-merge">
                <input type="password" id="password" class="form-control" name="password" placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;" aria-describedby="password" />
                <span class="input-group-text cursor-pointer"><i class="ti ti-eye-off"></i></span>
              </div>
            </div>
            <div class="mb-3 form-password-toggle">
              <label class="form-label" for="confirm-password">{{__('translate.confirm_password')}}</label>
              <div class="input-group input-group-merge">
                <input type="password" id="confirm-password" class="form-control" name="password_confirmation" placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;" aria-describedby="password" />
                <span class="input-group-text cursor-pointer"><i class="ti ti-eye-off"></i></span>
              </div>
            </div>
            <button class="btn btn-primary d-grid w-100 mb-3">
              Set new password
            </button>
            <div class="mt-3 text-center">
                <a href="{{ route('login') }}" class="d-inline-flex align-items-center"> <i class="ti ti-arrow-left"></i> {{__('translate.back_to_login')}} </a>
            </div>
          </form>
        </div>
      </div>
      <!-- /Reset Password -->
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

