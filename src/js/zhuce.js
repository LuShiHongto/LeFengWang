jQuery(function(){
	$mobileNo = $("#mobileNo");//手机号码
	$SuccessShow = $("#mobileNoSuccessShow");//请输入手机号码
	$NoErrorShow = $("#mobileNoErrorShow");//号码格式错误
	$haomahege = $("#haomahege");//号码合格
	$mobile_2 = $("#mobile_2");//号码已注册
	$passwd = $("#passwd");//密码1
	$SuccessShow_1 = $("#passwdSuccessShow");//密码推荐
	$ErrorShow = $("#passwdErrorShow");//密码过于简单
	$mimahege = $("#mimahege");//密码合格
	$passwd1 = $("#passwd1");//密码2
	$passwd1SuccessShow = $("#passwd1SuccessShow");//请再次输入密码
	$passwd1ErrorShow = $("#passwd1ErrorShow");//两次密码不一致
	$registerBtn = $("#registerBtn");//同意注册
	$yzm = $("#yzm");//验证码
	$yanzheng_1 = $(".yanzheng_1");//验证提示
	var verifyCode = new GVerify("yzmPicImg");//生成验证码
	
	//号码验证
	$mobileNo.blur(function(){
		$_mobileNo = $mobileNo.val().trim();
		var num2 = /\b1[3-9]\d{9}\b/;
		if($_mobileNo == ""){
			$mobile_2.css("display","none");//关闭已有
			$NoErrorShow.css("display","none");//关闭格式错误
			$SuccessShow.css("display","block");//号码不能为
			return;
			
		}else if(!num2.test($_mobileNo)){
			$mobile_2.css("display","none");//关闭已有
			$SuccessShow.css("display","none");//关闭号码不能为空
			$NoErrorShow.css("display","block");//号码格式错误
			return;
		}else{
			jiaohu();
		}
	});
	
	
	//密码验证
	$passwd.blur(function(){
		var num3 = /^[a-z]\d{3,16}$/;
		if($passwd.val() == ""){
			$ErrorShow.css("display","none");//关闭密码简单
			$SuccessShow_1.css("display","block");//密码推荐
			return;
			
		}else if(/^[0-9a-zA-Z]{6,20}$/.test($passwd.val())){
			$ErrorShow.css("display","none");//关闭密码简单
			$SuccessShow_1.css("display","none");//关闭密码推荐
			$mimahege.css("display","block");//密码合格
			ercimima();
			
		}else if(!/^[0-9a-zA-Z]{6,20}$/.test($passwd.val())){
			$SuccessShow_1.css("display","none");//关闭密码推荐
			$ErrorShow.css("display","block");//密码简单
			return;
		}
	});
	
	
	//验证码验证
	$yzm.on("blur",function(){
		var res = verifyCode.validate($("#yzm").val());
		if(res){
			$yanzheng_1.css("display","none");
			$(".yanzheng_2").css("display","block");
			
		}else if(verifyCode !== $("#yzm").val()){
			$(".yanzheng_2").css("display","none");
			$yanzheng_1.css("display","block");
			return;
		}
	});
	
	

	
	//密码双验证
	function ercimima(){
		$passwd1.blur(function(){
			$_passwd1 = $passwd1.val();
			if($_passwd1 != $passwd.val()){
				$passwd1SuccessShow.css("display","none");
				$passwd1ErrorShow.css("display","block");
				return;
			}else if($_passwd1 == $passwd.val()){//注册成功
				$passwd1ErrorShow.css("display","none");
				
			}
		})
	}
	//后台交互
	function jiaohu(){
		$.ajax({
			url: '../api/zhuce.php',
			type: 'GET',
			data: {accounts: $_mobileNo},
			success: function(data){
				if(data == "true"){
					$NoErrorShow.css("display","none");//关闭格式错误
					$SuccessShow.css("display","none");//关闭号码不能为空
					$mobile_2.css("display","block");//号码已注册
					return;
					
				}else{
					$NoErrorShow.css("display","none");//关闭格式错误
					$SuccessShow.css("display","none");//关闭号码不能为空
					$mobile_2.css("display","none");//关闭号码已注册
					$haomahege.css("display","block");//号码合格
					zhuce_0();
				}
				console.log(data)
			}
		})
	}
	
	//上传数据库
	function zhuce_0(){
		$registerBtn.on("click",function(){
			$_mobileNo = $mobileNo.val();
			$_passwd1 = $passwd1.val();
			$.ajax({
				url: '../api/zhuce_2.php',
				type: 'POST',
				data: {account: $_mobileNo,
						password: $_passwd1},
				success: function(data){
					if(data == "true" && $_passwd1 == $passwd.val()){
						alert("注册成功");
						location.href = '../index.html';
						$.cookie("loginName",$_mobileNo,{path: '/'});
					}
				}
				
			})
		})
	}
	
	
})