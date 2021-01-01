<?php
  require_once 'dbconfig.inc.php';

if(isset($_GET['fromUser']) && isset($_GET['toUser']) ){
$from=$_GET['fromUser'];
$to=$_GET['toUser'];

$sql="SELECT * from conversation where (to_user=$from and from_user=$to ) or (to_user=$to and from_user=$from)";
if ( $result=$conn->query($sql))
 {
 
    $nym_row=$result->num_rows;
    if($nym_row==1)
    {
        while($row = $result->fetch_assoc()){
          echo $row['conversationId'];
        }
    }
    else{
        $sql="insert into conversation values(null,$from,$to)";
        if ( $result=$conn->query($sql)){
            $sql="SELECT * from conversation where (to_user=$from and from_user=$to ) or (to_user=$to and from_user=$from)";
            if ( $result=$conn->query($sql)){
                while($row = $result->fetch_assoc()){
                    echo $row['conversationId'];
                  }
            }
        }

        
       }
 
 } 

}