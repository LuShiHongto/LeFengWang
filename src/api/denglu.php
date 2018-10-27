<?php
	$loginName = isset($_GET["loginName"])? $_GET["loginName"] : "02";
	$passwd = isset($_GET["passwd"])? $_GET["passwd"] : "0055";
	
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = 'lefeng';
	$conn = new mysqli($servername, $username, $password, $dbname);
	
	
	
	$conn->set_charset('utf8');
	$result = $conn -> query('select * from register');
	$res = $result->fetch_all(MYSQLI_ASSOC);
	
	foreach($res as $item){
		if($item ['account'] == $loginName && $item ['password'] == $passwd){
			echo "true";
			break;
		}
	}
	
	$result->close();
	$conn->close();
?>