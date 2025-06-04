
<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

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
use App\Controller\RelatedPostController;
use App\Controller\PostViewController;
use App\Controller\RankingController;

// تنظیمات دیتابیس
$config = require __DIR__ . '/config/database.php';

$capsule = new Capsule;
$capsule->addConnection($config);
$capsule->setAsGlobal();
$capsule->bootEloquent();

// ایجاد نمونه روتر
$router = new Route(); // 👈 اینجا فقط از $router استفاده می‌کنیم

// مسیرهای عمومی
$router->addRoute("GET", "/", [FrontController::class, 'home']);
$router->addRoute("GET", "/about", [FrontController::class, 'about']);
$router->addRoute("GET", "/infs", [FrontController::class, 'infs']);

// مسیرهای ثبت‌نام و ورود
$router->addRoute("GET", "/register", [AuthController::class, 'register']);
$router->addRoute("POST", "/register", [AuthController::class, 'storeuser']);
$router->addRoute("GET", "/login", [AuthController::class, 'login']);
$router->addRoute("POST", "/login", [AuthController::class, 'loginuser']);
$router->addRoute("GET", "/dashboard", [DashboardController::class, 'index']);
$router->addRoute("GET", "/logout", [AuthController::class, 'logout']);

// مسیرهای پست‌ها
$router->addRoute("GET", "/post", [PostController::class, 'index']);
$router->addRoute("GET", "/post/create", [PostController::class, 'create']);
$router->addRoute("POST", "/post/store", [PostController::class, 'store']);
$router->addRoute("GET", "/post/show", [PostController::class, 'show']);
$router->addRoute("GET", "/post/edit", [PostController::class, 'edit']);
$router->addRoute("POST", "/post/update", [PostController::class, 'update']);
$router->addRoute("POST", "/post/delete", [PostController::class, 'destroy']);

// مسیرهای دیگر
$router->addRoute('GET', '/related-posts/generate', [RelatedPostController::class, 'generateRandomRelations']);
$router->addRoute('GET', '/post-views/generate', [PostViewController::class, 'generateRandomViews']);
$router->addRoute("GET", "/post-views", [PostViewController::class, 'index']);
$router->addRoute("GET", "/related-posts", [RelatedPostController::class, 'index']);
$router->addRoute('GET', '/ranking', [RankingController::class, 'showRanking']);


// اجرای روتینگ
$router->dispatch();

