function load(){
	var dayLong = document.getElementById("dayLong");
	var errorTxt = document.getElementById("error");
	var videoUp = document.getElementById("videoUp");
	var unitNum = document.getElementById("unitNum");
	var pay = document.getElementById("pay");

	//수강기간 범위초과 오류
	function overRange(){
		console.log("수강기간 "+dayLong.value);
		if(dayLong.value<7 ||dayLong.value>30){
			errorTxt.innerHTML = "*수강가능기간은 7일에서 30일까지만 가능합니다.";
			errorTxt.style.fontSize = "0.8em";
			errorTxt.style.color = "red";
			dayLong.value=null;
		}else if(dayLong.value>=7 && dayLong.value<=30){
			errorTxt.innerHTML = "";
		}
	}
	//숫자범위 초과 오류
	function check(){
		console.log(unitNum.value);
		if(unitNum.value < 1){
			errorTxt.style.color = "red";
			errorTxt.style.fontSize = "0.8em";
			errorTxt.innerHTML = "1 이상의 숫자를 입력하시오.";
		}else if(unitNum.value > 10){
			errorTxt.style.color = "red";
			errorTxt.style.fontSize = "0.8em";
			errorTxt.innerHTML - "7 이하의 숫자를 입력하시오.";
		}
	}
	function paycheck(){
		console.log("pay "+pay);
		if(pay<0){
			errorTxt.style.color = "red";
			errorTxt.style.fontSize = "0.8em";
			errorTxt.innerHTML = "0 이상의 숫자를 입력하시오.";
		}else if(pay==null){
			errorTxt.style.color = "red";
			errorTxt.style.fontSize = "0.8em";
			errorTxt.innerHTML = "숫자를 입력하시오.";
		}
	}
	dayLong.addEventListener("blur",overRange,false);
	unitNum.addEventListener("blur",check,false);
}
window.addEventListener("load",load,false);