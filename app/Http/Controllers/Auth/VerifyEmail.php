<?php

namespace App\Http\Controllers\Auth;

use Carbon\Carbon;
use App\Models\VerifyUser;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class VerifyEmail extends Controller
{
    public function verify($token)
    {
        $verifyUser = VerifyUser::where('token', $token)->first();
        if ($verifyUser) {
            $user = $verifyUser->user;
            // update the email verified at column
            $user->update(['email_verified_at' => Carbon::now()]);
            // delete the token
            $verifyUser->delete();
            return redirect()->route('cekLogin');
        }
        // return to login with error message
        return redirect('/verify-email')->with('error', 'Verifikasi email gagal!');
    }
}
