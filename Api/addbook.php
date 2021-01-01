<?php
require_once 'dbconfig.inc.php';

if(isset($_GET['Bookinfo'])){

$arr=$_GET['Bookinfo'];
$arr=json_decode($arr);
$date=date("Y-m-d");

$sql="insert into books values(null,$arr[0],'$arr[1]','$arr[2]',0,$arr[4],'$arr[5]','$arr[6]','$arr[7]','$date','$arr[3]')";
if ($conn->query($sql)){
    echo 'true';
    
}
else{
    echo $sql;
}



}

