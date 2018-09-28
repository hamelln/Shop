<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Join.jsp</title>
<link rel="stylesheet" href="./css/top.css" type="text/css"/>
<link rel="stylesheet" href="./css/join_article.css" type="text/css"/>
<link rel="stylesheet" href="./css/footer.css" type="text/css"/>
</head>
<body>
<div id="whole">
<div id="top">
	<div id="top_left">
		<a href="./index.do">UNIVERSE</a>
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
		<li>상의</li>
			<ul id="submenu">
				<li>긴팔</li>
				<li>반팔</li>
				<li>맨투맨</li>
				<li>나시</li>
			</ul>
		<li>하의</li>
			<ul id="submenu">
				<li>치마</li>
				<li>바지</li>
				<li>치마바지</li>
			</ul>
		<li>기타</li>
	</ul>
	<div id="clear"></div>
</nav>	<!-- menu -->
<script type="text/javascript">
	function next() {
		return true;
	}
</script>
<div id="article">
	<form method="get" onsubmit="return next()" action="Login.action">
	<div id="article_join_top">
		<h3>회원가입</h3>
		<dl id="non_check">이용약관</dl>
		<dl id="non_check">본인인증</dl>
		<dl id="non_check">개인정보입력</dl>
		<dl id="check">결과확인</dl>
	</div>	<!-- article_join_top -->
	<div id="clear"></div>
	<div id="article_join_main">
		<center id="join_result">..님 가입완료되었습니다</center>
		<br>
		<div id="button">
		<input type="hidden" value="이전단계" id="last_button">
		<input type="submit" value="로그인창으로" id="next_button"></div>
	</div>	<!-- article_join_main -->
	</form>
	<div id="clear"></div>
</div>	<!-- article -->
<div id="footer">
	<p>조원 : 이준우, 이태현, 조은</p>
	<p>주소 : 반짝반짝 지구별 안의 대한민국</p>
	<p>계좌번호 : 믿음은행 000000-000000</p>
	<p>예금주 : 이우주</p>	<br>
	<p>언제나 저희 UNIVERSE 쇼핑몰을 즐겨주셔서 감사합니다</p>
</div>
</div>	<!-- whole -->
</body>
</html>