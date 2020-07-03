<?php

/**
  * Open a connection via PDO to create a
  * new database and table with structure.
  *
  */

require "/var/www/html/config.php";

try {
  $connection = new PDO("mysql:host=$host", $username, $password, $options);
  $sql = file_get_contents("/var/www/html/data/init.sql");
  $connection->exec($sql);

  echo "Database and table users created successfully.";
} catch(PDOException $error) {
  echo $sql . "<br>" . $error->getMessage();
}
?>
