<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script src="bootstrap-3.3.7-dist/jquery-3.1.1.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<title>登陆</title>
      <style type="text/css">  
            body{background-size: <span style="font-family: 微软雅黑; background-color: rgb(239, 239, 239);">cover</span>;font-size: 16px;}  
            .form{background: rgba(255,255,255,0.9); 
			margin:100px auto;}   
           
            .fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}  
            input[type="text"],input[type="password"]{padding-left:26px;}   
        </style>  

<script type="text/javascript">
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

<body>

<div>
<nav class="navbar navbar-inverse navbar-fixed-top ">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <p class="navbar-brand glyphicon glyphicon-zoom-in"></p>
    <!--  <p class="navbar-brand" >Brand</p>-->
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">首页 <span class="sr-only">(current)</span></a></li>
        <!-- 
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">内容 <span class="caret"></span></a>
          <ul class="dropdown-menu">
           <li role="separator" class="divider"></li>
            <li><a href="Content.jsp">地域简介</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="photoShow1.jsp">图片</a></li>
            <li role="separator" class="divider"></li>
          </ul>
        </li>-->
         <!-- 
           <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">功能 <span class="caret"></span></a>
          <ul class="dropdown-menu"> 
            <li><a href="bookShare.jsp">好书分享</a></li>
            <li role="separator" class="divider"></li>
            <li role="separator" class="divider"></li>
            <li><a href="audio.jsp">音频</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="OwnHeroStoryList.jsp">写下家乡的故事与传说</a></li>
            <li role="separator" class="divider"></li>
          </ul>
        </li>  -->      
        <li><a href="viewContent.action?curPage=0">指点山深处</a></li>
        <li><a href="viewBook.action?curPage=0">笔墨相传</a></li>
        <li><a href="viewAudio.action?curPage=0">丝竹人语声</a></li>
        <li><a href="viewPicture.action?curPage=0">风景旧曾谙</a></li>
        <li><a href="viewStory.action?curPage=0">寒灯纸上书</a></li>
        <li><a href="About Us.jsp">关于我们</a></li>
        <li name="submission" id="submission" style="display: none;" ><a href="">来件管理</a></li>
      </ul>

      <ul class="nav navbar-nav navbar-right">
          <%
              String name = (String) session.getAttribute("username");
              if(name != null){
          %>
        <li><a href="javascript:openLogin();"><%="欢迎你，"+name%></a></li>
          <%
              } else {
          %>
          <li><a href="javascript:openLogin();">登陆/注册</a></li>
          <%
              }
          %>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>
<!-- 导航条 结束-->
<!--注册点击后的背景色开始-->
<div id=back style="display:none; z-index:555;POSITION: fixed; left:0; top:0; width:100%; height:100%; background-color: #FFF;opacity:0.5; filter:alpha(opacity=40)">
</div>
<!--注册点击后的背景色结束-->

<!--登陆开始-->
    <div id=login class="form row col-lg-4 col-lg-offset-4 col-sm-4 col-sm-offset-4 col-xs-8 col-xs-offset-2"  style="clear:both;display:none; POSITION:absolute; z-index:600; margin-left:30%;">  <button type="button" class="close" aria-label="Close" onclick="closeLogin()"><span aria-hidden="true">&times;</span></button>
            <form class="form-horizontal" id="login_form" action="signinUser.action">
                 <h3 class="form-title" style="text-align:center">用户登陆</h3> <br /> 
                 
                    <div class="">  
                            <div class="form-group">  
                                <i class="fa fa-user fa-lg"></i>  
                                <input class="form-control required" type="text" placeholder="Username" name="username" autofocus="autofocus" maxlength="20" style="padding-left:26px; margin-left:20px; width:90%;"/>  
                            </div>  
                            <br />
                            
                            <div class="form-group">  
                                    <i class="fa fa-lock fa-lg"></i>  
                                    <input class="form-control required " type="password" placeholder="Password" name="password" maxlength="8" style="padding-left:26px; margin-left:20px; width:90%;"/>  
                            </div>  
                            
                            <div class="form-group">  
                                <a href="javascript:openMissPWD()" id="missPWD_btn" style="margin-left:20px; ">忘记密码？</a>  <br /> <br />                <a href="javascript:openRegister()" id="register_btn" style="margin-left:20px; " >没有账号去注册？</a>  
                            </div>  
                            
                            <div class="form-group">  
                               <input type="submit" class="btn btn-success pull-right" value="登陆 " style="margin-right:20px;"/>  
                                 <br> 
                            </div> 
                             
                        </div>  <!--calss=""结束-->
                    </form>   <!--登陆表单结束-->
               </div><!--id=login结束-->

<!--登陆结束-->

<!--注册开始-->
<div id="register"  class="form row form row col-lg-4 col-lg-offset-4 col-sm-4 col-sm-offset-4 col-xs-8 col-xs-offset-2" style="clear:both;display:none;z-index:600; POSITION:absolute; margin-left:30%;">  <button type="button" class="close" aria-label="Close" onclick="closeLogin()"><span aria-hidden="true">&times;</span></button> 

           <form class="form-horizontal" id="missPWD_form" action="registerUser.action">
                <h3 class="form-title" style="text-align:center">注册账号</h3>  <br /> 
                
                <div class="" >  
                   <div class="form-group">  
                        <i class="fa fa-user fa-lg"></i>  
                        <input class="form-control required" type="text" placeholder="Username" name="username" autofocus="autofocus" style="padding-left:26px; margin-left:20px; width:90%;"/>  
                    </div>  
                    
                    <div class="form-group">  
                            <i class="fa fa-lock fa-lg"></i>  
                            <input class="form-control required" type="password" placeholder="Password" id="register_password" name="password" style="padding-left:26px; margin-left:20px; width:90%;"/>  
                    </div> 
                     
                    <div class="form-group">  
                            <i class="fa fa-check fa-lg"></i>  
                            <input class="form-control required" type="password" placeholder="Re-type Your Password" name="rpassword" style="padding-left:26px; margin-left:20px; width:90%;"/>  
                    </div>  
                    
                    <div class="form-group">  
                            <i class="fa fa-envelope fa-lg"></i>  
                            <input class="form-control eamil" type="text" placeholder="Email" name="email" style="padding-left:26px; margin-left:20px; width:90%;"/>  
                    </div>  
                    
                    <div class="form-group">  
                        <input type="submit" class="btn btn-success pull-right" value="提交 "  style="margin-right:20px;"/>  
                        <input type="reset" class="btn btn-info pull-left" id="back_btn" value="重置"  style="margin-left:20px;"/>  
                    </div>  
                    
                </div> <!--<div class="col-sm-9 col-md-9">  结束-->
            </form>  
        </div>     
<!--注册结束 </div>  -->


<!--忘记密码开始-->

<div id="missPWD"  class="form row form row col-lg-4 col-lg-offset-4 col-sm-4 col-sm-offset-4 col-xs-8 col-xs-offset-2" style="clear:both;display:none;z-index:600; POSITION:absolute; margin-left:30%;">  <button type="button" class="close" aria-label="Close" onclick="closeLogin()"><span aria-hidden="true">&times;</span></button> 

           <form class="form-horizontal" id="register_form" action="forgetUser.action">
                <h3 class="form-title" style="text-align:center">重置密码</h3>  <br /> 
                
                <div class="" >  
                   <div class="form-group">  
                        <i class="fa fa-user fa-lg"></i>  
                        <input class="form-control required" type="text" placeholder="Username" name="username" autofocus="autofocus" style="padding-left:26px; margin-left:20px; width:90%;"/>  
                    </div>  
                    
                    <div class="form-group">  
                            <i class="fa fa-lock fa-lg"></i>  
                            <input class="form-control required" type="password" placeholder="Password" id="miss_password" name="password" style="padding-left:26px; margin-left:20px; width:90%;"/>  
                    </div> 
                     
                    <div class="form-group">  
                            <i class="fa fa-check fa-lg"></i>  
                            <input class="form-control required" type="password" placeholder="Re-type Your Password" name="rpassword" style="padding-left:26px; margin-left:20px; width:90%;"/>  
                    </div>  
                    
                    <div class="form-group">  
                            <i class="fa fa-envelope fa-lg"></i>  
                            <input class="form-control eamil" type="text" placeholder="Email" name="email" style="padding-left:26px; margin-left:20px; width:90%;"/>  
                    </div>  
                    
                    <div class="form-group">  
                        <input type="submit" class="btn btn-success pull-right" value="提交 "  style="margin-right:20px;"/>  
                        <input type="reset" class="btn btn-info pull-left" id="back_btn" value="重置"  style="margin-left:20px;"/>  
                    </div>  
                    
                </div> <!--<div class="col-sm-9 col-md-9">  结束-->
            </form>  
        </div>     

<!--忘记密码结束-->

      
<!--注册结束 </div>  -->

 </body>
</html>
