<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
	<link href="../resources/css/styles.css" type="text/css" rel="stylesheet">
	<link href="../resources/css/login.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="../resources/js/jquery-3.2.1.js"></script>
	<script type="text/javascript">

	$(function(){
// 		alert($(window).width());
		var a = $("img").width();
		var width = ($(window).width() /  2) - (a  / 2) ;
		$("img").css("left", width + "px");
// 		alert(width)
		var a = $("span").width() + $("input").width() / 2;
// 		alert(a);
		var wi = ($(window).width() / 2) - a;
		var right = $(window).height() / 2 + 35 ;
// 		alert(right);
		$("form").css({"left": wi + "px" , "top" :right + "px","z-index":"100" });
		})

</script>
</head>
<body>

	  <img src="../resources/images/login_zh.jpg"/>
        <form action="../userAuthority/login" method="post">
        	<span>用户名:</span><input type="text" name="username"><br>
        	<span>密码:</span><input type="text" name="password"><br>
        	<input type="submit" value="确定">&nbsp;&nbsp;&nbsp;
        	<input type="reset" value="重置">
        </form> 	
  
</body>
</html>