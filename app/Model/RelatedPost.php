<?php
namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class RelatedPost extends Model
{
    protected $table = 'related_posts';

    protected $fillable = [
        'post_1_id',
        'post_2_id',
    ];

    public $timestamps = false; // چون ستون created_at و updated_at نداریم

    // رابطه با پست اول
    public function post1()
    {
        return $this->belongsTo(Post::class, 'post_1_id');
    }

    // رابطه با پست دوم
    public function post2()
    {
        return $this->belongsTo(Post::class, 'post_2_id');
    }
}
