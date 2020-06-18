$(function(){
	var i=1;
	// $(".img_box").css('height',$('.img_box .img_ul li img')[0].clientHeight);
	// window.onresize = () =>{//监听窗口大小变化
	// 	$(".img_box").css('height',$('.img_box .img_ul li img')[0].clientHeight);
	// }
	function initBanner(){
		 var $uls = $(".list_big .list_box");
		 var $first = $uls.children().first().clone();
		 var $last = $uls.children().last().clone();
		 $uls.append($first);//append() - 在被选元素的结尾插入内容
		 $uls.prepend($last);//prepend() - 在被选元素的开头插入内容
	}
	initBanner();
	$('.list li').click(function(){
		clearInterval(lunbo);
		i=$(this).index()+1;
		$('.list_big .list_box').animate({
			left:-100*i+"%",
		},'slow');
		$(this).addClass('active').siblings().removeClass('active');
		//console.log(i)
		lunbo=setInterval(auto,5000);
	})
	
	function auto(){
		i++;
		$('.list li').eq(i-1).addClass('active').siblings().removeClass('active');
		$('.list_big .list_box').animate({
			left:-100*i+"%",
		},'slow',function(){
			if(i==7){
				$(this).css({left:-100+'%'});
				$('.list li').eq(0).addClass("active").siblings().removeClass("active");
				i = 1;
			}
		})
		//console.log(i)
	}
	var lunbo=setInterval(auto,5000);
	$(".list_big").mouseover(function(){
		clearInterval(lunbo);
	}).mouseout(function(){
		lunbo=setInterval(auto,5000);
	})
})