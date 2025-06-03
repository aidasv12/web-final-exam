<?php 
function view($filename, $data = [])
{
    extract($data); // این خط باعث میشه متغیرها وارد ویو بشن
    if(file_exists(ROOT_PATH.'/views/'.$filename))
        return require_once(ROOT_PATH.'/views/'.$filename);
    
    return require_once(ROOT_PATH.'/views/404.php');
}

function redirect($url)
{
    header("Location: $url");
    exit();
}
function isloggedin()
{
    return isset($_SESSION['user_id']);
}
?>