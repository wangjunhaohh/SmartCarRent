<%--
  Created by IntelliJ IDEA.
  User: OMEN
  Date: 2021/4/18
  Time: 19:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>智能汽车出租登陆</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" type="text/css" href="static/css/layui.css" media="all">
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>



    <![endif]-->
    <style>
        .main-body {top:50%;left:50%;position:absolute;-webkit-transform:translate(-50%,-50%);-moz-transform:translate(-50%,-50%);-ms-transform:translate(-50%,-50%);-o-transform:translate(-50%,-50%);transform:translate(-50%,-50%);overflow:hidden;}
        .login-main .login-bottom .center .item input {display:inline-block;width:227px;height:22px;padding:0;position:absolute;border:0;outline:0;font-size:14px;letter-spacing:0;}
        .login-main .login-bottom .center .item .icon-1 {background:url(static/images/icon-login.png) no-repeat 1px 0;}
        .login-main .login-bottom .center .item .icon-2 {background:url(static/images/icon-login.png) no-repeat -54px 0;}
        .login-main .login-bottom .center .item .icon-3 {background:url(static/images/icon-login.png) no-repeat -106px 0;}
        .login-main .login-bottom .center .item .icon-4 {background:url(static/images/icon-login.png) no-repeat 0 -43px;position:absolute;right:-10px;cursor:pointer;}
        .login-main .login-bottom .center .item .icon-5 {background:url(static/images/icon-login.png) no-repeat -55px -43px;}
        .login-main .login-bottom .center .item .icon-6 {background:url(static/images/icon-login.png) no-repeat 0 -93px;position:absolute;right:-10px;margin-top:8px;cursor:pointer;}
        .login-main .login-bottom .tip .icon-nocheck {display:inline-block;width:10px;height:10px;border-radius:2px;border:solid 1px #9abcda;position:relative;top:2px;margin:1px 8px 1px 1px;cursor:pointer;}
        .login-main .login-bottom .tip .icon-check {margin:0 7px 0 0;width:14px;height:14px;border:none;background:url(static/images/icon-login.png) no-repeat -111px -48px;}
        .login-main .login-bottom .center .item .icon {display:inline-block;width:33px;height:22px;}
        .login-main .login-bottom .center .item {width:288px;height:35px;border-bottom:1px solid #dae1e6;margin-bottom:35px;}
        .login-main {width:428px;position:relative;float:left;}
        .login-main .login-top {height:117px;background-color:#148be4;border-radius:12px 12px 0 0;font-family:SourceHanSansCN-Regular;font-size:30px;font-weight:400;font-stretch:normal;letter-spacing:0;color:#fff;line-height:117px;text-align:center;overflow:hidden;-webkit-transform:rotate(0);-moz-transform:rotate(0);-ms-transform:rotate(0);-o-transform:rotate(0);transform:rotate(0);}
        .login-main .login-top .bg1 {display:inline-block;width:74px;height:74px;background:#fff;opacity:.1;border-radius:0 74px 0 0;position:absolute;left:0;top:43px;}
        .login-main .login-top .bg2 {display:inline-block;width:94px;height:94px;background:#fff;opacity:.1;border-radius:50%;position:absolute;right:-16px;top:-16px;}
        .login-main .login-bottom {width:428px;background:#fff;border-radius:0 0 12px 12px;padding-bottom:53px;}
        .login-main .login-bottom .center {width:288px;margin:0 auto;padding-top:40px;padding-bottom:15px;position:relative;}
        .login-main .login-bottom .tip {clear:both;height:16px;line-height:16px;width:288px;margin:0 auto;}
        body {background:url(static/images/2.jpg) 0% 0% / cover no-repeat;position:static;font-size:12px;}
        input::-webkit-input-placeholder {color:#a6aebf;}
        input::-moz-placeholder {/* Mozilla Firefox 19+ */            color:#a6aebf;}
        input:-moz-placeholder {/* Mozilla Firefox 4 to 18 */            color:#a6aebf;}
        input:-ms-input-placeholder {/* Internet Explorer 10-11 */            color:#a6aebf;}
        input:-webkit-autofill {/* 取消Chrome记住密码的背景颜色 */            -webkit-box-shadow:0 0 0 1000px white inset !important;}
        html {height:100%;}
        .login-main .login-bottom .tip {clear:both;height:16px;line-height:16px;width:288px;margin:0 auto;}
        .login-main .login-bottom .tip .login-tip {font-family:MicrosoftYaHei;font-size:12px;font-weight:400;font-stretch:normal;letter-spacing:0;color:#9abcda;cursor:pointer;}
        .login-main .login-bottom .tip .forget-password {font-stretch:normal;letter-spacing:0;color:#1391ff;text-decoration:none;position:absolute;right:62px;}
        .login-main .login-bottom .login-btn {width:288px;height:40px;background-color:#1E9FFF;border-radius:16px;margin:24px auto 0;text-align:center;line-height:40px;color:#fff;font-size:14px;letter-spacing:0;cursor:pointer;border:none;}
        .login-main .login-bottom .center .item .validateImg {position:absolute;right:1px;cursor:pointer;height:36px;border:1px solid #e6e6e6;}
        .footer {left:0;bottom:0;color:#fff;width:100%;position:absolute;text-align:center;line-height:30px;padding-bottom:10px;text-shadow:#000 0.1em 0.1em 0.1em;font-size:14px;}
        .padding-5 {padding:5px !important;}
        .footer a,.footer span {color:#fff;}
        @media screen and (max-width:428px) {.login-main {width:360px !important;}
            .login-main .login-top {width:360px !important;}
            .login-main .login-bottom {width:360px !important;}
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome/css/font-awesome.min.css"/>
    <script src="https://cdn.jsdelivr.net/gh/stevenjoezhang/live2d-widget/autoload.js"></script>
</head>
<body>
<div class="main-body">
    <%
        Cookie[] c=request.getCookies();
        for(int i=0;i<c.length;i++){
            if("user".equals(c[i].getName())){
                request.setAttribute("username",c[i].getValue());
            }
            if("password".equals(c[i].getName())){
                request.setAttribute("password",c[i].getValue());
            }
        }
    %>
    <div class="login-main">
        <div class="login-top">
            <span>智能汽车出租用户登录</span>
            <span class="bg1"></span>
            <span class="bg2"></span>
        </div>
        <form class="layui-form login-bottom" id="form">
            <div class="center">
                <div class="item">
                    <span class="icon icon-2"></span>
                    <input type="text" id="nickname" name="nickname" value="${nickname}" lay-verify="required"  placeholder="请输入昵称" maxlength="24"/>
                </div>

                <div class="item">
                    <span class="icon icon-3"></span>
                    <input type="password"  name="password" lay-verify="required" value="${password}" placeholder="请输入密码" maxlength="20">
                    <span class="bind-password icon icon-4"></span>
                </div>

                <div class="item">
                    <span class="icon icon-2"></span>
                    <input type="text" id="email" name="email" lay-verify="required"  placeholder="请输入qq邮箱" maxlength="20">
                </div>

            </div>
            <div class="tip">
                <span class="icon-nocheck"></span>
                <span class="login-tip">保持登录</span>
                <a href="./static/html/register.html" class="forget-password">立即注册</a>
            </div>
            <div class="layui-form-item" style="text-align:center; width:100%;height:100%;margin:0px;">
                <input type="button" class="login-btn"  lay-filter="login" onclick="login()" value="立即登录">
            </div>
        </form>
    </div>
</div>
<div class="footer">
    ©版权所有 逯俊琪<span class="padding-5">|</span><a target="_blank" href="http://www.miitbeian.gov.cn"></a>
</div>
<script src="static/js/layui.js" type="text/javascript" charset="utf-8"></script>
<script src="static/js/jquery.js" type="text/javascript" charset="utf-8"></script>

<script>
    $(window).keydown(function (event) {
        if(event.keyCode ==13){
            login();
        }
    })
    function login(){
        $.ajax({
            type: "post",
            url: "login",
            data: $("#form").serialize(),
            success: function (result) {
                if(result==="0"){
                    alert("密码错误")
                }else {
                    window.location.href = "./static/html/"+result+".jsp?"+$("#nickname").serialize()
                }

            }});
    }
</script>
</body>
</html>