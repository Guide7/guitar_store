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

$sql_recenzje = [];
$row = [];

for($i = 0; $i <= 5; $i++){
      array_push($sql_recenzje, mysqli_query($conn, "SELECT `recenzja` FROM `recenzje` WHERE `id_recenzji` = $i + 1;")); 
      array_push($row, $sql_recenzje[$i]->fetch_assoc());
}

$sql_nazwa_gitary = [];
$sql_ilosc_strun = [];
$row_1 = [];
$row_2 = [];

for($i = 0; $i <= 3; $i++){
  array_push($sql_nazwa_gitary, mysqli_query($conn, "SELECT `model_gitary` FROM `gitary` WHERE `id_gitary` = $i + 1;")); 
  array_push($sql_ilosc_strun, mysqli_query($conn, "SELECT `ilosc_strun` FROM `gitary` WHERE `id_gitary` = $i + 1;"));
  array_push($row_1, $sql_nazwa_gitary[$i]->fetch_assoc());
  array_push($row_2, $sql_ilosc_strun[$i]->fetch_assoc());
}

$conn->close();
?> 