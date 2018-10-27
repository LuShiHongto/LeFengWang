jQuery(function(){
	$nameli = $.cookie("loginName");
if($nameli != null){
	$.ajax({
		url: '../api/gouwuche.php',
		type: 'GET',
		data: {name: $nameli},
		success: function(data){
			data = JSON.parse(data);
			
for(var i=0;i<data.length;i++){
	if(!/^..\//.test(data[i].imgurl)){
		$("#cart_list_temp").append(`<div class="list" data-eventid:"${data[i].id}">
		<div class="table-box-tip">
			<div class="list-orders" id="0_0"></div>
			</div>
				<table>
					<tbody>
						<tr class="chuchuid" size_id="1373383828" cart_id="33208810" data-eventid="${data[i].id}">
							<td class="td01">
								<div class="pic">
									<a href="javascript:;" target="_blank">
										<img width="58" height="74" alt="" src="../${data[i].imgurl}">
									</a>
								<div class="max-pic" style="display: none;">
									<div class="max-pic-l">
										<span class="arrow-out">◆</span><span class="arrow">◆</span>
									</div>
									<div class="max-pic-t">
										<img src="../${data[i].imgurl}" alt="" width="184" height="234">
									</div>
								</div>
							</div>
							<div class="fr">
								<div class="name">
									<a title="" href="javascript:;" target="_blank">${data[i].title}</a>
								</div>
								<div class="size">规格:95ml</div>
							</div>
						</td>
						<td class="td02">
							<span class="m-price">
								<span class="u-yen">¥</span>
								<strong class="u-prices">${data[i].sale}</strong>
							</span>
							<del class="mar-price">
								<span class="u-yen">¥</span>
								<span class="u-price">${data[i].original.slice(1)}</span>
							</del>
						</td>
						<td class="td03">
							<div class="quantity">
								<span class="l-no">-</span>
								<a href="javascript:;" class="l-y" action="minus">-</a>
								<input size_id="1373383828" buy_num_min="1" buy_num_max="2" name="" value="${data[i].qty}" type="text" class="tip">
								<span class="r-no">+</span>
								<a href="javascript:;" action="add" class="r-y">+</a>
								<div class="cart-error"></div>
							</div>
						</td>
						<td class="td04">
							<span class="m-price">
								<span class="u-yen">¥</span>
								<strong class="u-price">${data[i].sale}</strong>
							</span>
						</td>
						<td class="td05">
							<a href="javascript:;" class="del" value="1373383828">删除</a>
							<div class="cart-error"></div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>`)
	}else{
		$("#cart_list_temp").append(`<div class="list">
		<div class="table-box-tip">
			<div class="list-orders" id="0_0"></div>
			</div>
				<table>
					<tbody>
						<tr class="chuchuid" size_id="1373383828" cart_id="33208810" data-eventid="${data[i].id}">
							<td class="td01">
								<div class="pic">
									<a href="javascript:;" target="_blank">
										<img width="58" height="74" alt="" src="${data[i].imgurl}">
									</a>
								<div class="max-pic" style="display: none;">
									<div class="max-pic-l">
										<span class="arrow-out">◆</span><span class="arrow">◆</span>
									</div>
									<div class="max-pic-t">
										<img src="${data[i].imgurl}" alt="" width="184" height="234">
									</div>
								</div>
							</div>
							<div class="fr">
								<div class="name">
									<a title="" href="javascript:;" target="_blank">${data[i].title}</a>
								</div>
								<div class="size">规格:95ml</div>
							</div>
						</td>
						<td class="td02">
							<span class="m-price">
								<span class="u-yen">¥</span>
								<strong class="u-prices">${data[i].sale}</strong>
							</span>
							<del class="mar-price">
								<span class="u-yen">¥</span>
								<span class="u-price">${data[i].original.slice(1)}</span>
							</del>
						</td>
						<td class="td03">
							<div class="quantity">
								<span class="l-no">-</span>
								<a href="javascript:;" class="l-y" action="minus">-</a>
								<input size_id="1373383828" buy_num_min="1" buy_num_max="2" name="" value="${data[i].qty}" type="text" class="tip">
								<span class="r-no">+</span>
								<a href="javascript:;" action="add" class="r-y">+</a>
								<div class="cart-error"></div>
							</div>
						</td>
						<td class="td04">
							<span class="m-price">
								<span class="u-yen">¥</span>
								<strong class="u-price">${data[i].sale}</strong>
							</span>
						</td>
						<td class="td05">
							<a href="javascript:;" class="del" value="1373383828" data-gusid:"${data[i].id}">删除</a>
							<div class="cart-error"></div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>`)
	}
				
}//for

	//删除商品
	$.each($(".del"),function(idx,item){
		$(this).click(function(){
			$("#delWindow").fadeIn(500);
			$("#delWindow").on("click",(e)=>{
				if(e.target.className == "over"){
					$(this).closest(".list").remove();
					$("#delWindow").fadeOut(300);
					$id = $(this).closest(".chuchuid").attr("data-eventid");
					$.ajax({
						url: '../api/shanchu.php',
						type: 'POST',
						data: {id:$id,
									uname:$nameli,
									},
						success: function(data){
										console.log(data);
									}
					})
					
					
				}else if(e.target.className == "hy"){
					$("#delWindow").fadeOut(300);
					console.log(777)
				}
				mani();
				zongshu();
			})
			
		})
	})
	$ly = $(".l-y");
	$ry = $(".r-y");
	//---
	$.each($ly,function(idx,item){
		$(this).on("click",function(){
			$a = Number($(this).closest(".list").find(".tip").val());
			$(this).closest(".list").find(".tip").val($a-1);
			if($a<=1){
				$(this).closest(".list").find(".tip").val(1)
			}
			mani();
			$shuliang = $(this).closest(".list").find(".tip").val();
			$id = $(this).closest(".chuchuid").attr("data-eventid");
			shull();
		})
	})
	//+++
	$.each($ry,function(idx,item){
		$(this).on("click",function(){
			$a = Number($(this).closest(".list").find(".tip").val());
			$(this).closest(".list").find(".tip").val($a+1);
			mani();
			$shuliang = $(this).closest(".list").find(".tip").val();
			$id = $(this).closest(".chuchuid").attr("data-eventid");
			shull();
		})
	})
	
	function shull(){
		$.ajax({
			url: '../api/gouwuche_sl.php',
			type: 'POST',
			data: {id:$id,
					uname:$nameli,
					qty:$shuliang},
			success: function(data){
			}
		});
	}

	
	//商品总数
	zongshu();
	function zongshu(){
		$tip = $(".tip");
		var $zonghe = 0;
		
		$.each($tip,function(idx,value){
			$zonghe+=$(this).length;
		})
		if($zonghe<=0){
			$("#shopping_cart_contain").remove();
			$(".cart4-no").fadeIn(500);
		}
		$(".fl").find("b").text($zonghe);
	}
	
	//金额总数
	mani();
	function mani(){
		$list = $(".list");//大框
		var jiages = 0;
		$.each($list,function(idx,item){
			jiage = parseInt($(this).find(".u-prices").text()*$(this).find(".tip").val());
			$(this).find(".u-price").text(jiage);
			jiages += jiage;
		})
		$("#amount_cart").find(".u-price").text(jiages);
		if(jiages<=99){
			var zongjin = jiages + parseInt($("#amount_shopping_cart_fee").text());
			$(".ov-pre").find(".u-price").text(zongjin);
			$("#totalPayPrice").find("li:first-child").show();
			$("#shopping_cart_active").find("p:first-child").show();
			$("#shopping_cart_active").find("p:last-child").hide();
		}else if(jiages>=99){
			$("#totalPayPrice").find("li:first-child").hide();
			$(".ov-pre").find(".u-price").text(jiages);
			$("#shopping_cart_active").find("p:first-child").hide();
			$("#shopping_cart_active").find("p:last-child").show();
		}
	}

	




		},//success
	})//ajax
}//if
	
	
	
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
})