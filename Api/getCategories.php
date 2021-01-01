<?php
require_once 'dbconfig.inc.php';
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

$sql = "SELECT * FROM books.categories ";
$myarr = array();

if ( $result=$conn->query($sql))
 {
   while($row = $result->fetch_assoc()) 
   { 
      array_push($myarr,$row);
   }
 } 
 


echo json_encode($myarr);