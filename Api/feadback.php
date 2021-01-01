<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "books";
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
    exit();
  }

  
if(isset($_GET['id']) && isset($_GET['fead'])){
    $date=date("Y-m-d");
    $time= date("h:i");
    $a= $date .' '.  $time;
    $id=$_GET['id'];
    $fead=$_GET['fead'];
      $sql = "Insert into feadback values(null,$id,'".$fead."','".$a."')";
      if ($conn->query($sql))
      {
          echo "true";
      }
      else
      {
        echo "false";
      } 
   
  }
else{


  $sql = "select feadbackId,feadback,useeid,UserName,Image,date from feadback left join users on useeid=id order by feadbackId DESC";
  $myarr = array();
  if ( $result=$conn->query($sql))
   {
   while($row = $result->fetch_assoc()) 
     { // echo $row['conversationId']."<br>";
        array_push($myarr, $row);
     }
   } 

   echo json_encode( $myarr);
}