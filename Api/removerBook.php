<?php
require_once 'dbconfig.inc.php';
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
    
  }


if(isset($_GET['bookid'])){
$bookid=$_GET['bookid'];
$sql="delete from wishlist where Bid=$bookid";
if ($conn->query($sql)){
    $sql="delete from books where B_id=$bookid";
    if ($conn->query($sql)){
        echo "true";
    }
    else {
        echo "flase";
    }

    
}


}