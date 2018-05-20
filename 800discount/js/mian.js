;(function() {
	var $left=$('#left');
	var $right=$('#right');
	var $secKill=$('#seckill');
	var $liLength=window.name;//第一次值为0
	var $lunNum=Math.ceil($liLength/6);

	var $ulLeft=$secKill.offset().left;
	var $maxwidth=($lunNum-1)*1200;
	var $num=0;
	var $count=0;
//		console.log($maxwidth);
	$right.on('click',function  () {
		$secKill.stop(false)
		$count++;
		if ($count>=$lunNum) {
			$count=0;
			$secKill.css("left",0);
			$num=0;
	
			
		} else{
			$num+=-1200;
			$secKill.animate({
				left:$num
			},1000)
//			$secKill.css("left",$num);
    	
	   		
		}
		console.log($secKill.offset().left)
	     
	})
	
	$left.on('click',function  () {
		$secKill.stop(false)
		$count--;
		if ($count<0) {
			$count=$lunNum;
			
			$secKill.css("left",-$maxwidth);
				$num=-$maxwidth;
			
			
		} else{
			$num+=1200;
			$secKill.animate({
				left:$num
			},1000)
//			$secKill.css("left",$num);
//	    	console.log($secKill.offset().left);
	   		
		}
		
	     
	})
}	
)();
