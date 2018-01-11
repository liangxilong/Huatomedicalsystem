<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>华佗医疗系统</title>
	<link href="../resources/css/styles.css" type="text/css" rel="stylesheet">
	<link href="../resources/css/main.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="../resources/js/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="../resources/js/styles.js"></script>
	<script type="text/javascript" src="../resources/js/main.js"></script>
</head>
<body>
<div>
	<div class="title" >
		<img alt="" src="../resources/images/top1.jpg">
	</div>
	<div class="top">
			<div class="ul_div">
				<ul>
					<li>主页</li>
					<li>门诊系统</li>
					<li>住院系统</li>
					<li>库存管理</li>
					<li>财务系统</li>
					<li>报表统计系统</li>
					<li>人员管理系统</li>
					<li>后台管理系统</li>
				</ul>
			</div>
			<div class="login_div">
				<span class="wel">你好！ ${listUesr[0].userName }，</span>
				<a href="pages/login.jsp" class="exit">退出</a>
			</div> 
	</div>
</div>    
<dl class="sidedl" style="position: relative">
        <dt class="">管理员操作
<!--          <img id="bg" src="/SZ-LIBARAY/img/VIP邮箱背景图.jpg" alt=""/> -->
            <span class="ico"></span>
        </dt>
        <dd>
            <dl>
                <dt><span class="span">用户管理<span class="ico"></span></span>
                </dt>
                <dd class="content">
                    <div class="content-1">
						<div class="id1">* 当前位置 : 管理用户 >> 用户管理</div>
                    </div>
                    
                </dd>
                <dt><span class="span">书籍管理<span class="ico"></span></span>
                    
                </dt>
                <dd class="content">
                    <div class="content-1">
						<div class="id1">* 当前位置 : 管理用户 >> 书籍管理</div>
                    </div>
                </dd>
                
            </dl>
        </dd>
        <dt>我要借书
            <span class="ico"></span>
        </dt>
        <dd><dl>
            <dt><span class="span">用户管理<span class="ico"></span></span>
            </dt>
            <dd class="content">
                <div class="content-1">

                </div>
            </dd>
            <dt><span class="span">用户管理<span class="ico"></span></span>
            </dt>
            <dd class="content">
                <div class="content-1">

                </div>
            </dd>
            <dt><span class="span">用户管理<span class="ico"></span></span>
            </dt>
            <dd class="content">
                <div class="content-1">

                </div>
            </dd>
        </dl>
        </dd>
        <dt>粤港澳
            <span class="ico"></span>
        </dt>
        <dd><dl>
            <dt><span class="span">用户管理<span class="ico"></span></span>
            </dt>
            <dd class="content">
                <div class="content-1">

                </div>
            </dd>
            <dt><span class="span">用户管理<span class="ico"></span></span>
            </dt>
            <dd class="content">
                <div class="content-1">

                </div>
            </dd>
            <dt><span class="span">用户管理<span class="ico"></span></span>
            </dt>
            <dd class="content">
                <div class="content-1">

                </div>
            </dd>
        </dl>
        </dd>
    </dl>
</body>
</html>