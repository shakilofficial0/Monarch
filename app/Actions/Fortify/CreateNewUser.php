<?php

namespace App\Actions\Fortify;

use App\Models\Profile;
use App\Models\User;
use App\Rules\PasswordStrength;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;
use Laravel\Fortify\Contracts\CreatesNewUsers;

class CreateNewUser implements CreatesNewUsers
{
    use PasswordValidationRules;

    /**
     * Validate and create a newly registered user.
     *
     * @param array $input
     * @return \App\Models\User
     */
    public function create(array $input)
    {
        Validator::make(
            $input,
            [
                'username' => ['required', 'string', 'max:255', Rule::unique(User::class)],
                'name' => ['required', 'string', 'max:255'],
                'email' => [
                    'required',
                    'string',
                    'email',
                    'max:255',
                    Rule::unique(User::class),
                ],
                'mobile' => ['required', 'string', 'max:255', 'unique:users', 'min: 8',],
                'password' => [new PasswordStrength(), 'min:8', 'confirmed'],
                'address' => ['required', 'string'],
                'state' => ['required', 'string'],
                'zip' => ['required', 'string'],
                'gender' => ['required', 'string'],
                'date_of_birth' => ['required', 'string'],
                'country' => ['required', 'string'],
            ],
            [
                'username.unique' => 'Username already taken, please try another one',
                'username.required' => 'Username is required',
                'username.max' => 'Username cannot exceed 255 characters',
                'username.string' => 'Username must be a string',

                'name.required' => 'Name is required',
                'name.string' => 'Name must be a string',
                'name.max' => 'Name cannot exceed 255 characters',
                'email.required' => 'Email is required',
                'email.string' => 'Email must be a string',
                'email.email' => 'Email must be a valid email address',
                'email.max' => 'Email cannot exceed 255 characters',
                'email.unique' => 'Email already taken, please try another one',
                'mobile.required' => 'Mobile is required',
                'mobile.string' => 'Mobile must be a string',
                'mobile.max' => 'Mobile cannot exceed 255 characters',
                'mobile.unique' => 'Mobile already taken, please try another one',
                'mobile.min' => 'Mobile must be at least 8 characters',
                'password.required' => 'Password is required',
                'password.confirmed' => 'Password confirmation does not match',
                'password.min' => 'Password must be at least 8 characters',
                'address.required' => 'Address is required',
                'state.required' => 'State is required',
                'zip'=>'State is required',
                'gender'=> 'Gender is required',
                'date_of_birth'=> 'Date of birth is required',

            ]
        )->validate();

        $username = str_replace([' ', '.'], '_', $input['username']);


        $user = User::create([
            'username' => $username,
            'name' => $input['name'],
            'email' => $input['email'],
            'mobile' => $input['mobile'],
            'password' => Hash::make($input['password']),
            'created_at' => now(),
            'updated_at' => now(),
        ]);
        if($input['gender'] == 'male'){
            $profile_image='default_male.png';
        } else if($input['gender'] == 'female') {
            $profile_image='default_female.png';
        } else {
            $profile_image='default_others.png';
        }
        Profile::create([
            'user_id' => $user->id,
            'created_at' => now(),
            'updated_at' => now(),
            'address' => $input['address'],
            'state' => $input['state'],
            'zip' => $input['zip'],
            'gender' => $input['gender'],
            'profile_image' => $profile_image,
            'dob' => $input['date_of_birth'],
            'country' => $input['country'],
        ]);

        

        return $user;
    }
}
