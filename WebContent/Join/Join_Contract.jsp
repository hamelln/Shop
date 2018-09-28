<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../layout/top.jsp" flush="false"/>
<link rel="stylesheet" href="./css/join_article.css" type="text/css"/>
<script src="./js/join_contract.js"></script>

<div id="article">
	<form method="get" onsubmit="return next()" action="Join_Confirm.action">
	<div id="article_join_top">
		<h3>회원가입</h3>
		<dl id="check">이용약관</dl>
		<dl id="non_check">본인인증</dl>
		<dl id="non_check">개인정보입력</dl>
		<dl id="non_check">결과확인</dl>
	</div>	<!-- article_join_top -->
	<div id="clear"></div>
	<div id="article_join_main">
		<table id="contract">
		<tr><th>UNIVERSE 서비스 약관 동의</th>	
			<td><input type="checkbox" id="servicechk">
				<p>*꼭 체크해주세요*</p><div id="clear"></div></td></tr>
		<tr><td colspan="2"><textarea rows="10" cols="100%">
			나는야 토마토 토마토
		</textarea></td></tr>
		</table>
		<table id="contract">
		<tr><th>UNIVERSE 개인정보 수집 및 이용 동의</th>	
			<td><input type="checkbox" id="informationchk">
				<p>*꼭 체크해주세요*</p><div id="clear"></div></td></tr>
		<tr><td colspan="2"><textarea rows="10" cols="100%">
			나는야 토마토 토마토
		</textarea></td></tr>
		</table><br>
		<div id="button">
		<input type="button" value="모두동의" id="all_check" onclick="allchk()"> 
		<input type="submit" value="다음단계" id="next_button">
		</div>
	</div>	<!-- article_join_main -->
	</form>
	<div id="clear"></div>
</div>	<!-- article -->

<jsp:include page="../layout/footer.jsp" flush="false"/>