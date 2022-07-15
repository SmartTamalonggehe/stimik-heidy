<?php

namespace Database\Factories;

use App\Models\SubDistrict;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Tenant>
 */
class TenantFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        // user random user_id
        $user = User::factory()->create();
        // in random order subdistrict_id
        $sub_district = SubDistrict::inRandomOrder()->first();
        return [
            'user_id' => $user->id,
            // random number of rooms
            'nik' => $this->faker->randomNumber(5, true),
            'first_name' => $this->faker->firstName,
            'last_name' => $this->faker->lastName,
            // random element
            'gender' => $this->faker->randomElement(['Laki-laki', 'Perempuan']),
            'sub_district_id' => $sub_district->id,
            'address' => $this->faker->address,
            'ktp_picture' => $this->faker->imageUrl(400, 400, 'people'),
            'status' => $this->faker->randomElement(['active', 'inactive']),
        ];
    }
}
