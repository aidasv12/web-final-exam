<?php
define('ROOT_PATH',__DIR__);
require __DIR__.'/vendor/autoload.php';
require_once(__DIR__.'/helper/functions.php');
// require_once(__DIR__.'/app/Route.php');
 
use App\Route;
use App\Controller\FrontController;

$route = new Route();
$route->addRoute("GET","/webprogramming2/",[FrontController::class, 'home']);
$route->addRoute("GET",'/webprogramming2/about',[FrontController::class, 'about']);
$route->addRoute("GET",'/webprogramming2/infs',[FrontController::class, 'infs']);
$route->dispatch();
// var_dump($route);
// exit();
// $method = $_SERVER['REQUEST_METHOD'];
// $uri = parse_url($_SERVER['REQUEST_URI'],PHP_URL_PATH);
// // echo($method);
// // echo('<br>');
// // print_r($uri);
// if($uri == "/webprogramming2/")
// {
//     view('home.php');

// }else if($uri=='/webprogramming2/infs')
// {
//     view('infs.php');

// }else if($uri=='/webprogramming2/about')
// {
//     view('about.php');

// }
// else{
//     view('404.php');
    
// }