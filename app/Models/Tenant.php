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

    public function schedule()
    {
        return $this->hasMany(Schedule::class, 'tenant_id');
    }
    public function user()
    {
        return $this->hasOne(User::class, 'id', 'user_id');
    }
}
