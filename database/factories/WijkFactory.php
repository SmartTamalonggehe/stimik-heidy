<?php

namespace Database\Factories;

use App\Models\Congregation;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\wijk>
 */
class WijkFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        // random
        $congregation_id = Congregation::all()->random()->id;
        return [
            'congregation_id' => $congregation_id,
            'name' => $this->faker->name,
        ];
    }
}
