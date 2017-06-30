<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="lightbox/css/lightbox.css">
 
 <script src="bootstrap-3.3.7-dist/jquery-3.1.1.min.js"></script>
    <script src="lightbox/js/lightbox.min.js"></script>
 <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<title>照片2</title>
<style type="text/css">  
body{background-size: <span style="font-family: 微软雅黑; background-color: rgb(239, 239, 239);">cover</span>;font-size: 16px;background-image:url(picture/6.jpg);
background-attachment: fixed;width:100%;height:100%;background-repeat:no-repeat;
	background-size:cover;}  



.form{background: rgba(255,255,255,0.9); 
			margin:100px auto;}   
           
.fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}  
input[type="text"],input[type="password"]{padding-left:26px;}  
			
.pics {
    font-family: 'Open Sans', sans-serif;
	font-size: 18px;
	font-weight: normal;
	line-height: 34px;
}

.container-fluid {
	margin-left: 5%;
	margin-right: 5%;
}


.sigmapad {
	padding: 0 10px 10px 0 !important;
	margin: 0 !important;
}  
</style>  

<script type="text/javascript">
// <link rel="stylesheet" href="../../网站模板/模板三/css/screen.css">
function openLogin(){
   document.getElementById("login").style.display="block";
   document.getElementById("back").style.display="block";
   document.getElementById("register").style.display="none";
   document.getElementById("missPWD").style.display="none";

}
function closeLogin(){
   document.getElementById("login").style.display="none";
   document.getElementById("back").style.display="none";
   document.getElementById("register").style.display="none";
    document.getElementById("missPWD").style.display="none";
}
function openRegister(){
   document.getElementById("login").style.display="none";
   document.getElementById("register").style.display="block";
   document.getElementById("back").style.display="block";
   document.getElementById("missPWD").style.display="none";
}

function openMissPWD(){
   document.getElementById("login").style.display="none";
   document.getElementById("register").style.display="none";
   document.getElementById("missPWD").style.display="block";
   document.getElementById("back").style.display="block";
}

</script>




</head>

<body background="picture/tmanagePic.jpg">
<!-- 导航条 -->
<div style="width:100%; height:60px;" >
	<jsp:include page="navbar.jsp" />  
</div>
<!-- 导航条 结束-->


<!--用户倡言大标题开始-->
 <div class="page-header col-lg-4 col-lg-offset-4  col-sm-6 col-sm-offset-3 col-xs-8 col-xs-offset-2" style="clear:both;margin-top:10%;">
      <h1 style="color:#000;">临安之———<%=request.getAttribute("gallery").toString()%></h1>
</div>
<!--用户倡言大标题结束-->


<!--相册开始left  col-lg-10  col-lg-offset-1 col-sm-10 col-sm-offset-1 col-xs-12 -->
<%
    List list = (List) request.getAttribute("pictureList");
%>
<div class="pics left col-sm-9 col-sm-offset-1 col-xs-12" >
	<div style="margin-top:100px;" class="container-fluid">
		<a href="<%=list.get(0)%>" data-lightbox="image-1" data-title="Click the right half of the image to move forward."><img src="<%=list.get(0)%>" class=" sigmapad col-lg-4 col-md-6 col-sm-6 col-xs-12" style="height:250px;" /></a>

		<a href="<%=list.get(1)%>" data-lightbox="image-1" data-title="My caption"><img src="<%=list.get(1)%>" class=" sigmapad col-lg-4 col-md-6 col-sm-6 col-xs-12" style="height:250px;"  /></a>

		<a href="<%=list.get(2)%>" data-lightbox="image-1" data-title="My caption"><img src="<%=list.get(2)%>" class="sigmapad col-lg-4 col-md-8 col-sm-12 col-xs-12" style="height:250px;" /></a>

		<a href="<%=list.get(3)%>" data-lightbox="image-1" data-title="My caption"><img src="<%=list.get(3)%>" class=" sigmapad col-lg-8 col-md-4 col-sm-4 col-xs-12" style="height:500px;"  /></a>

		<a href="<%=list.get(4)%>"　data-lightbox="image-1" data-title="My caption"><img src="<%=list.get(4)%>" class="sigmapad col-lg-4  col-md-4   col-sm-4  col-xs-12" style="height:250px;" /></a>
        
        <a href="<%=list.get(5)%>" data-lightbox="image-1" data-title="Click the right half of the image to move forward."><img src="<%=list.get(5)%>" class=" sigmapad col-lg-4 col-md-4 col-sm-4 col-xs-12" style="height:250px;" /></a>

		<a href="<%=list.get(6)%>" data-lightbox="image-1" data-title="My caption"><img src="<%=list.get(6)%>" class=" sigmapad col-lg-6 col-md-6 col-sm-6 col-xs-12" style="height:250px;"  /></a>

		<a href="<%=list.get(7)%>" data-lightbox="image-1" data-title="My caption"><img src="<%=list.get(7)%>" class="sigmapad col-lg-6 col-md-6 col-sm-6 col-xs-12" style="height:250px;"/></a>
        
        <a href="<%=list.get(8)%>" data-lightbox="image-1" data-title="My caption"><img src="<%=list.get(8)%>" class=" sigmapad col-lg-3 col-md-3 col-sm-3 col-xs-12"  style="height:200px;" /></a>
    
       	<a href="<%=list.get(9)%>" data-lightbox="image-1" data-title="My caption"><img src="<%=list.get(9)%>" class="sigmapad col-lg-3  col-md-3   col-sm-3  col-xs-12" style="height:200px;" /></a>
        
        <a href="<%=list.get(10)%>" data-lightbox="image-1" data-title="My caption"><img src="<%=list.get(10)%>" class="sigmapad col-lg-3  col-md-3   col-sm-3  col-xs-12"  style="height:200px;"/></a>
        
        <a href="<%=list.get(11)%>" data-lightbox="image-1" data-title="My caption"><img src="<%=list.get(11)%>" class="sigmapad col-lg-3  col-md-3   col-sm-3  col-xs-12"  style="height:200px;"/></a>
        
	</div>

</div>
<!--相册结束>  -->


<!--用户上传须知开始-->
   <div class=" right col-sm-2  hidden-xs blog-sidebar" style="background:#999;margin-top:100px;">
          <div class="sidebar-module sidebar-module-inset">
            <h4>About</h4>
            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
          </div>
          
            <button type="button" class="btn btn-primary" style="text-indent:0px;opacity:0.8;
filter:alpha(opacity=40);" data-toggle="modal" data-target="#uploadBook">点击上传你的分享1</button>    
  </div>        
          
   <div class="col-sm-2  hidden-xs sidebar-module" style="margin-top:150px;">
            <h4>Archives</h4>
            <ol class="list-unstyled">
              <li><a href="#">March 2014</a></li>
              <li><a href="#">February 2014</a></li>
              <li><a href="#">January 2014</a></li>
              <li><a href="#">December 2013</a></li>
              <li><a href="#">November 2013</a></li>
              <li><a href="#">October 2013</a></li>
              <li><a href="#">September 2013</a></li>
              <li><a href="#">August 2013</a></li>
              <li><a href="#">July 2013</a></li>
              <li><a href="#">June 2013</a></li>
              <li><a href="#">May 2013</a></li>
              <li><a href="#">April 2013</a></li>
            </ol>
   </div>    
   
<!--用户上传须知结束-->
<!--首页末页开始-->
<nav aria-label="..." style="clear:both;">
  <ul class="pager">
    <li><a href="#">首页</a></li>
    <li><a href="#">前一页</a></li>
    <li><a href="#">后一页</a></li>
    <li><a href="#">末页</a></li>
  </ul>
</nav>
<!--首页末页结束-->
<!-- 页脚开始-->
<div class="footer">
	<jsp:include page="footer.jsp" />  
 </div>
<!-- 页脚结束-->

 </body>
</html>

