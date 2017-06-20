<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script src="bootstrap-3.3.7-dist/jquery-3.1.1.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("tr").mouseover(function() {
			$(this).addClass("over");
			}).mouseout(function() {
			$(this).removeClass("over");
		})
	})
</script>
<title>来件管理</title>
<style type="text/css">
body{
	background-image:url(picture/tmanagePic.jpg);
	background-size:cover;
	background-attachment: fixed;
	 font-size:18px;"
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
tr.over { background-color:#C0C0C0; }
</style>
</head>

<body>
<!-- 导航条 -->
<div style="width:100%; height:60px;" >
	<jsp:include page="navbar.jsp" />  
</div>
<!-- 导航条 结束-->

<!-- 联系我们开始 -->
<div  class="container" >
    <div style="margin:10% 5% 0% 5%;">
    <p>状态：<select name="status" class="eas">
            	<option value="no" selected="selected">未审阅</option>
            	<option value="yes">已审阅</option>
            </select>
     </p>
   <table style=" border:2px #666 dashed; width:100%; text-align:center; clear:both; clear:both;" >
   	<tr style="background:rgba(0, 0, 0, 0.3);color:#FFF;">
    	<td height="60">题目</td>
    	<td>用户名</td>
        <td>时间</td>
    	<td>状态</td>
    	<td>板块</td>
    	<td>操作</td>
    </tr>
    <tr>
    	<td height="50">乡情</td>
    	<td>安木系</td>
        <td>2017.4.10</td>
    	<td>未审阅</td>
    	<td>我口中的音频</td>
    	<td>
     <a class="btn btn-primary btn-lg" style="background:rgba(53, 120, 188, 0.6);" href="#" role="button">审阅</a>&nbsp;&nbsp;&nbsp;
     <a class="btn btn-primary btn-lg" style="background:rgba(53, 120, 188, 0.6);" href="#" role="button">删除</a></td>
    </tr>
    <tr>
    	<td height="50">乡情</td>
    	<td>安木系</td>
        <td>2017.4.10</td>
    	<td>未审阅</td>
    	<td>我口中的音频</td>
    	<td>
     <a class="btn btn-primary btn-lg" style="background:rgba(53, 120, 188, 0.6);" href="#" role="button">审阅</a>&nbsp;&nbsp;&nbsp;
     <a class="btn btn-primary btn-lg" style="background:rgba(53, 120, 188, 0.6);" href="#" role="button">删除</a></td>
    </tr>
    <tr>
    	<td height="50">乡情</td>
    	<td>安木系</td>
        <td>2017.4.10</td>
    	<td>未审阅</td>
    	<td>我口中的音频</td>
    	<td>
     <a class="btn btn-primary btn-lg" style="background:rgba(53, 120, 188, 0.6);" href="#" role="button">审阅</a>&nbsp;&nbsp;&nbsp;
     <a class="btn btn-primary btn-lg" style="background:rgba(53, 120, 188, 0.6);" href="#" role="button">删除</a></td>
    </tr>
    <tr>
    	<td height="50">乡情</td>
    	<td>安木系</td>
        <td>2017.4.10</td>
    	<td>未审阅</td>
    	<td>我口中的音频</td>
    	<td>
     <a class="btn btn-primary btn-lg" style="background:rgba(53, 120, 188, 0.6);" href="#" role="button">审阅</a>&nbsp;&nbsp;&nbsp;
     <a class="btn btn-primary btn-lg" style="background:rgba(53, 120, 188, 0.6);" href="#" role="button">删除</a></td>
    </tr>
    <tr>
    	<td height="50">乡情</td>
    	<td>安木系</td>
        <td>2017.4.10</td>
    	<td>未审阅</td>
    	<td>我口中的音频</td>
    	<td>
     <a class="btn btn-primary btn-lg" style="background:rgba(53, 120, 188, 0.6);" href="#" role="button">审阅</a>&nbsp;&nbsp;&nbsp;
     <a class="btn btn-primary btn-lg" style="background:rgba(53, 120, 188, 0.6);" href="#" role="button">删除</a></td>
    </tr>
    <tr>
    	<td height="50">乡情</td>
    	<td>安木系</td>
        <td>2017.4.10</td>
    	<td>未审阅</td>
    	<td>我口中的音频</td>
    	<td>
     <a class="btn btn-primary btn-lg" style="background:rgba(53, 120, 188, 0.6);" href="#" role="button">审阅</a>&nbsp;&nbsp;&nbsp;
     <a class="btn btn-primary btn-lg" style="background:rgba(53, 120, 188, 0.6);" href="#" role="button">删除</a></td>
    </tr>
    <tr>
    	<td height="50">乡情</td>
    	<td>安木系</td>
        <td>2017.4.10</td>
    	<td>未审阅</td>
    	<td>我口中的音频</td>
    	<td>
     <a class="btn btn-primary btn-lg" style="background:rgba(53, 120, 188, 0.6);" href="#" role="button">审阅</a>&nbsp;&nbsp;&nbsp;
     <a class="btn btn-primary btn-lg" style="background:rgba(53, 120, 188, 0.6);" href="#" role="button">删除</a></td>
    </tr>
    <tr>
    	<td height="50">乡情</td>
    	<td>安木系</td>
        <td>2017.4.10</td>
    	<td>未审阅</td>
    	<td>我口中的音频</td>
    	<td>
     <a class="btn btn-primary btn-lg" style="background:rgba(53, 120, 188, 0.6);" href="#" role="button">审阅</a>&nbsp;&nbsp;&nbsp;
     <a class="btn btn-primary btn-lg" style="background:rgba(53, 120, 188, 0.6);" href="#" role="button">删除</a></td>
    </tr>
    </table>
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
    </div>
</div>
<!-- 页脚开始-->
<div class="footer">
	<jsp:include page="footer.jsp" />  
 </div>
<!-- 页脚结束-->
</body>
</html>
