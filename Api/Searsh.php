<?php
require_once 'dbconfig.inc.php';
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(isset($_GET['searsh'])){
$searsh=$_GET['searsh'];

$sql=" SELECT * FROM books where BookName like '%$searsh%'";
$myarr = array();
if ( $result=$conn->query($sql))
 {
       while($row = $result->fetch_assoc()) 
       { 
        array_push($myarr,$row);
       }
     } 

echo json_encode($myarr);
