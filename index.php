<!DOCTYPE html>
<html lang="fa">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>سایت من</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
body {
background: linear-gradient(to right, #c3d9ff, #e0c3fc);
font-family: 'Tahoma', sans-serif;
 }
form-container {
 background-color: #ffffffbb;
padding: 30px;
 border-radius: 15px;
 box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
 margin-top: 40px;
}    
h1 {
color: #4b0082;
 }
 .navbar {
 background-color: #a18cd1 !important;
 }
.navbar-nav .nav-link {
 color: white !important;
 font-weight: bold;
 }
    </style>

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light"> <div class="container-fluid">
<div class="collapse navbar-collapse">
<ul class="navbar-nav me-auto mb-2 mb-lg-0">
<li class="nav-item"><a class="nav-link active" href="index.php">صفحه اصلی</a></li>
<li class="nav-item"><a class="nav-link" href="infs.php">مشاهده اطلاعات</a></li>
<li class="nav-item"><a class="nav-link" href="contact-us.php">تماس با ما</a></li>
</ul>
</div>
</div>
</nav>

<div class="container mt-4">
<h1>ارسال اطلاعات</h1>
<form action="process-form.php" method="POST">
<div class="mb-3">
<label for="name" class="form-label">نام</label>
<input type="text" class="form-control" name="name" id="name">
</div>
<div class="mb-3">
<label for="last_name" class="form-label">نام خانوادگی</label>
<input type="text" class="form-control" name="last_name" id="last_name">
</div>
<button type="submit" class="btn btn-primary">ارسال</button>
</form>
</div>

</body>
</html>