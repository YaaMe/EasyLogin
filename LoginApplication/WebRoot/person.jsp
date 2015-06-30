<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>PersonPage</title>
    <!-- regist -->
    <link rel="stylesheet" type="text/css" media="all" href="css/style.css">
  	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
  	<script type="text/javascript" charset="utf-8" src="js/jquery.leanModal.min.js"></script>
    <style>
        body{
            background: #ebebeb;
            font-family: "Helvetica Neue","Hiragino Sans GB","Microsoft YaHei","\9ED1\4F53",Arial,sans-serif;
            color: #222;
            font-size: 12px;
        }
        *{padding: 0px;margin: 0px;}
        .top_div{
            background: #008ead;
            width: 100%;
            height: 400px;
        }
 

    </style>

</head>
<body>
<div class="top_div"></div>
<div style="width: 400px;height: 200px;margin: auto auto;background: #ffffff;text-align: center;margin-top: -100px;border: 1px solid #e7e7e7">

      <p>what's 个人profile页面配置？是指自我介绍？</p>
	  <p>名字：朱杰</p>
	  <p>联系方式:969519545@qq.com||13917300740</p>
	  <a href="https://github.com/YaaMe/YaaMeProject">YaaMe的毕设</a>
	  
  </div>
<script type="text/javascript">
$(function(){
  $('#modaltrigger').leanModal({ top: 110, overlay: 0.45, closeButton: ".hidemodal" });
});
</script>
</div>

<div style="position: fixed;bottom: 0px;text-align: center;width: 100%;">
   <a href="#modal" id="modaltrigger" style="color:#ccc;margin-right:10px;">吐槽</a>
 <div id="modal" style="display:none;">
    <h1 style="color:#F8C135">- -</h1>
    <p style="color:#F8C135">首先，由于不知道账号需要什么特征，没做正则限制，以个人能力一晚上并不能做太好。很多该用异步传的也并没有弄好。一开始不知道怎么传文件，bootstrap没敢用。。</p>
     <p style="color:#F8C135">然后，一直用的破解的MyEclipse，表示已快被eclipse逼疯。并不能确保eclipse能运行。。</p>
     <p style="color:#F8C135">还有就是发来的邮件被QQ当垃圾邮件丢进去了。</p>
     <p style="color:#F8C135">还没有数据库，抓狂了。。。</p>
     <p style="color:#F8C135">工程醒来会传github的。。</p>
</div>
</body>
</html>