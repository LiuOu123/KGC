$(function(){
	/*四个图片hover*/
	$("#sihover1").hover(function(){
		$(this).attr('src',"/static/statics/images/11111.png")
	},function(){
		$(this).attr('src',"/static/statics/images/111.png")
	})
	
	$("#sihover2").hover(function(){
		$(this).attr('src',"/static/statics/images/22222.png")
	},function(){
		$(this).attr('src',"/static/statics/images/222.png")
	})
	
	$("#sihover3").hover(function(){
		$(this).attr('src',"/static/statics/images/33333.png")
	},function(){
		$(this).attr('src',"/static/statics/images/333.png")
	})
	
	$("#sihover4").hover(function(){
		$(this).attr('src',"/static/statics/images/44444.png")
	},function(){
		$(this).attr('src',"/static/statics/images/444.png")
	})
	
	/*新闻hover*/
	$(".xinwenhover").hover(function(){
		$(this).css({"color":"#AECA2D","text-decoration":"underline"})
	},function(){
		$(this).css({"color":"#5A5A5A","text-decoration":"none"})
	})
	
	$(".more").hover(function(){
		$(this).css("text-decoration","underline")
	},function(){
		$(this).css("text-decoration","none")
	})
	
	/*悬停让该元素上移*/
	$(".xinwentupian").hover(function(){
     $(this).animate({
        'top' : '+75px'
      },'normal');
    },function(){
      $(this).animate({
        'top' : '+85px'
      },'normal');      
    });
    
    $("#zoujin1").hover(function(){
     $(this).animate({
        'top' : '+45px'
      },'normal');
    },function(){
      $(this).animate({
        'top' : '+55px'
      },'normal');      
    });
    
    /*走进课工场*/
   $("#zoujinshipin").hide();
	$("#zoujintupian").click(function(){
		 $("#zoujinshipin").show();
		 $(this).hide();
	})
	
	 /*课程体系*/
   $(".kecheng").hover(function(){
     $(this).animate({
        'top' : '+45px'
      },'normal');
    },function(){
      $(this).animate({
        'top' : '+55px'
      },'normal');      
    });
    
    /*学院服务*/
 $("#xueyuanfuwushipin1").hide();
 $("#xueyuanfuwushipin2").hide();
 $("#xueyuanfuwushipin3").hide();
 $("#xueyuanfuwushipin4").hide();
 $("#xueyuanfuwushipin5").hide();

$("#xiaotu1").click(function(){
$("#xueyuanfuwushipin2").hide();
 $("#xueyuanfuwushipin3").hide();
 $("#xueyuanfuwushipin4").hide();
 $("#xueyuanfuwushipin5").hide();
 $("#xueyuanfuwushipin1").show();
 $("#xueyuanfuwudatu").hide();
})
$("#xiaotu2").click(function(){
$("#xueyuanfuwushipin2").show();
 $("#xueyuanfuwushipin3").hide();
 $("#xueyuanfuwushipin4").hide();
 $("#xueyuanfuwushipin5").hide();
 $("#xueyuanfuwushipin1").hide();
 $("#xueyuanfuwudatu").hide();
})
 $("#xiaotu3").click(function(){
$("#xueyuanfuwushipin2").hide();
 $("#xueyuanfuwushipin3").show();
 $("#xueyuanfuwushipin4").hide();
 $("#xueyuanfuwushipin5").hide();
 $("#xueyuanfuwushipin1").hide();
 $("#xueyuanfuwudatu").hide();
})
 $("#xiaotu4").click(function(){
$("#xueyuanfuwushipin2").hide();
 $("#xueyuanfuwushipin3").hide();
 $("#xueyuanfuwushipin4").show();
 $("#xueyuanfuwushipin5").hide();
 $("#xueyuanfuwushipin1").hide();
 $("#xueyuanfuwudatu").hide();
})
 $("#xiaotu5").click(function(){
$("#xueyuanfuwushipin2").hide();
 $("#xueyuanfuwushipin3").hide();
 $("#xueyuanfuwushipin4").hide();
 $("#xueyuanfuwushipin5").show();
 $("#xueyuanfuwushipin1").hide();
 $("#xueyuanfuwudatu").hide();
})
 $("#xueyuanfuwudatu").click(function(){
 	$("#xueyuanfuwudatu").hide();
 	$("#xueyuanfuwushipin2").hide();
 $("#xueyuanfuwushipin3").hide();
 $("#xueyuanfuwushipin4").hide();
 $("#xueyuanfuwushipin5").hide();
 $("#xueyuanfuwushipin1").show();
 })
 
 /*教学就业*/
$(".cardjiao").hover(function(){
     $(this).animate({
        'top' : '+45px'
      },'normal');
    },function(){
      $(this).animate({
        'top' : '+55px'
      },'normal');      
    });
 
 /*合作*/
$("#hezuoyou").hover(function(){
	$(this).css("color","#AECA2D");
	$("#hezuotupian").attr("src","/static/statics/images/hezuo1.png");
},function(){
	$(this).css("color","black");
}
)


$("#hezuoxiao").hover(function(){
	$(this).css("color","#AECA2D");
	$("#hezuotupian").attr("src","/static/statics/images/hezuo2.png");
},function(){
	$(this).css("color","black");
})


})
