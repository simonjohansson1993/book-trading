<?php

require_once 'dbconfig.inc.php';
$userId=$_GET['userId'];

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }


$sql = "select conversationId,UserName,id as from_user_id,Image  from( SELECT * from conversation where to_user=".$userId." or from_user=".$userId." )as d  join users on CASE WHEN to_user=".$userId."  THEN id=from_user ELSE id=to_user END";
$myarr = array();
if ( $result=$conn->query($sql))
 {
 
   while($row = $result->fetch_assoc()) 
   { // echo $row['conversationId']."<br>";
      array_push($myarr, $row);
   }
 } 
 


 //print_r($myarr);
 
$coversation = array();
  foreach ($myarr as &$value) 
  {
    $conId=$value['conversationId'];
   // $sql = "SELECT * FROM messages WHERE con_id=".$value['conversationId']." ORDER BY messagesId DESC LIMIT 1";

    $sql="select * from messages where 
    CASE
      WHEN from_user=$userId THEN con_id=$conId and delfromuserone=0
      WHEN to_user=$userId  THEN  con_id=$conId and delfromusertow=0
     END
     ORDER BY messagesId DESC LIMIT 1";

    if ( $result=$conn->query($sql))
     { 
        $arr=array();
     
      while($row =$result->fetch_assoc())
      {  
        $arr=['conversationId'=> $value['conversationId'],
                'UserName'=>$value['UserName'],
                 'Image'=>$value['Image'],
                 'from_user_id'=>$value['from_user_id'],
                 'messagesId'=>$row['messagesId'],
                 'from_user'=>$row['from_user'],
                 'to_user'=>$row['to_user'],
                 'message_text'=>$row['message_text'],
                 'isread'=>$row['isread'],
                 'date'=>$row['date'],
                 'time'=>$row['time'],
                 
              ];
      
      array_push($coversation, $arr);
     
      }
     
   }
  }

   echo json_encode($coversation);

  




