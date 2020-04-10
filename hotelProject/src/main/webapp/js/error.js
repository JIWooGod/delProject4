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
	
	var totalTime; //총 재생시간
	var mine; //내 재생시간
	var current; //현재 재생시간
	var mineTime = document.getElementById("mineTime");
	var mineLoc = document.getElementById("mineLoc");
	var frm1 = document.getElementById("frm1");
	var frm1 = document.getElementById("frm2");


	function checkTime(){
		var ok = confirm("내 재생시간은 "+mine+"입니다. 정말 종료하시겠습니까?");
		if(ok==true){
			mineTime.value = mine;
			mineLoc.value = current;
			frm2.submit();
			window.close();
		}else{
			videoUp.attr.autoplay = "autoplay";
		}
	}
	function finished(){
		document.getElementById("mineTime").value = mine;
	}
	function moved(){
		current = event.currentTime;
		document.getElementById("mineLoc").value = current;
	}
	//videoUp.addEventListener("play",setTime,false);
	//videoUp.addEventListener("ended",finished,false);

	//window.addEventListener("close",checkTime,false);
}
window.addEventListener("load",load,false);