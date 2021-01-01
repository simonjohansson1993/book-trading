<?php
  require_once 'dbconfig.inc.php';
if(isset($_GET['userId']))
{
$userId=$_GET['userId'];
// Create connection


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

$sql = "select B_id,img,Aurthor,Price,U_id as sellerId, BookName,UserName as sellerName,Image as sellerimg from (select * from wishlist left join books on B_id=Bid where Uid=$userId )as d left join users on U_id=id";
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


if(isset($_GET['userId']) && isset($_GET['bookid']) )
{
$bookid=$_GET['bookid'];
$userId=$_GET['userId'];
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

  $sql="delete from wishlist where Uid=$userId and Bid=$bookid";
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }
  if ( $result=$conn->query($sql))
      {
    
        echo "true";
         
      }
  
 }

 else{

 }

 