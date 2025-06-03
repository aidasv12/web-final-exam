<?php
session_start();

define('ROOT_PATH', __DIR__);

require __DIR__ . '/vendor/autoload.php';
require_once __DIR__ . '/helper/functions.php';

use Illuminate\Database\Capsule\Manager as Capsule;
use App\Route;
use App\Controller\FrontController;
use App\Controller\AuthController;
use App\Controller\DashboardController;
use App\Controller\PostController;

// تنظیمات دیتابیس
$config = require __DIR__ . '/config/database.php';

$capsule = new Capsule;
$capsule->addConnection($config);
$capsule->setAsGlobal();
$capsule->bootEloquent();

// ایجاد نمونه روتر
$route = new Route();

// تنظیم نام فولدر پروژه در کلاس Route
// فرض کن فولدر پروژه webprogramming3 هست
// پس مسیرها رو بدون این پیشوند تعریف می‌کنیم

// مسیرهای عمومی
$route->addRoute("GET", "/", [FrontController::class, 'home']);
$route->addRoute("GET", "/about", [FrontController::class, 'about']);
$route->addRoute("GET", "/infs", [FrontController::class, 'infs']);

// مسیرهای ثبت نام و ورود
$route->addRoute("GET", "/register", [AuthController::class, 'register']);
$route->addRoute("POST", "/register", [AuthController::class, 'storeuser']);
$route->addRoute("GET", "/login", [AuthController::class, 'login']);
$route->addRoute("POST", "/login", [AuthController::class, 'loginuser']);
$route->addRoute("GET", "/dashboard", [DashboardController::class, 'index']);

// مسیرهای مربوط به پست‌ها
$route->addRoute("GET", "/post", [PostController::class, 'index']);
$route->addRoute("GET", "/post/create", [PostController::class, 'create']);
$route->addRoute("POST", "/post/store", [PostController::class, 'store']);
$route->addRoute("GET", "/post/show", [PostController::class, 'show']);
$route->addRoute("GET", "/post/edit", [PostController::class, 'edit']);
$route->addRoute("POST", "/post/update", [PostController::class, 'update']);
$route->addRoute("POST", "/post/delete", [PostController::class, 'destroy']);
$route->addRoute("GET", "/logout", [AuthController::class, 'logout']);


// فراخوانی dispatch برای پردازش درخواست‌ها
$route->dispatch();
