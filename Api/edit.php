<?php
require_once 'dbconfig.inc.php';
if(isset($_GET['b_id']))
    {
    $id=$_GET['b_id'];
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
      }

    $sql = "select * from books where B_id=$id";
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
else if(isset($_GET['c'])){
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
      }
    
    $sql = "select * from categories";
    $myarr = array();
    if ( $result=$conn->query($sql))
     {
     
       while($row = $result->fetch_assoc()) 
       { 
          array_push($myarr, $row['Category']);
       }
     } 
     echo json_encode($myarr);
}

else if(isset($_GET['editBook'])){
$date=date("Y-m-d");
$arr=json_decode($_GET['editBook']);

$sql="update books set BookName='$arr[1]', Aurthor='$arr[2]',Price=$arr[3], Edition='$arr[4]', category='$arr[5]', Description='$arr[6]',img='$arr[7]',date='$date' where B_id=$arr[0]";

if ( $conn->query($sql))
{ 

  echo 'true';
}

else {
  echo 'false';
}


}