<?php
namespace App;

class Route {
    private $routes = [];
    private $basePath = '/webprogramming3'; // نام فولدر پروژه

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

        if (strpos($requestUri, $this->basePath) === 0) {
            $uri = substr($requestUri, strlen($this->basePath));
            if ($uri === '') {
                $uri = '/';
            }
        } else {
            $uri = $requestUri;
        }

        foreach ($this->routes as $route) {
            if ($route['method'] === $method && $route['path'] === $uri) {
                call_user_func($route['handle']);
                exit;  // مهم: توقف اجرای برنامه بعد از یافتن مسیر
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
