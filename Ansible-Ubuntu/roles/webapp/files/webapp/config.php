<?php

/**
  * Configuration for database connection
  *
  */

$host       = "10.0.2.17";
$username   = "mydbinstance";
$password   = "mydbinstance";
$dbname     = "test"; // will use later
$dsn        = "mysql:host=$host;dbname=$dbname"; // will use later
$options    = array(
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
              );

?>
