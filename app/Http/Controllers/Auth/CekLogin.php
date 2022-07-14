<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CekLogin extends Controller
{
    public function index()
    {
        if (auth()->user()->roles->first()) {
            // if role is admin, redirect to dashboard
            if (auth()->user()->roles->first()->name == 'ADMIN') {
                return redirect()->route('admin.dashboard');
            }
            // if role is ketua, redirect to dashboard
            elseif (auth()->user()->roles->first()->name == 'KETUA') {
                return redirect()->route('ketua.dashboard');
            }
            // if role is ketua, redirect to dashboard
            elseif (auth()->user()->roles->first()->name == 'PENYEWA') {
                return redirect()->route('penyewa.dashboard');
            }
        }
        // logout user if role is not found
        auth()->logout();
        return redirect()->route('login');
    }
}
