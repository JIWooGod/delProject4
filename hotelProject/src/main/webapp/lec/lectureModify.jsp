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
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js" ></script>
<script type="text/javascript" src="/hotelProject/js/error.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$(function(){
		$("#delBtn").click(function(){
			if($("#delBtn").attr("value")=="파일삭제"){
	           $("#delBtn").attr("value","삭제취소");
	           $("#original_file").html("");
	           $("#view").html("새 동영상파일: <input type='file' id='video' accept='video/mp4' name='subjVideo'/>");
	        }else{
	           $("#delBtn").attr("value","삭제");
	           $("#view").html("");
	           $("#original_file").html("<video src='/hotelProject/lec/video/${list.subjStore }' width='300px' height='auto'></video>");
       		}
		});
	});
});
</script>
</head>
<body>
<h2>강의 내용 수정</h2>
<form action="modifying" method="post" enctype="multipart/form-data">
	<input type="text" name="subjNum" value="${list.subjNo }" readonly/>
	<table id="tableForm">
		<tr>
			<td>과목분류</td>
			<td>${list.subjGroup }</td>
		</tr>
		<tr>
			<td>강사번호</td>
			<td></td>
		</tr>
		<tr>
			<td>강의명</td>
			<td><input type="text" name="subjName" placeholder="강의명을 입력하시오"/></td>
		</tr>
		<tr>
			<td>강의 동영상</td>
			<td>
				<input type="button" id="delBtn" value="파일삭제">
				<div id="original_file">
				<video src="/hotelProject/lec/video/${list.subjStore }" 
					width="300px" height="auto"></video>
				</div>
				<div id="view"></div>
			</td>
		</tr>
		<tr>
			<td>수강기간</td>
			<td><input type="number" name="subjDay" id="dayLong" max="30" min="7" ${list.subjDay }/>일<div id="error"></div></td>
		</tr>
		<tr>
			<td>강의내용</td>
			<td><textarea name="subjCnt">${list.subjCnt }</textarea></td>
		</tr>
	</table>
	<input type="submit" value="수정하기">
	<input type="reset" value="초기화">
	<input type="button" onclick="location.href='../lecture/teacher/deleting?num=${list.subjNo}'" value="삭제"/>
	<input type="button" onclick="location.href='../lecture/teacher/${list.subjNo}'" value="취소"/>
</form>
</body>
</html>