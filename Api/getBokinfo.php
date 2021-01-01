<?php
  require_once 'dbconfig.inc.php';
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

$sql = "select U_id, BookName, Aurthor,Price, B_id,img from books ORDER BY B_id DESC LIMIT 10";
$myarr = array();
if ( $result=$conn->query($sql))
 {
 
   while($row = $result->fetch_assoc()) 
   { // echo $row['conversationId']."<br>";
      array_push($myarr, $row);
   }
 } 
 


echo json_encode($myarr);