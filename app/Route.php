<?php
namespace App;

class Route {
    private $routes = [];
    private $basePath = '/webprogramming3'; // مسیر پایه پروژه

    public function addRoute($method = "GET", $path = "/", $handle = null)
    {
        $this->routes[] = [
            'method' => strtoupper($method),
            'path' => $path,
            'handle' => $handle
        ];
    }

 public function dispatch()
{
    $method = $_SERVER['REQUEST_METHOD'];
    $requestUri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

    echo "<p>Request URI: <b>$requestUri</b></p>";
    
    if (strpos($requestUri, $this->basePath) === 0) {
        $uri = substr($requestUri, strlen($this->basePath));
        if ($uri === '') {
            $uri = '/';
        }
    } else {
        $uri = $requestUri;
    }

    echo "<p>Parsed URI: <b>$uri</b></p>";

    foreach ($this->routes as $route) {
        if ($route['method'] === $method && $route['path'] === $uri) {
            [$controllerClass, $methodName] = $route['handle'];
            $controller = new $controllerClass();
            call_user_func([$controller, $methodName]);
            exit;
        }
    }

    http_response_code(404);
    if (function_exists('view')) {
        view('404.php');
    } else {
        echo "404 - Page Not Found";
    }
    exit;
}
   
}
