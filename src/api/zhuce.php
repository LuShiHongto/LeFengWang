<?php
	$account = isset($_GET["accounts"])? $_GET["accounts"] :"";

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = 'lefeng';
	$conn = new mysqli($servername, $username, $password, $dbname);
	
	
	$conn->set_charset('utf8');
	$result = $conn -> query('select * from register');
	$res = $result->fetch_all(MYSQLI_ASSOC);
	
	foreach($res as $item){
		if($item ['account'] == $account){
			echo "true";
			break;
		}
	}
	
	$result->close();
	$conn->close();
?>