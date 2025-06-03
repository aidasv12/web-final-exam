<?php
header('HTTP/1.0 404 Not Found');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Page Not Found - 404</title>
    <style>
        body {
            background-color: #f8f9fa;
            font-family: "Tahoma", sans-serif;
            text-align: center;
            padding: 60px 20px;
            color: #333;
        }
        h1 {
            font-size: 72px;
            color: #dc3545;
            margin-bottom: 10px;
        }
        p {
            font-size: 24px;
            margin-bottom: 30px;
        }
        a {
            display: inline-block;
            background-color: #007bff;
            color: white;
            padding: 12px 25px;
            border-radius: 6px;
            text-decoration: none;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }
        a:hover {
            background-color: #0056b3;
        }
        .container {
            max-width: 600px;
            margin: auto;
            background: white;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgb(0 0 0 / 0.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>404</h1>
        <p>Sorry, the page you are looking for could not be found.</p>
        <a href="/webprogramming3/">Back to Home</a>
    </div>
</body>
</html>
