<?php

namespace Database\Factories;

use App\Models\Schedule;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Proof>
 */
class ProofFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $schedule = Schedule::factory()->create();
        return [
            'schedule_id' => $schedule->id,
            'image' => $this->faker->imageUrl(400, 400, 'people'),
            'status' => $this->faker->randomElement(['active', 'inactive']),
        ];
    }
}
