<?php
  	header('content-type:text/html;charset=utf-8');

	$conn=@mysql_connect('localhost','root','');
	if(!$conn){
		die('数据库连接失败'.mysql_error());
	}
	
	mysql_select_db('dbs');
	mysql_query('SET NAMES UTF8');
	
//	$count=6;$init=0;
	$query1='select * from clss';
	$query2='select * from goodslist';
	
	
	$query3='select * from userlist';
	$query4='select * from goodslist';
	$query5='select * from pinpai limit 3';
	$query6='select url from pinpai limit 3,20';
	$result1=mysql_query($query1);
	$result2=mysql_query($query2);
	$result3=mysql_query($query3);
	$result4=mysql_query($query4);
	$result5=mysql_query($query5);
	$result6=mysql_query($query6);
	$arr1=array();
	for($i=0;$i<mysql_num_rows($result1);$i++){
		$arr1[$i]=mysql_fetch_array($result1,MYSQL_ASSOC);
	}
	$arr2=array();
	for($i=0;$i<mysql_num_rows($result2);$i++){
		$arr2[$i]=mysql_fetch_array($result2,MYSQL_ASSOC);
	}
	$arr3=array();
	for($i=0;$i<mysql_num_rows($result3);$i++){
		$arr3[$i]=mysql_fetch_array($result3,MYSQL_ASSOC);
	}
	$arr4=array();
	for($i=0;$i<mysql_num_rows($result4);$i++){
		$arr4[$i]=mysql_fetch_array($result4,MYSQL_ASSOC);
	}
	$arr5=array();
	for($i=0;$i<mysql_num_rows($result5);$i++){
		$arr5[$i]=mysql_fetch_array($result5,MYSQL_ASSOC);
	}
	$arr6=array();
	for($i=0;$i<mysql_num_rows($result6);$i++){
		$arr6[$i]=mysql_fetch_array($result6,MYSQL_ASSOC);
	}
	  class information{
      }
	$data=new information();
	$data->info1=$arr1;
	$data->info2=$arr2;
	$data->info3=$arr3;
	$data->info4=$arr4;
	$data->info5=$arr5;
	$data->info6=$arr6;
	echo json_encode($data);
	mysql_close($conn);

?>