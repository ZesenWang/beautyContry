<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width =device-width, initial-scale=1, maximum-scale=1"/>
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script src="bootstrap-3.3.7-dist/jquery-3.1.1.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<title>首页</title>
<style type="text/css">
body{
	width:100%;
	height:100%;
}
/*$min-font-size:1.4rem;$max-font-size: 1.8rem;$min-screen: 600px;$max-screen: 1200px;
:root{font-size:10px;}
article{font-size:$min-font-size;}
@media(min-width:0px) and (max-width: 768px) {
    article{
       font-size: calc($min-font-size + (2 - 1.4) * ((100vw - $min-screen) / (1200 - 800)));
    }
}
 
@media(min-width:769px){
    article{
        font-size: $max-font-size;
    }
}*/




.footer{
	clear:both;
	background:#222;
	height: 60px;
	width: 100%;
	left: 0px;
    bottom: 0px;
	}
</style>
</head>

<body>
<!-- 导航条 -->
<div style="width:100%; height:60px;" >
	<jsp:include page="navbar.jsp" />  
</div>

<!-- 导航条 结束-->
<!-- 导航条 结束 col-xs-8 col-xs-offset-2 hidden-xs-->
 
<div style="margin-top:0%; width:100%; height:500px; background-image:url(picture/3.jpg);background-size:cover;">
    <div class="col-lg-4 col-lg-offset-4   col-sm-6 col-sm-offset-3  hidden-xs "  style="position:absolute;top:50%;margin-top:-160px;">
    	<p style="font-size:40px; font-weight:600; color:#FFF;">My History,My Future</p>
        <p style="font-size:40px; font-weight:600; color:#FFF;">走过我的历史，迈向我的未来。</p>
    </div>
    
    
    <div class=" col-xs-8 col-xs-offset-2 hidden-lg hidden-sm hidden-md"  style="position:absolute;top:50%;margin-top:-160px;">
        <p style="font-size:30px;font-weight:200;color:#FFF;">My History,My Fiture。</p>
       <p style="font-size:30px;font-weight:200; color:#FFF;">走过我的历史，迈向我的未来。</p>
    </div>
    
    
</div>



<!--col-lg-10 col-lg-offset-1  col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1-->
<!--<div class="col-lg-12 col-md-12 col-sm-12  col-xs-12 " style="margin-top:3%; margin-bottom:3%; width:100%;">
	<div class="col-lg-3 col-sm-6 col-md-6 col-xs-12">
    	 <img src="picture/test1.png" />
        <h3><strong>名书推荐</strong></h3><br /><span style="font-size:18px; color:#999;">为您展现最美的历史</span>
    </div>
    
    <div class="col-lg-3 col-sm-6   col-md-6 col-xs-12">
    	 <img src="picture/test2.png" />
        <h3><strong>悦耳朗读</strong></h3><br /><span style="font-size:18px; color:#999;">轻轻吟诵，悠悠回荡</span>
    </div>
    
    <div class="col-lg-3 col-sm-6  col-md-6 col-xs-12 ">
    	  <img src="picture/test3.png" />
        <h3><strong>流连山色</strong></h3><br /><span style="font-size:18px; color:#999;">十里美景不如你</span>
    </div>
    
    <div class="col-lg-3 col-sm-6 col-md-6 col-xs-12 ">
    	  <img src="picture/test4.png" />
        <h3><strong>书写历史</strong></h3><br /><span style="font-size:18px; color:#999;">执笔于纸，墨色晕染成独一无二的历史描述</span>
    </div>
</div>-->




<div class="container"  style="margin-top:3%;margin-bottom:5%;">
<div class="col-lg-10 col-lg-offset-2  col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1" >
	<a href="viewBook.action?curPage=0">
		<div class="col-lg-3 col-sm-6 col-md-6 col-xs-12">
	    	 <img src="picture/test1.png" />
	        <h3><strong>笔墨相传</strong></h3><br /><span style="font-size:18px; color:#999;">为您展现最美的历史</span>
	    </div>
    </a>
    
    <a href="viewAudio.action?curPage=0">
	    <div class="col-lg-3 col-sm-6   col-md-6 col-xs-12">
	    	 <img src="picture/test2.png" />
	        <h3><strong>丝竹人语声</strong></h3><br /><span style="font-size:18px; color:#999;">轻轻吟诵，悠悠回荡</span>
	    </div>
    </a>
    
    <a href="viewPicture.action?curPage=0">
	    <div class="col-lg-3 col-sm-6  col-md-6 col-xs-12 ">
	    	  <img src="picture/test3.png" />
	        <h3><strong>风景旧曾谙</strong></h3><br /><span style="font-size:18px; color:#999;">十里美景不如你</span>
	    </div>
    </a>
    
    <a href="viewStory.action?curPage=0">
	    <div class="col-lg-3 col-sm-6 col-md-6 col-xs-12 ">
	    	  <img src="picture/test4.png" />
	        <h3><strong>寒灯之上书</strong></h3><br /><span style="font-size:18px; color:#999;">执笔于纸，墨色晕染成独一无二的历史描述</span>
	    </div>
    </a>
</div>
</div>






<div class="container" style="margin-bottom:3%;">
	<div class="left col-lg-10 col-md-10 col-sm-10  col-xs-12">
		<div class="row">
           <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
        	  <div class="input-group">
  				<span class="input-group-addon" id="sizing-addon2">用户名</span>
  				<input type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon2">
			  </div>
            </div>
            
             <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
        	  <div class="input-group">
  				<span class="input-group-addon" id="sizing-addon2">邮箱</span>
  				<input type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon2">
			  </div>
            </div>
        <br /><br /><br />
        
  			<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
        	  <div class="input-group">
  				<span class="input-group-addon" id="sizing-addon2">请写下建议吧~~</span>
              <textarea class="form-control" id="InputTextArea" rows="5" placeholder="写下您

的建议或对本网站评价吧~~~您的支持与鼓励是我们最大的动力~~"></textarea></br>      
			  </div>
            </div> 
            
           <br /><br /><br /><br /><br />
          <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
          <button type="submit"   style="width:150px;" class="btn btn-default" >Submit</button>
          </div> 
		</div><!-- /.row -->
    </div><!-- /.left -->
    
    <div class="right col-lg-2 col-md-2  col-sm-2  col-xs-2">
    	<img src="picture/testErWeiMa.jpg"  />
        <p style="padding-top:10px">扫描二维码分享该网站_(:зゝ∠)_</p>
    </div>
    
</div>

<!--
<div class="" style=" clear:both;background-color: rgba(204,204,204,1);width:100%; ">
 <div class=" left col-lg-10 col-sm-10 col-md-10 col-xs-12">
    	 <form>
         
                 <div class="left col-lg-5 col-sm-5 col-md-5 form-group">
                <label for="InputUserName"><h4 style="color:#F00">UserName</h4></label>
                <input type="text" class="form-control" style="border:2px; width:90%;background:rgba(0, 0, 0, 0.4);  color:#FFF;" id="InputUserName" placeholder="用户

名">
              </div>

              
              <div class="right col-lg-5 col-sm-5 col-md-5  form-group">
                <label for="InputEmail1"><h4 style="color:#F00">Email address</h4></label>
                <input type="email" class="form-control" style="border:2px; width:90%;background:rgba(0, 0, 0, 0.4);  color:#FFF;" id="InputEmail1" placeholder="邮箱">
              </div>
              
          
                            
              <div class="left col-lg-11 col-sm-11 col-md-11  col-xs-12 form-group">
              <label for="InputTextArea"><h4 style="color:#F00">Leave Your Message</h4></label>
              <textarea class="form-control" style="border:2px; width:90%;background:rgba(0, 0, 0, 0.4);  color:#FFF;" id="InputTextArea" rows="5" placeholder="写下您

的建议或对本网站评价吧~~~您的支持与鼓励是我们最大的动力~~"></textarea></br>                     
              <button type="submit" style="width:150px;" class="btn btn-default" >Submit</button>
              </div>         
         </form>
       </div> 
    
    <div class="right" style="margin-top:50px; margin-right:2%;">
    	<img src="picture/testErWeiMa.jpg"  />
        <p style="padding-top:10px">扫描二维码分享该网站_(:зゝ∠)_</p>
    </div>
    
</div>-->


<!--rgba(204,204,204,1); PC端显示该板块。手机端隐藏该板块.col-lg-offset-1col-md-offset-1col-sm-offset-1col-xs-offset-1
。<div style="background-color:rgba(204,204,204,0.3); ">
<table border="0px solid" style=" text-align:center; margin:65px auto; width:90%">
	<tr>
    	<td><div >
             <form>
                <div class="form-group">
                <label for="InputUserName"><h4 style="color:#F00">UserName</h4></label>
                <input type="text" class="form-control" style="border:2px; width:90%;background:rgba(0, 0, 0, 0.4);  color:#FFF;" id="InputUserName" placeholder="用户

名">
              </div>
             
              <div class="form-group">
                <label for="InputEmail1"><h4 style="color:#F00">Email address</h4></label>
                <input type="email" class="form-control" style="border:2px; width:90%;background:rgba(0, 0, 0, 0.4);  color:#FFF;" id="InputEmail1" placeholder="邮箱">
              </div>
 
        </td>
        <td>             
              <div class="form-group">
              <label for="InputTextArea"><h4 style="color:#F00">Leave Your Message</h4></label>
              <textarea class="form-control" style="border:2px; width:90%;background:rgba(0, 0, 0, 0.4);  color:#FFF;" id="InputTextArea" rows="5" placeholder="写下您

的建议或对本网站评价吧~~~您的支持与鼓励是我们最大的动力~~"></textarea>
              </div>
              
              <button type="submit" style="width:90%" class="btn btn-default" >Submit</button>
              </form>
            </div>
        </td>
        <td>
        <img src="picture/testErWeiMa.jpg" height="150px" width="150px" />
        <p style="padding-top:10px">扫描二维码分享该网站_(:зゝ∠)_</p>
        </td>
    </tr>
</table>
</div> 


 <div class=" left col-lg-10 col-sm-10 col-md-10 col-xs-12">
    	 <form>
         
                 <div class="left col-lg-5 col-sm-5 col-md-5 form-group">
                <label for="InputUserName"><h4 style="color:#F00">UserName</h4></label>
                <input type="text" class="form-control" style="border:2px; width:90%;background:rgba(0, 0, 0, 0.4);  color:#FFF;" id="InputUserName" placeholder="用户

名">
              </div>

              
              <div class="right col-lg-5 col-sm-5 col-md-5  form-group">
                <label for="InputEmail1"><h4 style="color:#F00">Email address</h4></label>
                <input type="email" class="form-control" style="border:2px; width:90%;background:rgba(0, 0, 0, 0.4);  color:#FFF;" id="InputEmail1" placeholder="邮箱">
              </div>
              
          
                            
              <div class="left col-lg-11 col-sm-11 col-md-11  col-xs-12 form-group">
              <label for="InputTextArea"><h4 style="color:#F00">Leave Your Message</h4></label>
              <textarea class="form-control" style="border:2px; width:90%;background:rgba(0, 0, 0, 0.4);  color:#FFF;" id="InputTextArea" rows="5" placeholder="写下您

的建议或对本网站评价吧~~~您的支持与鼓励是我们最大的动力~~"></textarea></br>                     
              <button type="submit" style="width:150px;" class="btn btn-default" >Submit</button>
              </div>         
         </form>
       </div> 
    
    <div class="right" style="margin-top:50px; margin-right:2%;">
    	<img src="picture/testErWeiMa.jpg"  />
        <p style="padding-top:10px">扫描二维码分享该网站_(:зゝ∠)_</p>
    </div>
    
-->






<!-- 页脚开始-->
<div class="footer">
	<jsp:include page="footer.jsp" />  
 </div>
<!-- 页脚结束-->
</body>
</html>
