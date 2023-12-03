<?php

namespace App\Providers;

use Illuminate\Cache\RateLimiting\Limit;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\ServiceProvider;
use Laravel\Fortify\Fortify;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Laravel\Fortify\Actions\EnsureLoginIsNotThrottled;
use Laravel\Fortify\Actions\AttemptToAuthenticate;
use Laravel\Fortify\Actions\PrepareAuthenticatedSession;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Lang;
use App\Models\UserDumpLog;
use Browser;
use Illuminate\Support\Facades\App;
use App\Models\SystemSettings;
use DB;


class NukeServiceProvider extends ServiceProvider
{

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        RateLimiter::for('login', function (Request $request) {
            $email = (string)$request->email;
            return Limit::perMinute(5)->by($email . $request->ip());
        });

        Fortify::loginView(function () {

            return view('auth.auth-login');
        });

        Fortify::registerView(function () {
            return view('auth.auth-register');
        });

        Fortify::requestPasswordResetLinkView(function () {
            return view('auth.auth-forgot-password');
        });

        Fortify::resetPasswordView(function ($request) {
            // check if token is valid
            $token = DB::table('password_reset_tokens')->where('email', base64_decode($request->email))->first();

            if (!$token) {
                return redirect()->route('login')->with('error', 'translate.invalid_token');
            }
            return view('auth.auth-reset-password', ['request' => $request]);
        });

        Fortify::verifyEmailView(function () {
            return view('auth.auth-verify-email');
        });

        // Authenticate
        Fortify::authenticateUsing(function (Request $request) {

            if (!$this->checkTooManyFailedAttempts()) {
                return session()->put(['attempt-failed' => 'passwords.attempt', 'end_time' => time() + 300]);
            }

            if(SystemSettings::where('name', 'login')->first()->value != "1") {
                return session()->flash('error', 'translate.login_forbidden');
            }

            $user = User::where('email', $request->email)
                ->orWhere('username', $request->email)
                ->first();

            if ($user && Hash::check($request->password, $user->password)) {
                RateLimiter::clear($this->throttleKey());

                UserDumpLog::create([
                    'username' => $user->username,
                    '_token' => $request->_token,
                    'action_type' => 'login',
                    'user_agent' => $request->header('User-Agent'),
                    'ip' => $request->ip(),
                    'browser' => Browser::browserName(),
                    'platform' => Browser::platformName(),
                    'device' => Browser::deviceType(),
                    'attempt_at' => now(),
                    'attempted_action' => 'login',
                    'loggedout_at' => null,
                ]);


                return $user;
            } else {
                RateLimiter::hit($this->throttleKey(), $seconds = 300);
                $attemptLeft = RateLimiter::remaining($this->throttleKey(), 6);
                return session()->flash('error-wrong-password', strtr($attemptLeft, __('numbers')));
            }
        });

        Fortify::authenticateThrough(function (Request $request) {
            return array_filter([
                config('fortify.limiters.login') ? null : EnsureLoginIsNotThrottled::class,
                // RedirectIfTwoFactorAuthenticatable::class,
                AttemptToAuthenticate::class,
                PrepareAuthenticatedSession::class,
            ]);
        });
    }

    /**
     * Ensure the login request is not rate limited.
     *
     * @return void
     */
    public function checkTooManyFailedAttempts()
    {
        if (!RateLimiter::tooManyAttempts($this->throttleKey(), 6)) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * Get the rate limiting throttle key for the request.
     *
     * @return string
     */
    public function throttleKey()
    {
        return Str::lower(request('email')) || request()->ip();
    }
}
