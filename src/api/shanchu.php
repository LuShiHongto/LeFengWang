<?php
    $id = isset($_POST["id"])? $_POST["id"] : "";
    $uname = isset($_POST["uname"])? $_POST["uname"] : "";

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = 'lefeng';
    $conn = new mysqli($servername, $username, $password, $dbname);
    $conn->set_charset('utf8');
    $result = $conn -> query('select * from xqing where name="'.$uname.'" and id="'.$id.'"');
    $c = $result -> fetch_assoc();
    if($c){
        $res = $conn->query('delete from xqing where name="'.$uname.'" and id="'.$id.'"');
    }
    if ($res) {
        echo "true";
    } else {
        echo "Error: " . $res . "<br>" . $conn->error;
    }


// 删除表数据

// 格式：delete from 表名 where 表达式

//     //删除MyGuests表中id为1的数据
//     DELETE FROM MyGuests where id=1;
    
//     //删除所有数据
//     DELETE FROM MyGuests





?>