<?php 

$dbhost = "localhost";
$dbuser = "root";
$dbpassword = "";
$dbname = "ChicklaxUser";

if(!$con = mysqli_connect($dbhost, $dbuser, $dbpassword, $dbname)){
    die;
}

