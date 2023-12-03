<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Mail;
use App\Mail\UserUpdated;

class UserController extends Controller
{

    public function index()
    {

        $list = User::with(['profile'])->get();
        $count = $list->count();

        $countActive = 0;
        $countInActive = 0;

        foreach ($list as $user) {
            if ($user->profile && $user->profile->status == 1) {
                $countActive++;
            }
        }

        foreach ($list as $user) {
            if ($user->profile && $user->profile->status == 0) {
                $countInActive++;
            }
        }

        return view('area52.profile.user-list', compact('count', 'list', 'countActive', 'countInActive'));
    }

    public function response()
    {
        $list = User::with(['profile', 'roles'])->get();

        $responseData = [
            'data' => $list,
        ];
        return response()->json($responseData);
    }

    public function updateUser(Request $request, $id)
    {

        $requestData = $request->all();

        $validator = Validator::make(
            $requestData,
            [
                'role' => 'string',
                'status' => 'integer',
            ],
            [
                'role.string' => 'Role must be string',
                'status.integer' => 'Status must be integer',
            ]
        );

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }

        DB::beginTransaction();

        try {

            $user = User::find($id);

            $role = $request->input('role') ?? 'User';
            $user->syncRoles($role);

            $status = $request->only('status');
            $user->profile->update($status);

            DB::commit();

            // Send email to the user
            Mail::to($user->email)->send(new UserUpdated($user));

            return redirect()->back()->with('success', 'User Updated Successfully');
        } catch (\Exception $e) {
            DB::rollback();
            return back()->with('error', 'Something went wrong, Here are the details: ' . $e->getMessage());
        }
    }

    public function destroy($id)
    {
        $user = Auth::user()->where('id', $id)->first();

        if (File::exists(public_path('images/profile/' . $user->profile->profile_image))) {
            File::delete(public_path('images/profile/' . $user->profile->profile_image));
        }

        $user->roles()->detach();
        $user->profile->delete();
        $user->delete();

        DB::commit();

        return redirect()->route('users')->with('success', 'User deleted successfully');
    }
}
