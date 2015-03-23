<?php
session_start();
?>
<html>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<meta http-equiv="refresh" content="3; url=user_received_message.php">
	<head>
		<title>标读设置跳转中...</title>
	</head>
	<body>
<?php
$con = mysql_connect("localhost", "root", "123456");
mysql_query("set names 'gb2312'");
mysql_select_db("classroom", $con);
$sqlstr = 'update ' . $_SESSION['username'] . '_message set state = 1 where time = ' . $_GET['time'];
// echo $sqlstr;
mysql_query($sqlstr, $con);
echo '<b>标读设置成功，跳转中...</b>';
?>
	</body>
</html>
