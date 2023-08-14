<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class blog extends Model
{
    use HasFactory;

    protected $fillable = ['id', 'new', 'title', 'created_at', 'source', 'image', 'company', 'country', 'for',];
}
