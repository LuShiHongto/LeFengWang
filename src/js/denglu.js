jQuery(function(){
	$loginName = $("#loginName");//账号
	$loginNameSuccessShow = $("#loginNameSuccessShow");//请输入账号
	$passwd = $("#passwd");//密码
	$passwdSuccessShow = $("#passwdSuccessShow");//请输入密码
	$yzm = $("#yzm");//验证码
	$yzmSuccessShow = $("#yzmSuccessShow")//请输入验证码
	$formSubmit = $("#formSubmit");//登录
	huode($loginName,$loginNameSuccessShow)
	shiqu($loginName,$loginNameSuccessShow)
	huode($passwd,$passwdSuccessShow)
	shiqu($passwd,$passwdSuccessShow)
	huode($yzm,$yzmSuccessShow)
	shiqu($yzm,$yzmSuccessShow)
	
	//获得焦点
	function huode(q,w){
		q.on("focus",function(){
			w.css("display","block");
		});
	};
	//失去焦点
	function shiqu(q,w){
		q.on("blur",function(){
			w.css("display","none");
		});
	};
	
	//验证码
	var verifyCode = new GVerify("yzmPicImg");
	$formSubmit.on("click",function(){
		var res = verifyCode.validate($("#yzm").val());
		if(res){
			denglu();
		}else if(verifyCode !== $("#yzm").val()){
			alert("验证码错误");
			return;
		}
	})
	
	function denglu(){
			$_loginName = $loginName.val();	
			$_passwd = $passwd.val();
			console.log($_loginName,$_passwd)
			
			$.ajax({
				url: '../api/denglu.php',
				type: 'GET',
				data: {loginName: $_loginName,
						passwd: $_passwd},
				success: function(data){
					if(data == "true"){
						location.href = '../index.html';
						$.cookie("loginName",$_loginName,{path: '/'});
					}else{
						alert("账号密码错误");
						$passwd.focus();
						return;
					}
					
				}
			})
	}
	//================================

	
})