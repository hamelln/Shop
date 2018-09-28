<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index.jsp</title>
<link rel="stylesheet" href="../css/top.css" type="text/css"/>
<link rel="stylesheet" href="../css/index_article.css" type="text/css"/>
<link rel="stylesheet" href="../css/footer.css" type="text/css"/>
</head>
<body>
<div id="whole">
<div id="top">
	<div id="top_left">
		<a href="./index.action">UNIVERSE</a>
	</div>	<!-- top_left -->
	<div id="top_right">
		<dl><a href="Login.action">Login</a></dl>	<dl> | </dl>
		<dl><a href="Join.action">Join</a></dl>		<dl> | </dl>
		<dl><a href="Notice.action">Notice</a></dl>	<dl> | </dl>
		<dl><a href="Cart.action">Cart</a></dl>		<dl> | </dl>
		<dl><input type="text"></dl>
		<dl><input type="button" onclick="chk()" value="검색"></dl>
	</div>	<!-- top_right -->
	<div id="clear"></div>
</div>	<!-- top -->
<hr>
<div id="logo">
	<img src="./image/logo.png" alt="logo">
</div>
<hr>
<nav id="menu">
	<ul id="menu_ul">
		<li>New</li>
		<li>Best</li>
		<li>상의
			<ul id="submenu">
				<li>긴팔</li>
				<li>반팔</li>
				<li>맨투맨</li>
				<li>나시</li>
			</ul></li>
		<li>하의
			<ul id="submenu">
				<li>치마</li>
				<li>바지</li>
				<li>치마바지</li>
			</ul></li>
		<li>기타</li>
	</ul>
	<div id="clear"></div>
</nav>	<!-- menu -->