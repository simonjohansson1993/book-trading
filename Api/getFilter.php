<?php
require_once 'dbconfig.inc.php';
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

/*
*/
  $sql;
  if(isset($_GET['Radio']) && isset($_GET['Boxs']))
  
  {
    $radio=$_GET['Radio'];
    $boxs=json_decode($_GET['Boxs']);
    $length=count($boxs);
 
   if($radio!='' && $length ==0 )
   {
     
        switch($_GET['Radio']){
            case "Price- Low to high":
                $sql = "select U_id, BookName, Aurthor,Price, B_id,img from books ORDER BY Price ASC";
                break;
            case "Price- High to low":
                $sql = "select U_id, BookName, Aurthor,Price, B_id,img from books ORDER BY Price DESC";
                break;
            case "Alphabetical":
                $sql = "select U_id, BookName, Aurthor,Price, B_id,img from books ORDER BY BookName ASC";
                break;
            case "Newest first":
                $sql = "select U_id, BookName, Aurthor,Price, B_id,img from books ORDER BY date DESC";
                break;   
            case "Oldest first":
                $sql = "select U_id, BookName, Aurthor,Price, B_id,img from books ORDER BY date ASC";
                break;      
        }
             $myarr = array();

            if ( $result=$conn->query($sql))
            {
            while($row = $result->fetch_assoc()) 
            { 
                array_push($myarr,$row);
            }
            } 
            
            echo json_encode($myarr);

    }
    else if($radio=='' && $length !=0 )
    {

        $myarr = array();
        for($i=0;$i<$length;$i++)
        {
            $sql = "select U_id, BookName, Aurthor,Price, B_id,img from books where category='$boxs[$i]'";
            if ( $result=$conn->query($sql))
             {
               while($row = $result->fetch_assoc()) 
               { 
                array_push($myarr,$row);
               }
             } 
        }
        echo json_encode($myarr);
       // print_r($myarr);
    
    }
    else{
       
        $sql="SELECT * FROM books where category='$boxs[0]'";
         for($i=1;$i<$length;$i++)
         {
             $sql=$sql ." or category='".$boxs[$i]."'";
         }
         switch($_GET['Radio']){
            case "Price- Low to high":
                $sql = $sql ." ORDER BY Price ASC";
                break;
            case "Price- High to low":
                $sql = $sql ." ORDER BY Price DESC";
                break;
            case "Alphabetical":
                $sql = $sql ." ORDER BY BookName ASC";
                break;
            case "Newest first":
                $sql = $sql ." ORDER BY date DESC";
                break;   
            case "Oldest first":
                $sql = $sql ." ORDER BY date ASC";
                break;      
        }
    
        $myarr = array();
        if ( $result=$conn->query($sql))
         {
               while($row = $result->fetch_assoc()) 
               { 
                array_push($myarr,$row);
               }
             } 
        
        echo json_encode($myarr);
    }
    
}

