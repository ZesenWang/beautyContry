<%@ page import="java.util.List" %>
<%@ page import="com.po.Content" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script src="bootstrap-3.3.7-dist/jquery-3.1.1.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<title>指点山深处</title>
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

<body background="picture/4.jpg" style="overflow:auto; ">
<!-- 导航条 -->
<div style="width:100%; height:60px;" >
	<jsp:include page="navbar.jsp" />  
</div>
<!-- 导航条 结束-->

<!--好书分享大标题开始-->
 <div class="page-header col-lg-4 col-lg-offset-4  col-sm-6 col-sm-offset-3 col-xs-8 col-xs-offset-2" style="clear:both;margin-top:15px;">
      <h1 style="color:#000;">这个小镇，落日沉重</h1>
      <p style="text-indent:80px;"><small style="color: #333;font-size:20px;">临安简介，点击查看详细内容</small>
      </p>
</div>
<!--好书分享大标题结束-->

<!--简介开始-->
 <div class="col-xs-12 col-sm-8 col-sm-offset-2">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
          <%
              List header = (List) request.getAttribute("header");
              List content = (List) request.getAttribute("content");

              for(int i = 0; i < header.size(); i++) {
                  Object[] objects = (Object[]) header.get(i);
                  List items = (List) content.get(i);
          %>
         <div class="col-xs-12 col-sm-8 col-sm-offset-1"><p class="bg-warning" style=" font-size:30px;opacity:0.7;filter:alpha(opacity=40); text-align:center"><%=objects[1].toString()%></p></div>
                <%
                    for(int j = 0; j < items.size(); j++) {
                        Content item = (Content) items.get(j);
                %>
                <div class="col-xs-6 col-lg-4">
                    <h2><%=item.getHeader()%></h2>
                    <p><%=item.getProfile()%></p>
                    <a href="detailContent.action?reqContent=<%=item.getId()%>"> <p><button type="button" class="btn btn-primary" style="opacity:0.8;filter:alpha(opacity=40);">详细内容 &raquo;</button></p></a>
                </div>
            <!--/.col-xs-6.col-lg-4-->
                <%
                    }
                %>
         <%
             }
         %>
 </div><!--/.col-xs-12.col-sm-8-->
 <!--帝王简介结束-->  
 
  <!--右边连接开始-->       
        <div class="col-sm-2 hidden-xs sidebar-offcanvas" id="sidebar">
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

<!--右边连接结束-->






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
