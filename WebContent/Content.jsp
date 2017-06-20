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
 <div class="page-header col-lg-4 col-lg-offset-4  col-sm-6 col-sm-offset-3 col-xs-8 col-xs-offset-2" style="clear:both;margin-top:10%;">
      <h1 style="color:#000;">这个小镇，落日沉重</h1>
      <p style="text-indent:80px;"><small style="color: #333;font-size:20px;">临安的景点特点简介，点击查看详细内容</small>
      </p>
</div>
<!--好书分享大标题结束-->

<!--简介开始-->
 <div class="col-xs-12 col-sm-8 col-sm-offset-2">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
          
         <div class="col-xs-12 col-sm-8 col-sm-offset-1"><p class="bg-warning" style=" font-size:30px;opacity:0.7;filter:alpha(opacity=40); text-align:center">临安</p></div> 
            <div class="col-xs-6 col-lg-4">
              <h2>临安</h2>
              <p>临安市位于浙江省西北部，东经118°51'至119°52'，北纬29°56'至30°23'，是浙江省陆地面积最大的县级市。地处浙江省西北部天目山区，东邻杭州市余杭区，南连富阳市和桐庐县、淳安县，西接安徽省歙县，北界安吉县及安徽省绩溪县、宁国市。临安市境东西宽约100千米，南北长约50千米，总面积3126.8平方千米；辖5个街道13个乡镇298个行政村。市人民政府设在锦城街道。临安是首批全国生态建设示范市，拥有国家级生态市，中国优秀旅游城市、中国竹子之乡等称号。</p>
             <a href="DetailedContent.jsp"> <p><button type="button" class="btn btn-primary" style="opacity:0.8;filter:alpha(opacity=40);">详细内容 &raquo;</button></p></a>
            </div>
            
            <!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
              <h2>吴越文化</h2>
              <p>吴越文化又称江浙文化，是汉文明的重要组成部分，也是江浙的地域文化。吴越文化区以太湖流域为中心，范围与吴语区相吻合，可细分为“吴文化”和“越文化”，两者同源同出。吴越文化形成于周代，《春秋》、《左传》、《国语》等史书都有载，吴王阖闾都于姑苏，越王勾践都于会稽；早期吴越民众以尚武逞勇为风气，粗犷中蕴涵精雅；晋室南渡后士族文化的特质改变了吴越文化的审美取向，逐步给其注入了“士族精神、书生气质” ，开始成为中国文化中精致典雅的代表。</p>
             <a href="DetailedContent.jsp">  <p><button type="button" class="btn btn-primary" style="opacity:0.8;filter:alpha(opacity=40);">详细内容 &raquo;</button></p></a>
            </div>
            
             <div class="col-xs-12 col-sm-8 col-sm-offset-1"><p class="bg-warning" style=" font-size:30px;opacity:0.7;filter:alpha(opacity=40); text-align:center">吴语</p>
              </div>
              
            <!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
              <h2>吴语</h2>
              <p>吴语，又称 江东话、 江南话、 吴越语。 周朝至今有三千多年悠久历史，底蕴深厚。在中国分布于今 浙江、 江苏南部、 上海、 安徽南部、 江西东北、福建北一角，使用人口9000多万。吴语是中国七大方言之一，有国际 语言代码。</p>
            <a href="DetailedContent.jsp">   <p><button type="button" class="btn btn-primary"style="opacity:0.8;filter:alpha(opacity=40);">详细内容 &raquo;</button></p></a>
            </div>
            <!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
              <h2>戏曲</h2>
              <p>越剧，长于抒情，以唱为主，声音优美动听，表演真切动人，唯美典雅，极具江南灵秀之气，多“才子佳人”题材。昆曲，百戏之祖，中国最古老的剧种，曲词典雅，行腔婉转。</p>
             <a href="DetailedContent.jsp">  <p><button type="button" class="btn btn-primary" style="opacity:0.8;filter:alpha(opacity=40);">详细内容 &raquo;</button></p></a>
            </div>

            <!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
              <h2>临安神龙川民间茶俗文化旅游节</h2>
              <p>神龙川地处浙西临安太湖源头，这里的山势蜿蜒连锦，云雾缭绕，植被茂盛，众山汇集之水明澈清洌，丰盈充沛，飞瀑流泉遍布；这里的空气清新，森林浓密，生成了大量能增强人体免疫功能的负氧离子。好山好水也就有了远近闻名的好茶——神龙川御茶（东坑茶即天目青顶），“东坑茶叶西坑水”，指的就是神龙川、太湖源、东坑一带的水质和茶叶。</p>
             <a href="DetailedContent.jsp">  <p><button type="button" class="btn btn-primary" style="opacity:0.8;filter:alpha(opacity=40);">详细内容 &raquo;</button></p></a>
            </div>
            <!--/.col-xs-6.col-lg-4-->

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
