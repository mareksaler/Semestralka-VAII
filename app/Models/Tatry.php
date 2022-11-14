<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Tatry extends Model
{
    use HasFactory;
    use Sluggable;

    protected $table = 'tatry';
    protected $fillable = ['title', 'slug', 'description', 'image', 'user_id', 'dlzka', 'cas', 'area'];

    public function user(){
        return $this->belongsTo(User::class);
    }

    public function sluggable(): array {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }
}
