$(function(){
	var i=1;
	function initBanner(){
		 var $uls = $(".img_box .img_ul");
		 var $first = $uls.children().first().clone();
		 var $last = $uls.children().last().clone();
		 $uls.append($first);//append() - 在被选元素的结尾插入内容
		 $uls.prepend($last);//prepend() - 在被选元素的开头插入内容
	}
	initBanner();
	$('.redio li').click(function(){
		// clearInterval(lunbo);
		i=$(this).index()+1;
		$('.img_box .img_ul').animate({
			left:-100*i+"%",
		},'slow');
		$(this).addClass('active').siblings().removeClass('active');
		//console.log(i)
		// lunbo=setInterval(auto,3000);
	})
	
	function auto(){
		i++;
		$('.redio li').eq(i-1).addClass('active').siblings().removeClass('active');
		$('.img_box .img_ul').animate({
			left:-100*i+"%",
		},'slow',function(){
			if(i==7){
				$(this).css({left:-100+'%'});
				$('.redio li').eq(0).addClass("active").siblings().removeClass("active");
				i = 1;
			}
		})
		//console.log(i)
	}
	// var lunbo=setInterval(auto,3000);
	// $(".img_box").mouseover(function(){
	// 	clearInterval(lunbo);
	// }).mouseout(function(){
	// 	lunbo=setInterval(auto,3000);
	// })
})