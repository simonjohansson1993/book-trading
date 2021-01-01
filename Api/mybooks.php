<?php
  require_once 'dbconfig.inc.php';

if(isset($_GET['userId']))
{
    $id=$_GET['userId'];

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
      }
    
    $sql = "select BookName, Aurthor,Price, B_id,img from books where U_id=$id";
    $myarr = array();
    if ( $result=$conn->query($sql))
     {
     
       while($row = $result->fetch_assoc()) 
       { // echo $row['conversationId']."<br>";
          array_push($myarr, $row);
       }
     } 
     
    
    
    echo json_encode($myarr);


}