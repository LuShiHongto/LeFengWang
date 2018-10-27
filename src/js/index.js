jQuery(function($){
	$.ajax({
		url: 'api/index.php',
		type: 'GET',
		success:function(data){
			var data = JSON.parse(data);
			var res = [];
			for(var i=0;i<data.length;i++){
			$(".content_2").append( `<div class="brand-item">
									<a href="html/liebiao.html" title="${data[i].title}" >
									<img src="${data[i].images}"></a>
									<p class="brand-info">${data[i].title}</p>
								</div>`);
							res.push(data[i]);
			}
			
// 			
	
		}
	})
	$.ajax({
		url:'api/shangpin.php',
		type:'GET',
		success:function(lisi){
			var lisi = JSON.parse(lisi);
			var res_1 = [];
			for(var i=0;i<lisi.length;i++){
			$(".content-3").append( `<div class="pro-list pro-list-" data-sid="${lisi[i].id}" >
						<dl>
							<dt class="pro-pic">
								<a href="javascript:;"  title="${lisi[i].title}">
									<img src="${lisi[i].imgurl}">
								</a>
							</dt>
							<dd class="pro-nam">
								<b> ${lisi[i].zhekou} </b>
								<a href="javascript:;" target="_blank" title="${lisi[i].title}">${lisi[i].title}</a>
								<i></i>
							</dd>
							<dd class="pro-pri">
								<span><b>¥</b>${lisi[i].sale}</span>
								<b> ${lisi[i].original}</b>
								<a class="joinCar add-to-cart hide" href="javascript:;" >
									加入购物车
								</a>
							</dd>
							<div class="wrap"></div>
						</dl>
					</div>`);
							res_1.push(lisi[i]);
			}
			//======传参
			$(".pro-list-").each(function(idx,item){
					item.onclick = function(){
						var str = "";
						for(var key in res_1[idx]){
							str += key + "=" + res_1[idx][key] + "&";
						}
						str = str.slice(0,-1);
						location.href = "html/xiangqing.html?" + encodeURI(str);
						console.log(str)
					}
									  
			})
		}
	})
	gouwuchexiao();
	function gouwuchexiao(){
			$nameli = $.cookie("loginName");
			if($.cookie("loginName") != null){
				$.ajax({
					url: 'api/gouwuche.php',
					type: 'GET',
					data: {name: $nameli},
					success: function(data){
						data = JSON.parse(data);
						for(var i=0;i<data.length;i++){
							if(!/^..\//.test(data[i].imgurl)){
								$("#shopping_list_info").append(`<dl class="shangping">
										<dt>
											<a href="javascript:;" target="_blank">
												<img src="${data[i].imgurl}">
											</a>
										</dt>
									<dd class="shopping-pro">
										<a href="javascript:;" target="_blank">${data[i].title}</a>
									</dd>
									<dd class="shopping-price">
										<em>￥<span class="danjia">${data[i].sale}</span></em>×<span class="shuss">${data[i].qty}</span>
									</dd>
								</dl>`)
							}else{
								$("#shopping_list_info").append(`<dl class="shangping">
										<dt>
											<a href="javascript:;" target="_blank">
												<img src="${data[i].imgurl.slice(3)}">
											</a>
										</dt>
									<dd class="shopping-pro">
										<a href="javascript:;" target="_blank">${data[i].title}</a>
									</dd>
									<dd class="shopping-price">
										<em>￥<span class="danjia">${data[i].sale}</span></em>×<span class="shuss">${data[i].qty}</span>
									</dd>
								</dl>`)
							}
						}//for
						//商品数量
						zongshu();
						//价格
						mani();
					//平面购物车显示
				},//success
			})//ajax
		}
		//商品数量
			zongshu();
			function zongshu(){
				$shopping = $(".shopping-pro");
				$zonghe = 0;
				$.each($shopping,function(idx,item){
					$zonghe+=$(this).length;
				})
				$("#totalProduct").text($zonghe);
				$(".shopping-btn").find("strong").text($zonghe);
				$(".shopping-list-title").find("strong").text($zonghe);
				//小购物车显示隐藏
					$(".Chead-shopping").on("mouseover",function(){
						//顶部显示
						$(".shopping-list").css("display","block");
						if($zonghe <= 0){
							$(".noshop").css("display","block");
						}else if($zonghe>0){
							//已添加显示
							$(".haveshop").css("display","block");
						}else if($zonghe = "undefined"){
							//未添加显示
							$(".noshop").css("display","block");
						}
					})
					$(".Chead-shopping").on("mouseout",function(){
						$(".shopping-list").css("display","none");
						$(".noshop").css("display","none");
						
					})
			}
			// congsole.log($zonghe)
			//价格		
			function mani(){
				$list = $(".shopping-price");//大框
				var jiages = 0;
				$.each($list,function(idx,item){
					jiage = parseInt($(this).find(".danjia").text()*$(this).find(".shuss").text());
					jiages += jiage;
				})
				$(".haveshop").find("#totalMoney").text(jiages);
			}
			
			//点击小购物车跳转
			$(".shopping-list").on("click",function(){
				console.log(666)
				location.href = 'html/gouwuche.html';
			})
	}

	//判断登录
	$Chead = $(".Chead-welcome");
	if($.cookie("loginName") != null){
			$Chead.children().detach();
			$loginName = $.cookie("loginName");
			$loginName = $loginName.substring(0,3)+"****"+$loginName.substring(7,11);
			enter();
			
			$exit = $("#exit");
			$exit.on("click",function(){
							$Chead.children().detach();
							$.cookie("loginName",null,{expires: -1,path:"/"});
					quit();
			})
	}else{
		quit();
	}
	//=======登录后
	function enter(){
		var all= "";
			all += '<span>'+'嗡，欢迎来乐蜂，'+'</span><a mars_sead="lpc_top_name" href="javascript:;">'+$loginName+'</a><span>&nbsp; | &nbsp;</span><a mars_sead="lpc_top_el" href="javasrcipt:;" id="exit">'+'退出登录'+'</a>';
			$Chead.append(all);
	}
	//=========登录前
	function quit(){
		var tll = "";
		tll +='欢迎来到乐蜂，请&nbsp;'+'<a href="html/denglu.html">'+'登录'+'</a><span>&nbsp; | &nbsp;</span><a href="html/zhuce.html">'+'免费注册'+'</a>';
		$Chead.append(tll);
	}
	
	
	
	
	//返回顶部==================
	window.onscroll = function () {
//         if (window.scrollY > 100) {
//             $("#scroll-to-top").style.display = "block"
//         } else if (window.scrollY <= 100) {
//            $("#scroll-to-top").style.display = "none";
//         };
        if (window.scrollY >= 400) {
            $(".scroll-to-top").css("display","block");
						// style.display = "block";
        } else if (window.scrollY < 400) {
            $(".scroll-to-top").css("display","none");
        };
	}
	$("#scroll-to-top").toTop();
})