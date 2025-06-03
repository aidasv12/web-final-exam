<?php 

namespace App\Controller;
use App\Model\User;
class AuthController{
    public static function login()
    {
        if(isloggedin())
        {
            return redirect('/webprogramming3/dashboard');
        }
        return view('login.php');
    }
    public static function register()
    {
        if(isloggedin())
        {
            return redirect('/webprogramming3/dashboard');
        }
        return view('register.php');
    }
   public static function storeuser()
{
    if (empty($_POST['name']) || empty($_POST['email']) || empty($_POST['password']) || empty($_POST['confirm_password'])) {
        $_SESSION['error'] = "Please fill in all fields.";
        return redirect('/webprogramming3/register');
    }

    if ($_POST['password'] !== $_POST['confirm_password']) {
        $_SESSION['error'] = "Passwords do not match.";
        return redirect('/webprogramming3/register');
    }

    $existingUser = User::where('email', $_POST['email'])->first();
    if ($existingUser) {
        $_SESSION['error'] = "This email is already registered.";
        return redirect('/webprogramming3/register');
    }

    $password = password_hash($_POST['password'], PASSWORD_BCRYPT);

    $user = User::create([
        'name' => $_POST['name'],
        'email' => $_POST['email'],
        'password' => $password
    ]);

    if ($user) {
        $_SESSION['success'] = "Registration successful. Please login.";
        return redirect('/webprogramming3/login');
    } else {
        $_SESSION['error'] = "Something went wrong. Please try again.";
        return redirect('/webprogramming3/register');
    }
}

  public static function loginuser()
{
    if (empty($_POST['email']) || empty($_POST['password'])) {
        $_SESSION['error'] = "please enter your email and password";
        return redirect('/webprogramming3/login');
    }

    $username = $_POST['email']; 
    $userpass = $_POST['password'];

    $user = User::whereRaw('LOWER(email) = ?', [strtolower($username)])->first();

    if (!$user || !password_verify($userpass, $user->password)) {
        $_SESSION['error'] = "The email or password is incorrect";
        return redirect('/webprogramming3/login');
    }

    $_SESSION['user_id'] = $user->id;
    $_SESSION['user_name'] = $user->name;

    return redirect('/webprogramming3/dashboard');
}
public static function logout() {
    session_unset();
    session_destroy();
    return redirect('/webprogramming3/login?success=logged_out');
}


}