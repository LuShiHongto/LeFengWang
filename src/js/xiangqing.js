jQuery(function($){
	//接收传参
	var parames = decodeURI(location.search).slice(1);
	var parameslen = parames.split("&");
	var paramesobj = {};
	var $dityp;
	var $input;
	var $tip;
	var $tips;
	
	var $zonghe;
	gouwuchexiao();
	parameslen.forEach(function(item){
		var arr = item.split("=");
		paramesobj[arr[0]] = arr[1];
	});
	
	var names = paramesobj.name.slice(1,-2);
	var zhekous = paramesobj.zhekou.slice(1,-1);
	
	
	//判断不同位置的传参
	if(!/^..\//.test(paramesobj.imgurl)){
		var zhekoue = paramesobj.zhekou.slice(0,-1);
		
		//下滑购物车数据生成
		$("#detail-nav").append( `<span>
				<strong>¥<span>${paramesobj.sale}</span></strong>
				<b>${paramesobj.original}</b>
				<a href="javascript:;" class="joinCar2 addbtn" id="joinShopping">加入购物车</a>
			</span>
			<a href="#detail" class="down" tag="tabc">商品详情</a>
			<a href="#f-service" tag="lfcn">乐蜂承诺</a>
			<div class="tip3" style="display: none;">
				<p class="tip_mes_box"></p>
				<dl>
					<dt>
						<img width="90" height="114" src="../${paramesobj.imgurl}">
					</dt>
					<dd>
						${paramesobj.title}    
						<p><span><b>¥</b>${paramesobj.sale}</span><del>${paramesobj.original}</del></p>
					</dd>
				</dl>
			</div>` )
			//平面数据生成
		$(".commodity-t-composite").append( `<div class="bigProduct-c" data-sid="${paramesobj.id}">
            <dl>
                <dd class="dity-brand-time">
                    <input type="hidden" id="dity_time" value="" />
                    <span id="dity-time-c" class="dity-time-c"> </span>
                    <span class="dity-brand-logo">
                        <a title="${names}" href="liebiao.html">
							<img src="../${paramesobj.imgurl}"/>
                        </a>
                    </span>
                </dd>
                <dd>
                    <h1>
                    	<i></i>${paramesobj.title}</h1>
                    <p>${paramesobj.intro}</p>
                </dd>
                <dt>
					<div class="dity-pic">
						<img src="../${paramesobj.imgurl}">
						<div class="dity-tags">
							<span>${paramesobj.pro}</span>
						</div>
						<div class="dity-share">
							<div class="share">
								<span style="display: none;">
									<b class="share_b1"></b><b class="share_b2"></b>
									<a class="sina" title="分享到新浪微博" href=""></a>
									<a class="qqt" title="分享到腾讯微博" href=""></a>
									<a class="qqz" title="分享到QQ空间" href=""></a>
									<a class="weixin" title="分享到微信" href=""></a>
								</span>
								<i></i><b style="font-weight:noraml;font-size:12px;">分享到</b>
							</div>
						</div>
					</div>
                    <div class="dity">
                        <div class="dity-cont"><input id="dity_time" type="hidden" value="1546185540" />
                            <div class="dity-price-c ">
                                <span class="dity-title">价格</span>
                                <span>
                                    <b class="lighten">¥</b>
                                    <strong>${paramesobj.sale}</strong>
                                    <b class="dity-countdown">${zhekoue}</b>
                                    <b class="marketPrice-s">${paramesobj.original}</b>
                                </span>
                            </div>
                            <div class="dity-promotions">
                                <span class="dity-title">优惠</span>
                                <div class="dity-prts">
                                    <div class="dity-promotion">
                                       <i class="l4" title="免邮"></i>全场满99包邮                                    </div>
                                </div>
                            </div>
							<div class="dity-sendTime"></div>
                            <div class="dity-size clearfloat">
                                <ol>
                                    <li class="dity-size-l">购买数量</li>
                                    <li class="dity-size-r">
                                        <span class="dity-m" id="dity-m"></span>
                                        <input type="text" value="1" id="dity-input" class="dity-input" maxlength="2"/>
                                        <span class="dity-p" id="dity-p"></span>
                                    </li>
                                    <li class="dity-size-x">
																			<b id="buyNum_tip" style="display:none;">此商品最少购买一件</b>
																			<b id="buyNum_tips" style="display:none;">别贪心，您最多可购买2件</b>
																		</li>
                                </ol>
                            </div>
                            <a id="qianggou" href="javascript:;" class="joinCar ldb1">
                                <b class="add-to-cart-pro">加入购物车</b>
                            </a>
                            <span class="pollen-text" title="花粉可在乐蜂APP抵现金使用哦">
								购买最多可获得<b>29个</b>花粉
							</span>
                        </div>
                    </div>
                </dt>
            </dl>
        </div>` )
		shengcheng();
	}else{
		toptou()
		//下滑购物车数据生成
		$("#detail-nav").append( `<span>
                <strong>¥<span>${paramesobj.sale}</span></strong>
                <b>${paramesobj.original}</b>
                <a href="javascript:;" class="joinCar2 addbtn" id="joinShopping">加入购物车</a>
            </span>
            <a href="#detail" class="down" tag="tabc">商品详情</a>
            <a href="#f-service" tag="lfcn">乐蜂承诺</a>
            <div class="tip3" style="display: none;">
                <p class="tip_mes_box"></p>
                <dl>
                    <dt>
						<img width="90" height="114" src="${paramesobj.imgurl}">
					</dt>
                    <dd>
                    	${paramesobj.title}    
                    	<p><span><b>¥</b>${paramesobj.sale}</span><del>${paramesobj.original}</del></p>
					</dd>
                </dl>
            </div>` )
		//平面数据生成
		$(".commodity-t-composite").append( `<div class="bigProduct-c" data-sid="${paramesobj.id}">
			<dl>
				<dd class="dity-brand-time">
					<input type="hidden" id="dity_time" value="" />
					<span id="dity-time-c" class="dity-time-c"> </span>
					<span class="dity-brand-logo">
						<a title="${names}" href="liebiao.html">
							<img src="${paramesobj.imgurl}"/>
						</a>
					</span>
				</dd>
				<dd>
					<h1>
						<i></i>${paramesobj.title}</h1>
					<p>${paramesobj.intro}</p>
				</dd>
				<dt>
					<div class="dity-pic">
						<img src="${paramesobj.imgurl}">
						<div class="dity-tags">
							<span>${paramesobj.pro}</span>
						</div>
						<div class="dity-share">
							<div class="share">
								<span style="display: none;">
									<b class="share_b1"></b><b class="share_b2"></b>
									<a class="sina" title="分享到新浪微博" href=""></a>
									<a class="qqt" title="分享到腾讯微博" href=""></a>
									<a class="qqz" title="分享到QQ空间" href=""></a>
									<a class="weixin" title="分享到微信" href=""></a>
								</span>
								<i></i><b style="font-weight:noraml;font-size:12px;">分享到</b>
							</div>
						</div>
					</div>
					<div class="dity">
						<div class="dity-cont">            	                        	                        	<input id="dity_time" type="hidden" value="1546185540" />
							<div class="dity-price-c ">
								<span class="dity-title">价格</span>
								<span>
									<b class="lighten">¥</b>
									<strong>${paramesobj.sale}</strong>
									<b class="dity-countdown">${zhekous}</b>
									<b class="marketPrice-s">${paramesobj.original}</b>
								</span>
							</div>
							<div class="dity-promotions">
								<span class="dity-title">优惠</span>
								<div class="dity-prts">
									<div class="dity-promotion">
									<i class="l4" title="免邮"></i>全场满99包邮                                    </div>
								</div>
							</div>
							<div class="dity-sendTime"></div>
							<div class="dity-size clearfloat">
								<ol>
									<li class="dity-size-l">购买数量</li>
									<li class="dity-size-r">
										<span class="dity-m" id="dity-m"></span>
										<input type="text" value="1" id="dity-input" class="dity-input" maxlength="2"/>
										<span class="dity-p" id="dity-p"></span>
									</li>
									<li class="dity-size-x">
										<b id="buyNum_tip" style="display:none;">此商品最少购买一件</b>
										<b id="buyNum_tips" style="display:none;">别贪心，您最多可购买2件</b>
									</li>
								</ol>
							</div>
							<a id="qianggou" href="javascript:;" class="joinCar ldb1">
								<b class="add-to-cart-pro">加入购物车</b>
							</a>
							<span class="pollen-text" title="花粉可在乐蜂APP抵现金使用哦">
								购买最多可获得<b>29个</b>花粉
							</span>
						</div>
					</div>
				</dt>
			</dl>
		</div>` )
		shengcheng();
	}
	
	//顶部购物车显示隐藏
	$("#joinShopping").on("mouseover",function(){
		$(".tip3").css("display","block");
	})
	$("#joinShopping").on("mouseout",function(){
		$(".tip3").css("display","none");
	})
	
	//添加购物车============
	$jiagou = $(".add-to-cart-pro");
	function shengcheng(){
		$ditym = $("#dity-m");
		$input = $("#dity-input");
		$dityp = $("#dity-p");
		$tip = $("#buyNum_tip");
		$tips = $("#buyNum_tips");
	}
	
	
	
	if($.cookie("loginName") != null){
		$a = 1;
		$ditym.on("click",function(){
			$a--;
			if($a<2){
				$tip.css("display","none");
			}
			if($a<=0){
				$input.val(1);
				$a = $input.val();
				$tip.css("display","none");
				$tip.css("display","block");
			}
			$input.val($a);
			$qty = $input.val();
			// console.log($qtys)
		})
		
		$dityp.on("click",function(){
			$a++;
			if($a>0){
				$tip.css("display","none");
			}
			if($a>2){
				$a = $input.val(2);
				$a = $input.val();
				$tips.css("display","block");
			}
			$input.val($a);
			$qtys = $input.val();
			// console.log($qtys)
		})
		
		$names = $.cookie("loginName");//用户
		$titles = paramesobj.title;//介绍
		$sales = paramesobj.sale;//最低价格
		$original = paramesobj.original;//最高价格
		$id = paramesobj.id;//id
		$imgurls = paramesobj.imgurl;//照片路径
		$jiagou.on("click",function(){
			zongshu()
			$qty = $input.val();
			$.ajax({
				url: '../api/xiangqing.php',
				type: 'POST',
				data:{id : $id,
							name : $names,
							imgurl : $imgurls,
							title : $titles,
							sale : $sales,
							original : $original,
							qty : $qty,
							},
					success: function(data){
							if(data == "true"){
								$(".alt-succ").fadeIn(500);//购物车添加成功
								setTimeout(function(){$(".alt-succ").fadeOut(500)},3500);
								
							}
					}
			})
		})
		$("#joinShopping").on("click",function(){
			zongshu()
			$qty = $input.val();
			$.ajax({
				url: '../api/xiangqing.php',
				type: 'POST',
				data:{id : $id,
							name : $names,
							imgurl : $imgurls,
							title : $titles,
							sale : $sales,
							original : $original,
							qty : $qty,
							},
					success: function(data){
							if(data == "true"){
								$(".alt-succ").fadeIn(500);//购物车添加成功
								setTimeout(function(){$(".alt-succ").fadeOut(500)},3500);
								
							}
					}
			})
		})
	}else{
		$("#qianggou").on("click",function(){
			$("#qianggou").attr("href","denglu.html");
		})
	}
	function gouwuchexiao(){
			$nameli = $.cookie("loginName");
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
			//小购物车显示隐藏
			$(".Chead-shopping").on("mouseover",function(){
				
				//顶部显示
				$(".shopping-list").css("display","block");
				if($zonghe<=0){
					//未添加显示
					$(".noshop").css("display","block");
				}else if($zonghe>0){
					//已添加显示
					$(".haveshop").css("display","block");
				}
			})	
			$(".Chead-shopping").on("mouseout",function(){
				$(".shopping-list").css("display","none");
				$(".noshop").css("display","none");
				
			})
			
			//点击小购物车跳转
			$(".shopping-list").on("click",function(){
				console.log(666)
				location.href = 'gouwuche.html';
			})
	}
	//商品数量
	function zongshu(){
		$shopping = $(".shopping-pro");
		$zonghe = 0;
		$.each($shopping,function(idx,value){
			$zonghe+=$(this).length;
		})
		$("#totalProduct").text($zonghe);
		$(".shopping-btn").find("strong").text($zonghe);
		$(".shopping-list-title").find("strong").text($zonghe);
	}
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
	
	
	
	
	
	//顶部购物车数据
	function toptou(){
		$(".path").append(` <b><a href="../index.html" target="_blank">乐蜂网首页</a> <i class="lf-icon lf-icon-right"></i></b>
        <b><a href="liebiao.html" target="_blank">${paramesobj.name}</a> <i class="lf-icon lf-icon-right"></i></b>${paramesobj.title}`)
	}
	
	
	//返回顶部==================
	window.onscroll = function () {
        if(window.scrollY >= 792) {
            $("#detail-nav").css({"display":"block","position":"fixed","top":"0px"});
			$("#detail-nav").addClass("fixing")
        }else if(window.scrollY <= 792) {
						$("#detail-nav").css({"position":"absolute","top":"792px"});
						$("#detail-nav").removeClass("fixing")
				};
		
        if(window.scrollY >= 300) {
            $(".scroll-to-top").css("display","block");
        }else if(window.scrollY <= 300) {
            $(".scroll-to-top").css("display","none");
        };
	}
	//返回顶部
	$("#scroll-to-top").toTop();
	
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
		tll +='欢迎来到乐蜂，请&nbsp;'+'<a href="denglu.html">'+'登录'+'</a><span>&nbsp; | &nbsp;</span><a href="zhuce.html">'+'免费注册'+'</a>';
		$Chead.append(tll);
	}
	
})