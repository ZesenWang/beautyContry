<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script src="bootstrap-3.3.7-dist/jquery-3.1.1.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<title>关于我们</title>
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
	background:#222;
	position: fixed;
	height: 60px;
	width: 100%;
	left: 0px;
    bottom: 0px;
	}
</style>
</head>

<body>
<!-- 导航条-->
<div style="width:100%; height:60px;" >
	<jsp:include page="navbar.jsp" />  
</div>
<!-- 导航条 结束-->

<!-- 联系我们开始 -->
<div  class="container">
    <div class="jumbotron col-sm-12 col-md-6 col-lg-8 container" style="margin-top:10%; background:rgba(0, 0, 0, 0.3);color:#FFF; margin-left:15%;">
      <p style=" font-size:15px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;古人云：“以铜为镜，可以正衣冠；以史为镜，可以知兴替；以人为镜，可以知得失。”因此，在中国科技快速发展，全力追求中国梦的同时，作为中华儿女，我们也必须熟悉我们中华过去五千年的历史。</p>
<p style=" font-size:15px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这是一部灰暗与满辉，喜悦与无奈，血泪交加的历史。每一个乱世都会成就无数的英雄豪杰，每一个盛世都会出现无数的美人，他们书写了前朝的没落与新朝的辉煌；每次朝代的更替，都是胜者王败者寇，他们书写了某代帝王的无奈与新帝王的喜悦；每次大大小小的战争，都是一将功成万骨枯，无数无辜的百姓哀叹与士兵的哀怨书写了将军的功与过。
</p>
      <p ><a class="btn btn-primary btn-lg" href="index.jsp" role="button">返回首页</a></p>
    </div>

</div>
 <!--联系我 结束-->

<!-- 页脚开始-->
<div class="footer">
	<jsp:include page="footer.jsp" />  
 </div>
<!-- 页脚结束-->
</body>
</html>
