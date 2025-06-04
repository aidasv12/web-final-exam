<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class PostView extends Model
{
    protected $table = 'post_views';

    protected $fillable = [
        'post_id',
        'user_id',
        'viewed_at',
       
    ];

    public $timestamps = false; // چون از created_at استفاده نمی‌کنیم

    public function post()
    {
        return $this->belongsTo(Post::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
