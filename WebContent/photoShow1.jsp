<%@ page import="java.util.List" %>
<%@ page import="com.po.Picture" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script src="bootstrap-3.3.7-dist/jquery-3.1.1.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<!-- include the RTL css files-->
<link rel="stylesheet" href="alertify.js-0.3.11/themes/alertify.core.css">
<link rel="stylesheet" href="alertify.js-0.3.11/themes/alertify.default.css">

<!-- include alertify script -->
<script src="alertify.js-0.3.11/lib/alertify.min.js"></script>
<title>风景旧曾谙</title>
<style type="text/css">
body{
	background-image:url(picture/6.jpg);
	background-size:cover;
	background-attachment: fixed;
	width:100%;
	height:100%;
    background-repeat:no-repeat;
}
.footer{
	clear:both;
	margin-top:5%;
	background:#222;
	height: 60px;
	width: 100%;
	left: 0px;
    bottom: 0px;
	}
	

.p1_box {
    position: relative;
    padding: 1px;
    margin-bottom: 36px;
    border: 2px solid #999;
	background-color: #CCC;
}
.p1_box a.bot {
    margin-top: 1px;
    padding: 22px 0 20px 22px;
    border: 2px solid #ff6765;
    display: block;
    position: relative;
    background-color: #ff6765;
    color: #2a394e;
	font-size:24px;
	text-decoration:none;
}

.p1_box a.bot span {
    display: block;
    position: absolute;
    color: #fff;
    font-size: 18px;
    line-height: 18px;
    right: -1px;
    top: -1px;
    bottom: -1px;
    background-color: #ff8382;
    width: 81px;
    text-align: center;
    padding-top: 18px;
}

.p1_box a.bot:hover {
    background-color: #fff;
}

.p1_box.left {
    margin-right: 23px;
}

.p1_box.right {
    margin-left: 23px;
}

.p1_box.right:after {
    top: 126px;
    left: -12px;
    width: 0px;
height: 0px;
border-style: solid;
border-width: 10px 12px 10px 0;
border-color: transparent #ff6360 transparent transparent;
}

.p1_box.right:before {
    left: -39px;
    right: auto;
    top: 132px;
}

.p1_box:after {
    position: absolute;
    width: 0px;
    content: '';
    right: -12px;
    top: 70px;
    height: 0px;
    border-style: solid;
    border-width: 10px 0 10px 12px;
    border-color: transparent transparent transparent #ff6360;

}

.p1_box:before {
    width: 9px;
    height: 9px;
    border-radius: 55px;
    /*content: '';*/
    right: -40px;
    z-index: 30;
    position: absolute;
    display: block;
    top: 76px;
    background-color: #ff6360;
}


.box{
		text-align: center;
		overflow: hidden;
		position: relative;
	}
.box:before{
		content: "";
		width: 0;
		height: 100%;
		background: #000;
		padding: 14px 18px;
		position: absolute;
		top: 0;
		left: 50%;
		opacity: 0;
		transition: all 500ms cubic-bezier(0.47, 0, 0.745, 0.715) 0s;
	}
	.box:hover:before{
		width: 100%;
		left: 0;
		opacity: 0.5;
	}
	.box .box-content{
		width: 100%;
		padding: 14px 18px;
		color: #fff;
		position: absolute;
		top: 38%;
		left: 0;
	}
	.box .title{
		font-size: 25px;
		font-weight: 600;
		line-height: 30px;
		text-transform: uppercase;
		margin: 0;
		opacity: 0;
		transition: all 0.5s ease 0s;
	}
	.box .post{
		font-size: 15px;
		text-transform: capitalize;
		opacity: 0;
		transition: all 0.5s ease 0s;
	}
	.box:hover .title,
	.box:hover .post{
		opacity: 1;
		transition-delay: 0.7s;
	}

</style>

<script>

</script>
</head>

<body>
<!-- 导航条 -->
<div style="width:100%; height:60px;" >
	<jsp:include page="navbar.jsp" />  
</div>
<!-- 导航条 结束-->

<!--相册首页大标题开始-->
<div class="page-header col-lg-4 col-lg-offset-4  col-sm-6 col-sm-offset-3 col-xs-8 col-xs-offset-2" style="clear:both;margin-top:15px;">
  <h1 style="color:#000;">相册集合地</h1>
      <p style="text-indent:80px;"><small style="color: #333;font-size:20px;">美景是用来欣赏的，这里有你家乡的美景嘛~~</small>
      <button type="button" class="btn btn-primary" style="text-indent:0px;opacity:0.8;
filter:alpha(opacity=40);"id="uploadPhone">点击上传你的分享</button>
      </p>

</div>
<!--相册首页大标题结束  -->

<!--页面左半边已上传的好书介绍文字显示开始-->
<div class="left col-sm-9 col-sm-offset-1 col-xs-12" >
    <!--div循环开始-->
    <%
        List list = (List) request.getAttribute("picture");
        for(int i = 0; i < list.size(); i++) {
            Picture picture = (Picture) list.get(i);
    %>
  <div class="col-sm-12 col-md-5 col-sm-offset-1 p1_box">
  	<a href="detailPicture.action?reqGallery=<%=picture.getId()%>&reqPage=0&gallery=<%=picture.getTouristSpot()%>">
  	<div class="box">
  		<img src="<%=picture.getCoverImage()%>" class="img-responsive" alt="Responsive image" style="height:250px; width:100%;">
  		<div class="box-content">
		<h3 class="title"><%=picture.getTouristSpot()%></h3>
		<span class="post"><%=picture.getProfile()%></span>
        </div>
     </div>
  </a>
  </div>
    <%
        }
    %>
    <!--div循环结束-->
</div>
<!--页面左半边已上传的好书介绍文字显示结束-->

<!--用户上传须知开始-->
   <div class="right col-sm-2  hidden-xs blog-sidebar" style="background:#999;">
          <div class="sidebar-module sidebar-module-inset">
            <h4>About</h4>
            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
          </div>
          
            <button type="button" class="btn btn-primary" style="text-indent:0px;opacity:0.8;
filter:alpha(opacity=40);" data-toggle="modal" data-target="#uploadBook">点击上传你的分享1</button>    
  </div>        
          
   <div class="right col-sm-2  hidden-xs blog-sidebar" style="margin-top:150px;">
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
    <%
        Integer curPage = (Integer) request.getAttribute("curPage");
        Integer finalPage = (Integer) request.getAttribute("finalPage");
        int prePage = curPage - 1, nextPage = curPage + 1;
        if(curPage == 0){
            prePage = 0;
        } else if (curPage.intValue() == finalPage.intValue()) {
            nextPage = finalPage.intValue();
        }
    %>
    <ul class="pager">
        <li><a href="viewPicture.action?curPage=0">首页</a></li>
        <li><a href="viewPicture.action?curPage=<%=prePage%>">前一页</a></li>
        <li><a href="viewPicture.action?curPage=<%=nextPage%>">后一页</a></li>
        <li><a href="viewPicture.action?curPage=<%=finalPage%>">末页</a></li>
    </ul>
</nav>
<!--首页末页结束-->
<!-- 页脚开始-->
<div class="footer">
	<jsp:include page="footer.jsp" />  
 </div>
 </div>
<!-- 页脚结束-->
</body>

</html>
