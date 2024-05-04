<?php

$servername = "192.168.211.131"; // replace with your MySQL VM's IP address
$username = "root";
$password = "password";
$dbname = "shop_db"; // replace with your database name
$port = 3306;

try {
    $conn = new PDO("mysql:host=$servername;port=$port;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully";
} catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

?>