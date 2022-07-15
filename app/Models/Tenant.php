<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tenant extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function subDistrict()
    {
        return $this->belongsTo(SubDistrict::class, 'sub_district_id');
    }
}
