
				var $box=$('#banner');
            	var $overbtns=$('#banner ol li');
                var $picli=$('#banner ul li');
              
                var $prev=0;
                var $index=0;
                var $timer=0;
                $picli.not('.active').css('opacity',0);
                
                $box.hover(function(){            	
                	clearInterval($timer)
                },function(){
                $timer=setInterval(function(){
                    right();
                    },2000)	
                })
                
                $overbtns.on('mouseover',function(){
                	$index=$(this).index();
                	tab();
                })
                
              
          function right(){
                	$index++;
                	tab();
//              	console.log($picli.length);
                	if ($index>=$picli.length) {
                		$index=0;
                		tab();
                	}
                }
                
                function tab(){           	
                	$overbtns.eq($index).addClass('active').siblings('li').removeClass('active');      
                    	$picli.eq($index).stop(true).animate({
                    		opacity:1
                    	},1000)	
                    	$picli.eq($prev).stop(true).animate({
                    		opacity:0
                    	},1000)	
                    	
                    $prev=$index;       
                }         
                
                $timer=setInterval(function(){
                       right();
                },3000)