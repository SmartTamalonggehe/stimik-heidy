<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use App\Models\VerifyUser;
use App\Mail\VerifikasiMail;
use Illuminate\Http\Request;
use Illuminate\Validation\Rules;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Auth\Events\Registered;
use App\Providers\RouteServiceProvider;

class RegisteredUserController extends Controller
{
    /**
     * Display the registration view.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('auth.register');
    }

    /**
     * Handle an incoming registration request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request)
    {
        $request->validate([
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'confirmed', Rules\Password::defaults()],
        ]);

        $user = User::create([
            'name' => $request->email,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'show_password' => $request->password,
        ]);

        $user->assignRole('PENYEWA');

        $verify = VerifyUser::create([
            'user_id' => $user->id,
            'token' => sha1(time()),
        ]);

        // Mail::to($user->email)->send(new VerifikasiMail($verify->token));

        Auth::login($user);

        return redirect()->route('cekLogin');

        return redirect()->route('register')->with('success', 'Selamat! Anda telah terdaftar. Silahkan cek email anda untuk melakukan verifikasi.');
    }
}
