<?php 

namespace App\Controller;

use App\Model\User;

class FrontController {

    public static function home() {
        $id = isset($_GET['id']) ? (int) $_GET['id'] : 0;

        if ($id <= 0) {
            return view('home.php', ['error' => 'Invalid user ID.']);
        }

        $user = User::find($id);

        if ($user) {
            // فرض بر این است که متد composite() اطلاعات کامل کاربر را برمی‌گرداند
            $data = $user->composite();
            return view('home.php', ['userInfo' => $data]);
        } else {
            return view('home.php', ['error' => 'User does not exist.']);
        }
    }

    public static function about() {
        return view('about.php');
    }

    public static function infs() {
        return view('infs.php');
    }
}
