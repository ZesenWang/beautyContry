<%@ page import="java.util.List" %>
<%@ page import="com.po.Story" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script src="bootstrap-3.3.7-dist/jquery-3.1.1.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<title>寒灯纸上书</title>
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
</style>
</head>

<body>
<!-- 导航条 -->
<div style="width:100%; height:60px;" >
	<jsp:include page="navbar.jsp" />  
</div>
<!-- 导航条 结束-->

<!--好书分享大标题开始-->
 <div class="page-header col-lg-4 col-lg-offset-4  col-sm-6 col-sm-offset-3 col-xs-8 col-xs-offset-2" style="clear:both;margin-top:15px;">
      <h1 style="color:#000;">我心中最特别的临安</h1>
      <p style="text-indent:80px;"><small style="color: #333;font-size:20px;">一百个读者有一百个哈姆雷特，一百个人有一百种临安</small>
      <button type="button" class="btn btn-primary" style="text-indent:0px;opacity:0.8;
filter:alpha(opacity=40);">点击上传</button><small style="color: #333;font-size:20px;">你的临安故事</small>
      </p>
</div>
<!--好书分享大标题结束-->

<!--页面左半边已上传的好书介绍文字显示开始-->
<div class="left col-sm-7 col-sm-offset-1 col-xs-12">
<ul class="media-list">
    <!--li循环开始-->
    <%
        List list = (List) request.getAttribute("story");
        for(int i = 0; i < list.size(); i++) {
            Story story = (Story) list.get(i);
    %>
  <li class="media" style="margin-bottom:100px;">
    <div class="media-left">
      <a href="#">
        <img class="media-object img-thumbnail" style="height:120px;width:120px;"src="<%=story.getImagePath()%>" alt="...">
      </a>
       <p style="text-align:center; font-size:16px;">清风自来</p>
    </div>
    <div class="media-body">
      <h4 class="media-heading"><%=story.getHeader()%></h4>
<span style="font-size:18px">故事简介（200字左右）</span></br><p style="text-indent:50px;min-height:200px; overflow-x:auto"/><%=story.getProfile()%><br>
<a href="detailStory.action?reqStory=<%=story.getId()%>"><button class="btn btn-info btn-sm pull-right" type="submit" style="opacity:0.8;filter:alpha(opacity=40);">详细故事内容</button></a>
</p>
    </div>
  </li>
    <%
        }
    %>
    <!--li循环结束-->
</ul>

</div>
<!--页面左半边已上传的好书介绍文字显示结束-->

<!--用户上传须知开始-->
   <div class="col-sm-3 col-sm-offset-1 hidden-xs blog-sidebar" style="background:#999;">
          <div class="sidebar-module sidebar-module-inset">
            <h4>About</h4>
            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
          </div>
  </div>        
          
   <div class="col-sm-3 col-sm-offset-1 hidden-xs sidebar-module" style="margin-top:150px;">
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
        <li><a href="viewStory.action?curPage=0">首页</a></li>
        <li><a href="viewStory.action?curPage=<%=prePage%>">前一页</a></li>
        <li><a href="viewStory.action?curPage=<%=nextPage%>">后一页</a></li>
        <li><a href="viewStory.action?curPage=<%=finalPage%>">末页</a></li>
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
