<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../layout/top.jsp" flush="false"/>
<link rel="stylesheet" href="./css/join_article.css" type="text/css"/>
<script src="./js/join_enter.js"></script>

<div id="article">
	<form method="get" onsubmit="return next()" action="Join_EnterOk.action">
	<div id="article_join_top">
		<h3>회원가입</h3>
		<dl id="non_check">이용약관</dl>
		<dl id="non_check">본인인증</dl>
		<dl id="check">개인정보입력</dl>
		<dl id="non_check">결과확인</dl>
	</div>	<!-- article_join_top -->
	<div id="clear"></div>
	<div id="article_join_main">
		<table id="join_enter">
			<tr><th>아이디</th>		
				<td><input type="text" id="id" name="id"></td>
				<td colspan="2"><input type="button" value="아이디중복확인" onclick="id_chk()" id="id_ch"></td></tr>
			<tr><th>비밀번호</th>		
				<td><input type="password" id="password" name="password"></td>
				<td colspan="2"><p style="color: #ff9614; font-size: small; margin: 0px;">특수문자를 추가하여 보안성을 강화해주세요</p></td></tr>
			<tr><th>비밀번호 확인</th>	
				<td><input type="password" id="password_chk"></td>
				<td colspan="2"><input type="button" value="비밀번호 확인" onclick="return pass_chk()" id="pass_ch"></tr>
			<tr><th>이름</th>			<td colspan="3"><input type="text" id="name" name="password"></td></tr>
			<tr><th>생년원일</th>
				<td><input type="text" maxlength="4" placeholder="(4자리모두입력)" id="year" name="year">년</td>
				<td><select id="month" name="month">
					<option>1</option>	<option>2</option> <option>3</option> <option>4</option> <option>5</option>
					<option>6</option> <option>7</option> <option>8</option> <option>9</option> <option>10</option>
					<option>11</option> <option>12</option>
				</select>월</td>
				<td><input type="text" id="day" name="day">일</td><tr>
			<tr><th>성별</th>		
				<td colspan="1">
					<input type="radio" name="gender" id="gender" name="gender" value="B">남성</td>
				<td colspan="1">
					<input type="radio" name="gender" id="gender" name="gender" value="G">여성</td>
				<td></td></tr>
			<tr><th>이메일</th>	
				<td colspan="1"><input type="text" id="email_one" name="email_one"></td>
				<td><input type="text" id="email_two" name="email_two"></td>
				<td><select id="selectEmail" onchange="select_Em()">
					<option value="@naver.com">@naver.com</option>
					<option value="@daum.net">@daum.net</option>
					<option value="" selected="selected">직접입력</option>
				</select></td></tr>
			<tr><th>전화번호</th>
				<td><select id="tel_one" name="tel_one">
						<option>010</option>
						<option>011</option>
						<option>직접입력</option>
					</select>  -
				</td>
				<td><input type="text" id="tel_two" name="tel_two">  -</td>
				<td><input type="text" id="tel_three" name="tel_three"></td></tr>
			<tr><th rowspan="3">주소</th>
				<td><input type="text"></td>
				<td colspan="2"><input type="button" value="우편번호 찾기" onclick="zipcode_chk()" id="zipcode_ch" name="zipcode"></td></tr>
			<tr><td colspan="3"><input type="text" id="address_one" name="address_one"></td></tr>
			<tr><td colspan="3"><input type="text" id="address_two" name="address_two"></td></tr>
		</table><br>
		<div id="button">
		<input type="button" value="이전단계" id="last_button" onclick="window.history.back()">
		<input type="submit" value="다음단계" id="next_button"></div>
	</div>	<!-- article_join_main -->
	</form>
	<div id="clear"></div>
</div>	<!-- article -->

<jsp:include page="../layout/footer.jsp" flush="false"/>