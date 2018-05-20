<?php
require "conn.php";

if(isset($_POST['UserName'])){//前端ajax传输过来的额
	$username=$_POST['UserName'];//获取用户名
	$password=($_POST['Pwd']);//获取密码
}else{
	exit('非法操作');
}

//匹配用户名和密码是否同时相等
$query="select * from userlist where username='$username' and password='$password'";
$result=mysql_query($query);

if(mysql_fetch_array($result)){
	echo true;//登陆成功
}else{
	echo false;//登陆失败
}






	
	
