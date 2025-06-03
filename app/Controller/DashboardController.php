<?php 

namespace App\Controller;
use App\Model\User;

class DashboardController {
    public static function index()
    {
        if (isloggedin()) {
            return view('dashboard.php');
        } else {
            return redirect('/webprogramming3/login');
        }
    }
}
