<?php

//main connection file for both admin & front end
$servername = "localhost"; //serve
$username = "cryptina_rowdy1"; //username
$password = "cryptina_rowdy1"; //password
$dbname = "cryptina_rowdy1";  //database

// Create connection
$db = mysqli_connect($servername, $username, $password, $dbname); // connecting 
// Check connection
if (!$db) {       //checking connection to DB	
    die("Connection failed: " . mysqli_connect_error());
}

?>