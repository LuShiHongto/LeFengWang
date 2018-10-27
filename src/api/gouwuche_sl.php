<?php
    $id = isset($_POST["id"])? $_POST["id"] : "";
    $uname = isset($_POST["uname"])? $_POST["uname"] : "";
    $qty = isset($_POST["qty"])? $_POST["qty"] : "";

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = 'lefeng';
    $conn = new mysqli($servername, $username, $password, $dbname);
    $conn->set_charset('utf8');
    $result = $conn -> query('select * from xqing where name="'.$uname.'" and id="'.$id.'"');
    $c = $result -> fetch_assoc();
    if($c){
        $res = $conn->query('update xqing set qty='.$qty.' where name="'.$uname.'" and id="'.$id.'"');
    }
    if ($res) {
        echo "true";
    } else {
        echo "Error: " . $res . "<br>" . $conn->error;
    }





?>