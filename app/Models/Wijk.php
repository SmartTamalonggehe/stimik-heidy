<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Wijk extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function congregation()
    {
        return $this->belongsTo(Congregation::class);
    }
}
