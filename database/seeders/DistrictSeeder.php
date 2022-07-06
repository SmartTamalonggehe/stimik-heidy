<?php

namespace Database\Seeders;

use App\Models\District;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DistrictSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $json = file_get_contents("https://dev.farizdotid.com/api/daerahindonesia/kota?id_provinsi=94");
        $data = json_decode($json);
        foreach ($data->kota_kabupaten as $obj) {
            District::create(array(
                'id' => $obj->id,
                'name' => $obj->nama,
            ));
        }
    }
}
