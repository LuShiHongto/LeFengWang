jQuery(function($){
	var $zonghe;
	var parames = decodeURI(location.search).slice(1);
	var parameslen = parames.split("&");
	var paramesobj = {};
	console.log(parameslen)
	$.ajax({
		url: '../api/liebiao.php',
		type: 'GET',
		success: function(data){
			var data = JSON.parse(data);
			var res = [];
			for(var i=0;i<30;i++){
			$(".makeup").append(` <div data-min="${data[i].id}" class="pruwrap">
                <dl>
                    <dt>
                        <a href="javascript:;" title="${data[i].title}" target="_blank">
						<img src="${data[i].imgurl}" alt="${data[i].title}"></a>
                        <div class="wraptr"></div>
                        <ul class="pro-tags">
                            <li>${data[i].pro}</li>
                        </ul>
                    </dt>
                    <dd class="nam">
                        <a title="${data[i].title}" target="_blank" href="javascript:;">
                            <span>${data[i].title}</span>
                        </a>
                    </dd>
                    <dd class="pri">
                        <span class="price-tag">￥</span>
                        <span class="price">${data[i].sale}</span>
                        <b> ${data[i].zhekou} </b>
                        <del class="spri">${data[i].original}</del>
                        <a class="to joinCar add-to-cart " href="javascript:void(0)">加入购物车</a>
                    </dd>
                </dl>
            </div>`);
			res.push(data[i]);
			}//for
		//=====================排序
		var da = true;
		$pristate = $(".pristate ");
		var uur;
		
		$pristate.on("click",function(){
			$(this).addClass("up2").siblings().removeClass("up2");
		})
		
		$(".jiage").on("click",function(){
				if(da == true){
					uur = res.sort(function(a,b){
						return  a.sale - b.sale;
					});
					paixu();
				}else if(da == false){
					uur = res.sort(function(a,b){
						return b.sale - a.sale;
					});
					paixu();
				}
				da = ! da;
				chuancan()
				// console.log(uur)
			})//事件slice(0,-1);
				
		$(".zhekou").on("click",function(){
				if(da == true){
					uur = res.sort(function(a,b){
						return  a.zhekou.slice(1,-2) - b.zhekou.slice(1,-2);
					});
					paixu();
				}else if(da == false){
					uur = res.sort(function(a,b){
						return b.zhekou.slice(1,-2) - a.zhekou.slice(1,-2);
					});
					paixu();
				}
				da = ! da;
				chuancan()
				// console.log(uur)
			})//事件
		chuancan()			
		//重新排序
		function paixu(){
				$(".makeup").empty();
				for(var i=0;i<uur.length;i++){
					$(".makeup").append(` <div data-min="${uur[i].id}" class="pruwrap ">
						<dl>
							<dt>
								<a href="javascript:;" title="${uur[i].title}" target="_blank">
								<img src="${uur[i].imgurl}" alt="${uur[i].title}"></a>
								<div class="wraptr"></div>
								<ul class="pro-tags">
									<li>${uur[i].pro}</li>
								</ul>
							</dt>
							<dd class="nam">
								<a title="${uur[i].title}" target="_blank" href="javascript:;">
									<span>${uur[i].title}</span>
								</a>
							</dd>
							<dd class="pri">
								<span class="price-tag">￥</span>
								<span class="price">${uur[i].sale}</span>
								<b> ${uur[i].zhekou} </b>
								<del class="spri">${uur[i].original}</del>
								<a class="to joinCar add-to-cart " href="javascript:void(0)">加入购物车</a>
							</dd>
						</dl>
					</div>`);
				}//for
			}//封装
			
			function chuancan(){
				$(".pruwrap").each(function(idx,item){
					item.onclick = function(){
						var str = "";
						for(var key in res[idx]){
							str += key + "=" + res[idx][key] + "&";
						}
						str = str.slice(0,-1);
						location.href = "xiangqing.html?" + encodeURI(str);
						console.log(str);
					}//事件
				})
			}//封装
		},//success
	})//jaxa
	//=================================
	
	$nameli = $.cookie("loginName");
	if($.cookie("loginName") != null){
		$.ajax({
			url: '../api/gouwuche.php',
			type: 'GET',
			data: {name: $nameli},
			success: function(data){
				data = JSON.parse(data);
				for(var i=0;i<data.length;i++){
					if(!/^..\//.test(data[i].imgurl)){
						$("#shopping_list_info").append(`<dl class="shangping">
								<dt>
									<a href="javascript:;" target="_blank">
										<img src="../${data[i].imgurl}">
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
		location.href = 'gouwuche.html';
	})
	
	
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
		tll +='欢迎来到乐蜂，请&nbsp;'+'<a href="denglu.html">'+'登录'+'</a><span>&nbsp; | &nbsp;</span><a href="html/zhuce.html">'+'免费注册'+'</a>';
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
	
	
})//总