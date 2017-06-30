<%@ page import="java.util.List" %>
<%@ page import="com.po.Book" %>
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
<title>笔墨相传</title>
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
	$("#uploadBookButton").click(function (e) {
		$('#uploadBook').modal('show');
          alertify.alert("待会儿分享完之后记得要刷新重新进入此页面才能看见刚刚上传的内容哦~~~" ); //alertify中点击确定后的函数结束		
 
	});
})

$(function (){
	$("#submitBook").click(function (e) {
		alert("分享完之后记得要刷新重新进入此页面才能看见刚刚上传的内容哦~~~");
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

<!--好书分享大标题开始-->
 <div class="page-header col-lg-4 col-lg-offset-4  col-sm-6 col-sm-offset-3 col-xs-8 col-xs-offset-2" style="clear:both;margin-top:15px;">
      <h1 style="color:#000;">墨香依旧，笔墨相传</h1>
      <p style="text-indent:80px;"><small style="color: #333;font-size:20px;">书中的临安是否如眼前的泉水般凛冽</small>
      <button type="button" class="btn btn-primary" style="text-indent:0px;opacity:0.8;
filter:alpha(opacity=40);"id="uploadBookButton">点击上传分享</button>
      </p>

</div>
<!--好书分享大标题结束 data-toggle="modal" data-target="#uploadBook" -->

<!--好书分享上传模态框开始-->
<div class="modal fade" id="uploadBook" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="uploadModelLabel">好书分享楼</h4>
      </div>
      
      <div class="modal-body">
             <form class="form-horizontal" id="edit_form" action="uploadBook.action">
                 <h3 class="form-title" style="text-align:center">分享内容上传</h3> <br /> 
                 
                    <div class="" style="margin-left:20px; margin-right:20px;">  
                            <div class="form-group">  
                                <i class="fa fa-user fa-lg"></i>  
                                用户名称：<input class="form-control required" type="text" placeholder="Username" name="username" autofocus="autofocus" maxlength="20" style="padding-left:26px;"/>  
                            </div>  
                            <br />
                            
                            <div class="form-group">  
                                    <i class="fa fa-lock fa-lg"></i>  
                                    分享书名：<input class="form-control required" type="text" placeholder="bookName" name="bookName" autofocus="autofocus" maxlength="30" style="padding-left:26px;"/>    
                            </div>  
                            
                            <div class="form-group">  
                                     分享内容：<textarea class="form-control"  style="height:200px; overflow-x:auto" placeholder="在这里写下这本书值得推荐的理由或者简短简述你读完这本书的感悟，不要超过1000字哦~~~" name="profile"></textarea>
                                    </div>  
                
                        </div>  <!--calss=""结束-->
                    </form>   <!--好书上传表单结束--> 
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="submit" class="btn btn-primary" id="submitBook" data-dismiss="modal" >确定上传</button>
      </div>
      
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!--好书分享上传模态框结束-->

<!--页面左半边已上传的好书介绍文字显示开始-->
<div class="left col-sm-7 col-sm-offset-1 col-xs-12">
<ul class="media-list">
<!--li循环开始-->
    <%
        List list = (List) request.getAttribute("books");
        for(int i = 0; i < list.size(); i++) {
            Book book = (Book) list.get(i);
    %>
 <li class="media" style="margin-bottom:100px;">
    <div class="media-left">
       <a href="#">
       <img src="picture/bookPic/nansongLA.jpg" />
       <!--   <img class="media-object img-thumbnail" style="height:120px;width:120px;"src="%=book.getCover()%>" alt="...">-->
      </a>
       <p style="text-align:center; font-size:16px;">《<%=book.getBookname()%>》</p>
    </div>
    <div class="media-body">
      <h4 class="media-heading">《<%=book.getBookname()%>》</h4>
<p style="text-indent:50px;min-height:200px; overflow-x:auto">作　　者：<%=book.getAuthor()%> <br />出版 社：<%=book.getPublisher()%><br />出版时间：<%=book.getPublishDate()%><br />
<%=book.getProfile()%></p>
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
          
            <button type="button" class="btn btn-primary" style="text-indent:0px;opacity:0.8;
filter:alpha(opacity=40);" data-toggle="modal" data-target="#uploadBook">点击上传你的分享1</button>    
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
    <li><a href="viewBook.action?curPage=0">首页</a></li>
    <li><a href="viewBook.action?curPage=<%=prePage%>">前一页</a></li>
    <li><a href="viewBook.action?curPage=<%=nextPage%>">后一页</a></li>
    <li><a href="viewBook.action?curPage=<%=finalPage%>">末页</a></li>
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
