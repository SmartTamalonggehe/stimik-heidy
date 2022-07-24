<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Gallery>
 */
class GalleryFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        // random image from picsum
        $image = 'https://picsum.photos/v2/list?page=2&limit=100';
        $image = json_decode(file_get_contents($image));
        $image = $image[array_rand($image)];
        $image = $image->download_url;

        return [
            'image' => $image,
            'description' => $this->faker->text(),
        ];
    }
}
