<?php
	$servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = 'lefeng';

        // 创建连接
        $conn = new mysqli($servername, $username, $password, $dbname);
		$conn->set_charset('utf8');
		$sql = 'select * from shangpin';
		
        $result = $conn->query($sql);
		
		//使用查询结果集
		//得到数组
		$row = $result->fetch_all(MYSQLI_ASSOC);
		$result->close();
		
		//把结果输出到前台
		echo json_encode($row,JSON_UNESCAPED_UNICODE);
		
		// 关闭数据库，避免资源浪费
		$conn->close();

?>