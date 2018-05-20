    ;(function(){        	    
            var $box=$('.box');
			var $smallbox=$('.smallbox');
			var $smallglass=$('.smallglass');
		    var $bigbox=$('.bigbox');
		    var $bigpic=$('.bigpic');
		   
		    
		    $smallbox.on('mouseover',function(){
		    	$smallglass.css('visibility','visible');
				$bigbox.css('visibility','visible');
				$smallglass.width($bigbox.width()*$smallbox.width()/$bigpic.width()) 
				$smallglass.height($bigbox.height()*$smallbox.height()/$bigpic.height())
				
			$smallbox.on('mousemove',function(ev)
			{
				var ev=ev||window.event;
				var bili=$bigpic.width()/$smallbox.width();
				var l=ev.clientX-$box.offset().left-$smallglass.width()/1.7;
				var t=ev.clientY-$box.offset().top-$smallglass.width()/1.7;
				if (l<0) {
					l=0;
				}else if (l>=$smallbox.width()-$smallglass.width()-2) {
					l=$smallbox.width()-$smallglass.width()-2;
				}
				if (t<0) {
					t=0;
				}else if (t>=$smallbox.height()-$smallglass.height()-2) {
					t=$smallbox.height()-$smallglass.height()-2;
				}
				$smallglass.css('left',l)
				$smallglass.css('top',t)
				
				$bigpic.css('left',-bili*l)
				$bigpic.css('top',-bili*t)
				
			$smallbox.on('mouseout',function(){
				$bigbox.css('visibility','hidden');
				$smallglass.css('visibility','hidden');
			})
			///放大镜效果结束点
			 /*$.each($dLi,function (index,ele) {
			 	$(this).on('click',function () {
					$(this).css('border','1px solid red').siblings().css('border',0);
			 	})
			 }) */
			var $aLi=$('#ulist li');
		    var $dLi=$('.wares li');
		    var $cLi=$('.tinct li');
		    //选择物品的样式
			$dLi.on('click',function(){
				$(this).css('border','1px solid red').siblings('.wares li').css('border','1px solid rgb(204, 204, 204)');
			})
			$cLi.on('click',function(){
				$(this).css('border','1px solid red').siblings('.tinct li').css('border',0);
				$smallbox.find('img')[0].src = $(this).find('img')[0].src;
                    $bigbox.find('img')[0].src = $(this).find('img')[0].src;
			})
            $.each($aLi,function(index,ele){
              	$(this).on('mouseover',function(){
              		$(this).css('border','1px solid red').siblings().css('border',0);
              		$smallbox.find('img')[0].src = $(this).find('img')[0].src;
                    $bigbox.find('img')[0].src = $(this).find('img')[0].src;
              	})
              })
            
            //添加购物数量
            var $decrease=$('.decrease');
            var $increase=$('.increase');
				var $num=parseInt($('.count').val());
				
            var $kucun=$('.kucun').html();
            $decrease.on('click',function(){
            	$num--;
            	if($num<=1){
            		$num=1;
            		
            	}
            	$('.count').val($num);
            })
            $increase.on('click',function(){
            	$num++;
            	if($num>=$kucun){
            		$num=$kucun;
            	}
            	$('.count').val($num);
            })
              //将商品的id和数量存放的cookie和数据库里面。
			//定义两个数组接收存放的数量和id,提前约定存放cookie的名称。
            	var sidarr = [];
			var numarr = [];
			function getcookievalue(){
				if(getCookie('cartvid')){//cartsid：cookie里面id的名称
					sidarr=getCookie('cartvid').split(',');
				}
				
				if(getCookie('cartnum')){//cartnum：cookie里面数量的名称
					numarr=getCookie('cartnum').split(',');
				}
			}
			
			//第三步思路：通过判断商品的id是否存在上面获取的sid里面。
			//如果存在，已经在购物车里面了，否则将商品sid添加到cookie里面
			$('.gbtn').on('click', function() {
				var vid = $(this).parents('.box').find('.smallbox img').attr('sid');//当前按钮对应图片的sid
				getcookievalue();//获取商品的id和数量,放到对应的数组中,利用数组进行匹配
				if ($.inArray(vid, sidarr) != -1) {//是否存在cookie中
					//将之前的数据和当前存的数据相加，存放cookie里面
					if(getCookie('cartnum')==''){
							var $n=$('.count').val();
						numarr[$.inArray(vid,sidarr)]=$n;
						console.log($n);
						addCookie('cartnum', numarr.toString(), 7);//修改后的结果
						sidarr[$.inArray(vid,sidarr)]=vid;//将当前id添加到对应的位置。
        				addCookie('cartvid', sidarr.toString(), 7);//将整个数组添加到cookie
					}else{
						var num=parseInt(numarr[$.inArray(vid,sidarr)])+parseInt($('.count').val());
						numarr[$.inArray(vid,sidarr)]=num;
						addCookie('cartnum', numarr.toString(), 7);//修改后的结果
					}
					
				}else{//不存在
					sidarr.push(vid);//将当前id添加到数组里面。
        			addCookie('cartvid', sidarr.toString(), 7);//将整个数组添加到cookie
        			numarr.push($('.count').val());//存放输入的数量，默认是1
        			addCookie('cartnum', numarr.toString(), 7);
				}
			})
            
			})
			
		})
    })();