
		var oInput=document.querySelector('.txt');
		var oSearch=document.querySelector('.search');
		var oRecode=document.querySelector('.recode');
			var oUl=document.querySelector('.search ul');
			function search_sug(data){
				var arr=data.response.docs;
//				console.log(arr);
				var html='';
				if(arr.length>=10){
					for(var i=0;i<10;i++){
						html+='<li><a href="https://search.zhe800.com/search?keyword='+arr[i].word+'">'+arr[i].word+'<span>约'+arr[i].count+'结果</span></a></li>';
					}
				}else{
					for(var i=0;i<arr.length;i++){
						html+='<li><a href="https://search.zhe800.com/search?keyword='+arr[i].word+'">'+arr[i].word+'</a></li>';
					}
				}
				html+='<li><a href=""><em>关闭</em></a></li>'
				oUl.innerHTML=html;
			}
			
			oInput.oninput=function(){
				
					oSearch.style.display='block';
					oRecode.style.display='none';		
				
				var cScript=document.createElement('script');
				cScript.src='https://status.tuanimg.com/zhe800-search/suggestion/searchJsonp?callback=search_sug&word='+oInput.value+'&limit=10&offset=0&userSex=0';
				document.body.appendChild(cScript);
				
			}
			
oInput.onfocus=function(){
	       		
				oRecode.style.display='block';
				oInput.style.outline='none';
			}
oInput.onblur=function  () {
	
	oRecode.style.display='none';
	oSearch.style.display='none';
	
}
			