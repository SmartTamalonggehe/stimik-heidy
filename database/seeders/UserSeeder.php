<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $admin = User::create([
            'first_name' => "Admin",
            'email' => 'admin@mail.com',
            'email_verified_at' => now(),
            'password' => bcrypt('12345678'),
        ]);
        $admin->assignRole('ADMIN');

        $ketua = User::create([
            'first_name' => 'ketua',
            'email' => 'ketua@mail.com',
            'email_verified_at' => now(),
            'password' => bcrypt('12345678'),
        ]);
        $ketua->assignRole('KETUA');
    }
}
