function pass_chk() {
	var pass = document.getElementById("password");
	var pass2 = document.getElementById("password_chk");
	if(pass.value==""){
		alert("비밀번호를 입력하세요");
		return false;
	}else{
		if(pass2.value==""){
			alert("비밀번호 확인을 입력하세요");
			return false;
		}else{
			if(pass.value!=pass2.value){
				alert("비밀번호와 비밀번화 확인이 동일하지 않습니다");
				return false;
			}else{
				alert("동일하게 입력하였습니다");
				return true;
			}
		}
	}
}

function select_Em() {
	var email3 = document.getElementById("selectEmail");
	var email2 = document.getElementById("email_two");
	if(email3.value==""){
		email2.value="";
		email2.focus();
	}else{
		email2.value = email3.value;
	}
}

function zipcode_chk() {
	window.open("zipcode.action","우편번호 찾기","width=450, height=150;");
}