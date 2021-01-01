<?php
  require_once 'dbconfig.inc.php';

if(isset($_GET['B_id']))
{
$BookId=$_GET['B_id'];

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

$sql = "select B_id,U_id,BookName,Aurthor,Price,category,Description,img,date,UserName, Image from books join users on id=U_id where B_id=".$BookId;
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

else if(isset($_GET['checkB_id']) &&isset($_GET['userid']) )
{
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
      }
   $sql="select * from wishlist where Uid=".$_GET['userid']." and Bid=".$_GET['checkB_id'];
      if ( $result=$conn->query($sql))
      {
       $nym_row=$result->num_rows;
        if($nym_row==0)
        {
            echo "false";
        }
        else{
            echo "true";
        }
         
      }
    
}

