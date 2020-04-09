<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
var totalTime; //총 재생시간
var mine; //내 재생시간
var current; //현재 재생시간
var mineTime = document.getElementById("mineTime");
var mineLoc = document.getElementById("mineLoc");
var frm1 = document.getElementById("frm1");
var frm1 = document.getElementById("frm2");

function getTime(){
	console.log("재생시간 "+videoUp);
	if(videoUp!=null){
		totalTime = Math.floor(Player.currentMedia.duration);
		document.getElementById("fullTime").innerHTML = "강의시간 "+changeTimeType(totalTime);
		document.getElementById("totalTime").value = changeTimeType(totalTime);
		frm1.submit();
	}
}
function check(){
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
//videoUp.addEventListener("load",getTime,false);
//videoUp.addEventListener("ended",finished,false);

//window.addEventListener("close",check,false);
</script>
</head>

<body>
<h2>${subject.subjName }</h2>
<div id="basicInfo">
<table class="tableList">
	<tr>
		<td>${list.subjGroup }과목</td>
		<td><b>강사명</b> 강사</td>
		<td>이수단위 <b>n</b></td>
	</tr>
	<tr>
		<td colspan="3">본 강의는 <b>${list.subjDay }</b>일 이내로 수강하여야 합니다.</td>
	</tr>
</table>
</div>
<div id="videoView">
!강의시간 이내로 재생한 후 종료하면 수료되지 않습니다.
	<video id="video" width="100%" height="auto" controls="controls"
	controlsList="nodownload" ontimeupdate="javascript:moved(this)">
		<source src="/hotelProject/lec/video/${list.subjStore }" type="video/${extension }">
	</video>
	<div id="fullTime"></div>
	<p>${list.subjCnt }</p>
</div>
<div id="hidden">
<form action="timeSend" id="frm1">
	<input type="hidden" name="subjTime" id="totalTime"/>
</form>
<form action="playedTime" id="frm2">
	<input type="hidden" name="mineTime" id="mineTime"/>
	<input type="hidden" name="mineLoc" id="mineLoc"/>
</form>
</div>
<button onclick="loaction.href='#'">시험보기</button>
<button onclick="location.href='../lecture/teacher/modify?num=${list.subjNo }'">강의내용 수정</button>
<button onclick="location.href='../lecture/teacher/deleting?num=${list.subjNo }'">강의 삭제하기</button>
<button onclick="location.href='../lecture'">강좌목록</button>
</body>
</html>