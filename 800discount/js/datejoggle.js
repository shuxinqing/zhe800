;(function(){
	$.ajax({
		type:"get",
		url:'http://127.0.0.1/testwwwww/800discount/PHP/index.php',
		async:true,
		success:function(d){
			var $date=JSON.parse(d);			
			var $subnavarr=$date.info1;//二级导航
			var $goodsarr=$date.info4;//产品列表
			var $bannerarr=$date.info2;//产品轮播
			var $pinpaiarr1=$date.info5;
			var $pinpaiarr2=$date.info6;
			var $subsrc=$('.subnav_left dl dd').eq(1);
			var $num=$bannerarr.length;
//      console.log($pinpaiarr1);
			window.name=$num;
			
			var $goodslist=$('#goodslist');
			var $banner=$('#seckill');
		
			var $pinpai1=$('#pinpai .brandol');
			console.log($pinpai1);
			var $pinpai2=$('#pinpai .brandul');
			var $str='';
			var $str3='';
			var $str4='';
			var $str5='';
			var $str6='';
			$.each($subnavarr,function (index,ele) {
				$str+=`<a href="">${$subnavarr[index].title}</a>`;
				
			})
		  
			$subsrc.html($str);//二级导航数据接口
			$.each($pinpaiarr1,function (index,ele) {
				$str5+=` <li>
				 		<a href=""class="brandsrc">
				 		
				 		<img src=${$pinpaiarr1[index].url} />	
				 		<p class="brand">
					 	     ${$pinpaiarr1[index].title}	 		  
				 		</p>
				 	   	</a>     
				 </li>`;
			
			})
			 $pinpai1.html($str5);
			 console.log($str5);
			 $.each($pinpaiarr2,function (index,ele) {
				$str6+=` <li>
				 		<a href=""class="brandsrc">			 		
				 		<img src=${$pinpaiarr2[index].url} />				 		
				 	   	</a>     
				 </li>`;
			
			})
			 $pinpai2.html($str6);
		$.each($goodsarr,function (index,ele) {
				$str4+=` <li>
				 		<a href=""class="imgsrc">
				 		<img src=${$goodsarr[index].url} />
				 		</a>
				 	
				 		<p class="goodsrc">
					 		<a href="">
					 	     ${$goodsarr[index].title}
					 		</a>
				 		  <span>剩余${$goodsarr[index].sall}天</span>
				 		</p>
				 	   	<div class="goods">
				 	   		<span>${$goodsarr[index].price}元</span>
				 			<em>收藏品牌</em>
				 		</div>     
				 </li>`;
			
			})
			 $goodslist.html($str4);//产品展示数据结果
			 
			 
			 $.each($bannerarr,function (index,ele) {
				$str3+=`<li>
				 	<a href="">
				 		
				 		<img src=${$bannerarr[index].url } />				 		
				 		
				 		<div class="goodsimg">
				 	     <span>￥ ${$bannerarr[index].price}</span>  
				 	     <p>${$bannerarr[index].title}</p>
				 	     </div>
				 	    <i class="fabric">${$bannerarr[index].active}</i>
				 	</a>			 	
				 </li>`;
			
			})
			   console.log($banner.width());//抢购数据结果
			 $banner.html($str3);



		}
	})
})();
