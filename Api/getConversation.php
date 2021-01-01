<?php
  require_once 'dbconfig.inc.php';
if(isset($_GET['message']))
{
  $date=date("Y-m-d");
  $time= date("h:i");
 
    $arr=json_decode($_GET['message']);
    $sql ="insert into messages values(null,$arr[0],$arr[1],$arr[2],'".$arr[3]."',0,'  $date',0,0,'$time')";
    if ( $result=$conn->query($sql)){
        echo 'true';
    }
    else {
        echo 'false';
    }

//print_r($arr);
}
else if(isset($_GET['conversationId']) && isset($_GET['userid']))
{
    $conid=$_GET['conversationId'];
    $id=$_GET['userid'];
    $sql="select * from messages where 
    CASE
      WHEN from_user=$id THEN con_id=$conid and delfromuserone=0
      WHEN to_user=$id  THEN  con_id=$conid and delfromusertow=0
     END
     order by messagesId DESC";
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