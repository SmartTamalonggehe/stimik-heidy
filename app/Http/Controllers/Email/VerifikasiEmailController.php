<?php

namespace App\Http\Controllers\Email;

use Carbon\Carbon;
use App\Mail\VerifikasiMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\URL;
use App\Http\Controllers\Controller;
use App\Models\VerifyUser;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Config;
use Illuminate\Auth\Notifications\VerifyEmail;
use Illuminate\Support\Facades\Auth;

class VerifikasiEmailController extends Controller
{
    public function index()
    {

        $token = sha1(time());
        $user = Auth::user();
        VerifyUser::where('user_id', $user->id)->update(['token' => $token]);
        $email = $user->email;


        Mail::to($email)->send(new VerifikasiMail($token));
        // return back with success message
        return back()->with('success', 'Email verifikasi telah dikirim!');
    }
}
