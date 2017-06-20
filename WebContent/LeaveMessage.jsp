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
<title>用户留言页</title>
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
<script type="text/javascript">

$(function () {
  $('[data-toggle="popover"]').popover()
})
	
$(function (){
	$("#leaveMessage").click(function (e) {
		$('#myLeaveMessage').modal('show');
          alertify.alert("待会儿分享完之后记得要刷新重新进入此页面才能看见刚刚上传的内容哦~~~" ); //alertify中点击确定后的函数结束		
 
	});
})

$(function (){
	$("#subMyLeaveMessage").click(function (e) {
		alert("分享完之后记得要刷新重新进入此页面才能看见刚刚上传的内容哦~~~");
		$('#myLeaveMessage').modal('hide');
	});
})
	
	
</script>

</head>

<body>
<!-- 导航条 -->
<div style="width:100%; height:60px;" >
	<jsp:include page="navbar.jsp" />  
</div>

<!-- 导航条 结束-->

<!--用户倡言大标题开始-->
 <div class="page-header col-lg-4 col-lg-offset-4  col-sm-6 col-sm-offset-3 col-xs-8 col-xs-offset-2" style="clear:both;margin-top:10%;">
      <h1 style="color:#000;">你说我话</h1>
      <p style="text-indent:80px;"><small style="color: #333;font-size:20px;">留个言，冒个泡~~</small>
      <button type="button" class="btn btn-primary" style="text-indent:0px;opacity:0.8;
filter:alpha(opacity=40);" id="leaveMessage">点击留下你的痕迹</button>
      </p>
</div>
<!--用户倡言大标题结束-->

<!--你说我话上传模态框开始-->
<div class="modal fade" id="myLeaveMessage" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="uploadModelLabel">你说我话</h4>
      </div>
      
      <div class="modal-body">
             <form class="form-horizontal" id="edit_form">  
                 <h3 class="form-title" style="text-align:center">说出你想说的话</h3> <br />                  
                    <div class="" style="margin-left:20px; margin-right:20px;">  
                            <div class="form-group">  
                                <i class="fa fa-user fa-lg"></i>  
                                用户名称：<input class="form-control required" type="text" placeholder="Username" name="username" autofocus="autofocus" maxlength="20" style="padding-left:26px;"/>  
                            </div>  
                            <br />
                            <div class="form-group">  
                                     想说的话：<textarea class="form-control"  style="height:100px; overflow-x:auto" placeholder="在这里可以创所欲言，，不过要记得文明哦~~PS：尽量不要超过200字哦~~~"></textarea>
                                    </div>  
                
                        </div>  <!--calss=""结束-->
                    </form>   <!--你说我话表单结束--> 
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="submit" class="btn btn-primary" id="subMyLeaveMessage" data-dismiss="modal" >确定上传</button>
      </div>
      
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!--你说我话上传模态框结束-




<!--已经提交的留言显示开始-->
<div class="left col-sm-7 col-sm-offset-1 col-xs-12">
<ul class="media-list">
<!--第一个li-->
  <li class="media" style="margin-bottom:40px;">
    <div class="media-left">
        <a href="#">
        <img class="media-object img-thumbnail" style="height:120px;width:120px;"src="picture\shuomo.jpg" alt="...">
      </a>
       <p style="text-align:center; font-size:16px;">清风自来</p>
    </div>
    <div class="media-body">
      <h4 class="media-heading">2017年5月22日</h4>
<p style="text-indent:50px;height:60px; overflow-x:auto">但为读书人，无不知《史记》。史公“纠天人之际，成一家之言”的铮铮誓言响彻千年，其屈辱又顽强的人生更令人叹息又肃然起敬。对《史记》的赞誉实在太多啦，然而有多少人真正读过此皇皇巨著，细细体会过其中滋味呢？史公远写三皇五帝，近写大汉帝王，为后世留下了中华文明早期弥足珍贵的史料。
</p>
    </div>
  </li>
  
  
  <!--第二个li-->
  <li class="media" style="margin-bottom:40px;">
    <div class="media-left">
      <a href="#">
        <img class="media-object img-thumbnail" style="height:120px;width:120px;"src="picture\shuomo.jpg" alt="...">
      </a>
       <p style="text-align:center; font-size:16px;">清风自来</p>
    </div>
    <div class="media-body">
      <h4 class="media-heading">2017年5月12日</h4>
<p style="text-indent:50px;height:60px; overflow-x:auto">但为读书人，无不知《史记》。史公“纠天人之际，成一家之言”的铮铮誓言响彻千年，其屈辱又顽强的人生更令人叹息又肃然起敬。对《史记》的赞誉实在太多啦，然而有多少人真正读过此皇皇巨著，细细体会过其中滋味呢？史公远写三皇五帝，近写大汉帝王，为后世留下了中华文明早期弥足珍贵的史料。</p>
    </div>
  </li>
  
  <!--第三个li-->
  <li class="media" style="margin-bottom:40px;">
    <div class="media-left">
      <a href="#">
        <img class="media-object img-thumbnail" style="height:120px;width:120px;"src="picture\shuomo.jpg" alt="...">
      </a>
       <p style="text-align:center; font-size:16px;">清风自来</p>
    </div>
    <div class="media-body">
      <h4 class="media-heading">2017年5月1日</h4>
<p style="text-indent:50px;height:60px; overflow-x:auto">但为读书人，无不知《史记》。史公“纠天人之际，成一家之言”的铮铮誓言响彻千年，其屈辱又顽强的人生更令人叹息又肃然起敬。对《史记》的赞誉实在太多啦，然而有多少人真正读过此皇皇巨著，细细体会过其中滋味呢？史公远写三皇五帝，近写大汉帝王，为后世留下了中华文明早期弥足珍贵的史料。</p>
    </div>
  </li>
  
</ul>

</div>
<!--已经提交的留言显示结束-->

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
