$(function(){
	var width = $(window).width();
	var n1 =  width - 300;
//	alert(n1)
	$(".sidedl dd dl .content").css("width", n1+ "px");
	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
//	$(".top").css("width",width-75 + "px");
	
	
	$('.sidedl  dt').click(function(){
        $(this).toggleClass('cur').siblings().removeClass('cur');
        $(this).next('dd').slideToggle().siblings('dd:visible').slideUp();

        var $this = $(this).siblings('dd').children('dl').children('dt').removeClass('cur');
        $this.next('dd').siblings('dd:visible').slideUp();
 	});
})