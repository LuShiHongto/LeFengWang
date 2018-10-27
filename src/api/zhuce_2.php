<?php
	$account = isset($_POST["account"])? $_POST["account"] : "";
	$passwords = isset($_POST["password"])? $_POST["password"] : "";
	
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = 'lefeng';
	$conn = new mysqli($servername, $username, $password, $dbname);
	$conn->set_charset('utf8');
	
	$res = $conn ->query('insert into register(account,password)values("'.$account.'","'.$passwords.'")');

	if ($res) {
		echo "true";
	} else {
		echo "Error: " . $res . "<br>" . $conn->error;
	}
?>