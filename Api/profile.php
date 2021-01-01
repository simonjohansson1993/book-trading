<?php
require_once 'dbconfig.inc.php';

if(isset($_GET['userId']))
{
$userId=$_GET['userId'];
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }



$sql = "select * from users where id=".$userId;
 
$myarr = array();
if ( $result=$conn->query($sql))
 {
 
   while($row = $result->fetch_assoc()) 
   {
      array_push($myarr, $row);
   }
 } 

 echo json_encode($myarr);

}