<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Profile;
use App\Models\User;
use App\Http\Requests\ProfileRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Validator;
use Laravel\Fortify\Contracts\PasswordUpdateResponse;
use Laravel\Fortify\Contracts\UpdatesUserPasswords;
use App\Rules\PasswordStrength;
use Spatie\Permission\Models\Role;

class ProfileController extends Controller
{
    public function index(Request $request)
    {
        
        
        $user = Auth::user();
        $profile = Profile::where('user_id', $user->id)->first();
        return view('pages.profile', compact('user', 'profile'));
        
    }

    public function visitor(Request $request, $username)
    {
        $user = User::where('username', $username)->first();
        $profile = Profile::where('user_id', $user->id)->first();
        return view('pages.visitor', compact('user', 'profile'));
    }
}
