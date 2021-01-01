<?php
  require_once 'dbconfig.inc.php';



 if(isset($_GET['id'])&&isset($_GET['userid'])&& isset($_GET['ch'])){
    $id=$_GET['id'];
    $useid=$_GET['userid'];
    $check=$_GET['ch'];
    if( $check==1)
   {
      $sql="insert into wishlist values($useid,$id)";
   }
  else
   {
    $sql="delete from wishlist where Uid=$useid and Bid= $id";
   }
   if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }
  if ( $result=$conn->query($sql))
      {
    
        echo "true";
         
      }
  
   
 }



  





