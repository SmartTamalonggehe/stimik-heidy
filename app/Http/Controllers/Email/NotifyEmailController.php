<?php

namespace App\Http\Controllers\Email;

use App\Mail\NotifyMail;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;

class NotifyEmailController extends Controller
{
    public function index()
    {
        $mailData = [
            'title' => 'Notifikasi Email',
            'body' => 'Ini adalah notifikasi email dari sparta',
        ];

        Mail::to('smartspartacus@gmail.com')->send(new NotifyMail($mailData));
        dd('Email berhasil dikirim');
    }
}
