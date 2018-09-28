function next() {
	var servicechk = document.getElementById("servicechk");
	var informationchk = document.getElementById("informationchk");
	if(servicechk.checked==true){
		if(informationchk.checked==true){
			return true;
		}else{
			alert("UNIVERSE 개인정보 수집 및 이용 동의에 체크해주세요");
			return false;
		}
	}else{
		alert("UNIVERSE 서비스 약관 동의에 체크해주세요");
		return false; 
	}
	
}

function allchk() {
	var servicechk = document.getElementById("servicechk");
	var informationchk = document.getElementById("informationchk");
	servicechk.checked = true;
	informationchk.checked = true;
}