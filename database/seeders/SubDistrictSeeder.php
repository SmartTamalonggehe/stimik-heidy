<?php

namespace Database\Seeders;

use App\Models\District;
use App\Models\SubDistrict;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SubDistrictSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $sub_district = District::all();

        foreach ($sub_district as $item) {
            $json = file_get_contents("https://dev.farizdotid.com/api/daerahindonesia/kecamatan?id_kota=$item->id");
            $data = json_decode($json);
            foreach ($data->kecamatan as $obj) {
                SubDistrict::create(array(
                    'id' => $obj->id,
                    'district_id' => $obj->id_kota,
                    'name' => $obj->nama,
                ));
            }
        }
    }
}
