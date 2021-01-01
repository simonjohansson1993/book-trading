<?php
require_once 'dbconfig.inc.php';
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }
if(isset($_GET['userId']) &&isset($_GET['con']) ){
$id=$_GET['userId'];
$conversaton=$_GET['con'];
$sql="update messages set isread=1 where con_id=$conversaton and to_user=$id";
if ($conn->query($sql))
{
   
}
  
}
else if(isset($_GET['userId']) &&isset($_GET['conId']) )
{
    $id=$_GET['userId'];
    $conid=$_GET['conId'];
 $sql="update messages set delfromuserone=
       CASE
       WHEN from_user=$id THEN 1
       Else 0
       END
       where con_id= $conid";

$conn->query($sql);

$sql="update messages set delfromusertow=
CASE
   WHEN to_user=$id THEN 1
     Else 0
END
where con_id=$conid";
$conn->query($sql);
}