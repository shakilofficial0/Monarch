<?php

namespace App\Providers;

use App\Actions\Fortify\CreateNewUser;
use App\Actions\Fortify\ResetUserPassword;
use App\Actions\Fortify\UpdateUserPassword;
use App\Actions\Fortify\UpdateUserProfileInformation;
use Illuminate\Cache\RateLimiting\Limit;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\ServiceProvider;
use Laravel\Fortify\Fortify;
use Illuminate\Auth\Notifications\ResetPassword;
use Illuminate\Auth\Notifications\VerifyEmail;
use Illuminate\Mail\Mailable;
use Illuminate\Notifications\Messages\MailMessage;

class FortifyServiceProvider extends ServiceProvider
{
	/**
	 * Register any application services.
	 */
	public function register(): void
	{
		//
	}

	/**
	 * Bootstrap any application services.
	 */
	public function boot(): void
	{
        Fortify::ignoreRoutes();

		Fortify::createUsersUsing(CreateNewUser::class);
		Fortify::updateUserProfileInformationUsing(UpdateUserProfileInformation::class);
		Fortify::updateUserPasswordsUsing(UpdateUserPassword::class);
		Fortify::resetUserPasswordsUsing(ResetUserPassword::class);

		RateLimiter::for('login', function (Request $request) {
			$email = (string) $request->email;

			return Limit::perMinute(5)->by($email . $request->ip());
		});

		RateLimiter::for('two-factor', function (Request $request) {
			return Limit::perMinute(5)->by($request->session()->get('login.id'));
		});

		$this->app->singleton(\Laravel\Fortify\Contracts\LogoutResponse::class, \App\Http\Responses\LogoutResponse::class);

		$this->app->singleton(\Laravel\Fortify\Contracts\LoginResponse::class, \App\Http\Responses\LoginResponse::class);

		ResetPassword::toMailUsing(function ($user, string $token) {

			return (new MailMessage())->subject('Reset Your Password')->view('mail.password_reset', [
				'user' => $user,
				'url' => route('password.reset', [
					'token' => $token,
					'email' => base64_encode($user->email),
				]),
				'ip' => request()->ip(),
				'username' => $user->username,
				'email' => $user->email,
				'name' => $user->name,
			]);
		});

		// Override email verification template
		VerifyEmail::toMailUsing(function ($notifiable, $verificationUrl) {
			return (new MailMessage())->subject('Verify Your Email Address')->view('mail.verify-email', [
				'url' => $verificationUrl,
                'notifiable' => $notifiable,
			]);
		});
	}
}
