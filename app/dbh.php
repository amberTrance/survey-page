<?php
// Display an error table if the code has errors
// error_reporting(E_ALL);
// ini_set("display_errors", 1);

// Create variables to store our database info
$dbHost = "localhost";
$dbUserName = "root";
$dbPassword = "";
$dbName = "survey_page";

try {
    // Set DSN
    $dsn = "mysql:host=" . $dbHost . ";dbname=" . $dbName;
    // Create a PDO instance
    $pdo = new PDO($dsn, $dbUserName, $dbPassword);
    echo "Connection Successful";
} catch (PDOException $e) {
    //display error message + error content if the connection fails
    echo "DB Connection Failed " . $e->getMessage();
}