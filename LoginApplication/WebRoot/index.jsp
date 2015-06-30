<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>朱杰</title>
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
        .ipt{
            border: 1px solid #d3d3d3;
            padding: 10px 10px;
            width: 290px;
            border-radius: 4px;
            padding-left: 35px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s
        }
        .ipt:focus{
            border-color: #66afe9;
            outline: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
        }
        .u_logo{
            background: url("images/username.png") no-repeat;
            padding: 10px 10px;
            position: absolute;
            top: 43px;
            left: 40px;

        }
        .p_logo{
            background: url("images/password.png") no-repeat;
            padding: 10px 10px;
            position: absolute;
            top: 12px;
            left: 40px;
        }
        a{
            text-decoration: none;
        }
        .tou{
            background: url("images/tou.png") no-repeat;
            width: 97px;
            height: 92px;
            position: absolute;
            top: -87px;
            left: 140px;
        }
        .left_hand{
            background: url("images/left_hand.png") no-repeat;
            width: 32px;
            height: 37px;
            position: absolute;
            top: -38px;
            left: 150px;
        }
        .right_hand{
            background: url("images/right_hand.png") no-repeat;
            width: 32px;
            height: 37px;
            position: absolute;
            top: -38px;
            right: -64px;
        }
        .initial_left_hand{
            background: url("images/hand.png") no-repeat;
            width: 30px;
            height: 20px;
            position: absolute;
            top: -12px;
            left: 100px;
        }
        .initial_right_hand{
            background: url("images/hand.png") no-repeat;
            width: 30px;
            height: 20px;
            position: absolute;
            top: -12px;
            right: -112px;
        }
        .left_handing{
            background: url("images/left-handing.png") no-repeat;
            width: 30px;
            height: 20px;
            position: absolute;
            top: -24px;
            left: 139px;
        }
        .right_handinging{
            background: url("images/right_handing.png") no-repeat;
            width: 30px;
            height: 20px;
            position: absolute;
            top: -21px;
            left: 210px;
        }

    </style>
    <script type="text/javascript">
        $(function(){
            //得到焦点
            $("#password").focus(function(){
                $("#left_hand").animate({
                    left: "150",
                    top: " -38"
                },{step: function(){
                    if(parseInt($("#left_hand").css("left"))>140){
                        $("#left_hand").attr("class","left_hand");
                    }
                }}, 2000);
                $("#right_hand").animate({
                    right: "-64",
                    top: "-38px"
                },{step: function(){
                    if(parseInt($("#right_hand").css("right"))> -70){
                        $("#right_hand").attr("class","right_hand");
                    }
                }}, 2000);
            });
            //失去焦点
            $("#password").blur(function(){
                $("#left_hand").attr("class","initial_left_hand");
                $("#left_hand").attr("style","left:100px;top:-12px;");
                $("#right_hand").attr("class","initial_right_hand");
                $("#right_hand").attr("style","right:-112px;top:-12px");
            });
        });
    </script>

</head>
<body>
<div class="top_div"></div>
<!-- 登录 -->
<div style="width: 400px;height: 200px;margin: auto auto;background: #ffffff;text-align: center;margin-top: -100px;border: 1px solid #e7e7e7">
    <div style="width: 165px;height: 96px;position: absolute">
        <div class="tou"></div>
        <div id="left_hand" class="initial_left_hand"></div>
        <div id="right_hand" class="initial_right_hand"></div>
    </div>
    <p style="padding: 30px 0px 10px 0px;position: relative;">
        <span class="u_logo"></span>
        <input id="name" class="ipt" type="text" placeholder="请输入用户名">
    </p>
    <p style="position: relative;">
        <span class="p_logo"></span>
        <input id="password" class="ipt" type="password"  placeholder="请输入密码">
    </p>

    <div style="height: 50px;line-height: 50px;margin-top: 30px;border-top: 1px solid #e7e7e7;">
        <p style="margin: 0px 35px 20px 45px;">
           <span style="float: left"><a href="#" style="color:#ccc;">忘记密码?</a></span>
           <span style="float: right">
               <a href="#registmodal" id="modaltrigger" style="color:#ccc;margin-right:10px;">注册</a>
               <a href="#" id="loginbtn" onclick="loginSubmit()" style="background: #008ead;padding: 7px 10px;border-radius: 4px;border: 1px solid #1a7598;color: #FFF;font-weight: bold;">Login</a>
           </span>
        </p>
    </div>
</div>
<!-- 注册 -->
  <div id="registmodal" style="display:none;">
    <h1 style="color:#F8C135">User Regist</h1>
      <input type="text" name="regist_name" id="regist_name"  placeholder="请输入注册用户名" class="txtfield" tabindex="1">
      <input type="password" name="regist_password" id="regist_password" placeholder="请输入密码"  class="txtfield" tabindex="2">
      <input type="password" name="regist_password_ck" id="regist_password_ck" placeholder="请再次输入密码"  class="txtfield" tabindex="3">
      <div class="center"><button onclick="registSubmit()" name="registbtn" id="registbtn" style="background: #F8C135;padding: 7px 10px;border-radius: 4px;border: 1px solid #1a7598;color: #FFF;font-weight: bold;"  tabindex="4">Regist</button></div>
  </div>
<script type="text/javascript">
$(function(){
  $('#loginform').submit(function(e){
    return false;
  });
  
  $('#modaltrigger').leanModal({ top: 110, overlay: 0.45, closeButton: ".hidemodal" });
});
</script>
<script type="text/javascript">
function loginSubmit () {
 $.ajax({
      type:"post",
      url:"login.do",
      async:"false",
      data:{
      name:$("#name").val(),
      password:$("#password").val()
      },
      success:function(data){
      	if(data!=""){
      	if(data=="person.jsp")
      		location.href="person.jsp";
      	else
      		alert(data);
      	}
      }
      });
}
function registSubmit () {
 $.ajax({
      type:"post",
      url:"regist.do",
      async:"false",
      data:{
      registname:$("#regist_name").val(),
      registpassword:$("#regist_password").val(),
      registpasswordck:$("#regist_password_ck").val(),
      },
      success:function(data){alert(data);}
      });
}
</script>
<div style="position: fixed;bottom: 0px;text-align: center;width: 100%;">
    Copyright ©2015 <a style="margin-left: 10px;color: #000000;text-decoration: underline" href="https://github.com/YaaMe/YaaMeProject">YaaMe</a>
</div>
</body>
</html>