<?php
	$servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = 'lefeng';


        $conn = new mysqli($servername, $username, $password, $dbname);
		$conn->set_charset('utf8');
		$sql = 'select * from liebiao';
		
        $result = $conn->query($sql);
		

		$row = $result->fetch_all(MYSQLI_ASSOC);
		$result->close();
		

		echo json_encode($row,JSON_UNESCAPED_UNICODE);

		$conn->close();

?>