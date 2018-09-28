<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../layout/top.jsp" flush="false"/>
<link rel="stylesheet" href="./css/join_article.css" type="text/css"/>
<div id="article">
	<form method="get" onsubmit="return next()" action="Join_Enter.action">
	<div id="article_join_top">
		<h3>회원가입</h3>
		<dl id="non_check">이용약관</dl>
		<dl id="check">본인인증</dl>
		<dl id="non_check">개인정보입력</dl>
		<dl id="non_check">결과확인</dl>
	</div>	<!-- article_join_top -->
	<div id="clear"></div>
	<div id="article_join_main">
		<b>Join_Confirm.jsp</b>
		<div id="button">
		<input type="button" value="이전단계" id="last_button" onclick="window.history.back()">
		<input type="submit" value="다음단계" id="next_button"></div>
	</div>	<!-- article_join_main -->
	</form>.
	<div id="clear"></div>
</div>	<!-- article -->
<jsp:include page="../layout/footer.jsp" flush="false"/>