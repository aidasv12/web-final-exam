<?php
namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    protected $table = 'users';

    // اجازه استفاده از متد create با این فیلدها
    protected $fillable = ['name', 'email', 'password'];

    // چون جدول timestamps داره، این خط نیازی نیست:
    // public $timestamps = false;

    public function composite()
    {
        return $this->name . ' ' . $this->email;
    }
}