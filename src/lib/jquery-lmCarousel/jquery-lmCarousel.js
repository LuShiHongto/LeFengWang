//为了在函数内部完全使用$,使用匿名函数，将jQuery作为实参赋值给$
  //1.init初始化，ul>li>img
  // $self指的是实例对象 $(".box")
                
(function($){
    $.fn.lmCarousel = function(options){
        let defaults = {
            imgs : [],
            width : 300,
            height : 300,
            duration : 1000,
            type : 'vertical',
            idx : 0,
        }
        this.each(function(idx,item){
            $self = $item;
            let opt =  Object.assign({},defaults,options);
            let len = opt.imgs.length;
            let $ul;
             let init = () =>{
                $ul = $("<ul/>");
                for(var i=0;i<len;i++){
                    let $li = $("<li/>");
                    $('<img src="'+opt.imgs[i]+'">').width(opt.width).height(opt.height).appendTo($li);
                    $li.appendTo($ul);
                }
                $ul.appendTo($self);
                $self.addClass('lmCarousel').width(opt.width).height(opt.height);
                if(type == 'horizontal'){
                    $ul.addClass('horizontal');
                    $ul.width(opt.width*len);
                }
                if(type == 'fade'){
                    $ul.addClass("fade");
                    $ul.width(opt.width).height(opt.height);
                    $ul.children().css('opacity', 0);
                    $ul.children().eq(opt.idx).css('opacity', 1);
                }
                move();
            }
            let move = ()=>{
                $self.timer = setInterval(function(){
                    opt.idx++;
                    if(type == "horizontal"){
                        $ul.animate({"left":-opt.width*opt.idx + 'px'}, 1000)
                    }
                    if(type == "vertical"){
                         $ul.animate({"top":-opt.height*opt.idx + 'px'}, 1000)
                    }
                }, opt.duration)
            }
            init();
        })
       
    }
    








})(jQuery);