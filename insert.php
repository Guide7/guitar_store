<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sklep_gitar";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO recenzje(id_gitary, id_recenzji, recenzja)
VALUES ('6', '7', 'Żenada...')";

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?> 