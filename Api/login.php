<?php
require_once 'dbconfig.inc.php';
if (isset($_GET["uid"]) && isset($_GET["pwd"])) {
    $uid = $_GET["uid"];
    $pwd =$_GET["pwd"];
    if ($conn->connect_error) 
    {
        die("Connection failed: " . $conn->connect_error);
    } 

    $sql="select id from users where UserName='".$uid."' and password='". $pwd."'";
    if ( $result=$conn->query($sql))
    {
       $nym_row=$result->num_rows;
        if($nym_row==1)
        {
            while($row = $result->fetch_assoc()){
            echo $row['id'];
            }
        }

        else 
        {
            echo 'false';
        }


    }
    
}