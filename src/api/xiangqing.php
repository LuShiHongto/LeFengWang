<?php
	$id = isset($_POST["id"])? $_POST["id"] : "";
	$names = isset($_POST["name"])? $_POST["name"] : "";
	$imgurl = isset($_POST["imgurl"])? $_POST["imgurl"] : "";
	$titles = isset($_POST["title"])? $_POST["title"] : "";
	$sales = isset($_POST["sale"])? $_POST["sale"] : "";
	$original = isset($_POST["original"])? $_POST["original"] : "";
	$qty = isset($_POST["qty"])? $_POST["qty"] : "";
	
	
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = 'lefeng';
	
	$conn = new mysqli($servername, $username, $password, $dbname);
	$conn->set_charset('utf8');
	$result = $conn -> query('select * from xqing where name="'.$names.'" and id="'.$id.'"');
	$c = $result -> fetch_assoc();
	
	if($c){
		$qty = ++$c["qty"];
		$res = $conn->query("update xqing set qty=".$qty." where id=".$id);
	}else{
		$res = $conn ->query('insert into xqing(id,name,imgurl,title
,sale,original,qty)values("'.$id.'","'.$names.'","'.$imgurl.'","'.$titles.'","'.$sales.'","'.$original.'","'.$qty.'")');
	}
	// $c = select * from car where id=$id;
	
	if ($res) {
        echo "true";
    } else {
        echo "Error: " . $res . "<br>" . $conn->error;
    }
	

?>