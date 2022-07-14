<?php

namespace Database\Factories;

use App\Models\Tenant;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Schedule>
 */
class ScheduleFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $tenant = Tenant::factory()->create();
        return [
            'tenant_id' => $tenant->id,
            'date_start' => $this->faker->dateTime,
            'date_end' => $this->faker->dateTime,
            'price' => $this->faker->randomNumber(5, true),
            'purpose' => $this->faker->text,
            'status' => $this->faker->randomElement(['active', 'inactive']),
        ];
    }
}
