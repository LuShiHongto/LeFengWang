<?php
	$uname = isset($_GET["name"])? $_GET["name"] : "";
	    // echo $uname;
	    $servername = "localhost";
	    $username = "root";
	    $password = "";
	    $dbname = 'lefeng';
	    $conn = new mysqli($servername, $username, $password, $dbname);
	
	
	
	    $conn->set_charset('utf8');
	    $result = $conn -> query('select * from xqing where name='.$uname);
	
	    $res = $result->fetch_all(MYSQLI_ASSOC);
	        // var_dump($res);
	    echo json_encode($res,JSON_UNESCAPED_UNICODE);
	        // $result->close();
	        // $conn->close();
?>