<?php
require_once 'dbconfig.inc.php';

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

if(isset($_GET['arr'])){
   
$userinfo=json_decode($_GET['arr']);
//print_r($userinfo);
$sql="update users set UserName='$userinfo[1]',Email='$userinfo[2]', Address='$userinfo[4]', Image='$userinfo[5]', number='$userinfo[3]' where id=$userinfo[0]";
if ($conn->query($sql))
 {
 echo 'true';
 }
 else{
     echo 'false';
 }
}