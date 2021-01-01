<?php
require_once 'dbconfig.inc.php';

if(isset($_GET['uname'])&&isset($_GET['psw'])&&isset($_GET['email']))
{
    $uname=$_GET['uname'];
    $psw=$_GET['psw'];
    $email=$_GET['email'];

    $sql="select id from users where UserName='".$uname."'";
    if ( $result=$conn->query($sql))
    {
    $nym_row=$result->num_rows;
        if($nym_row==1)
        {
            echo 'username';
            exit();
        }
    }

    $sql="select id from users where Email='".$email."'";
    if ( $result=$conn->query($sql))
    {
    $nym_row=$result->num_rows;
        if($nym_row==1)
        {
            echo 'email';
            exit();
        }
    }

$sql ="insert into users values(null,'$uname','$email','$psw','','https://www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png')";
if ($conn->query($sql))
{
    echo "true";
}
else
{
  echo "false";
} 


}