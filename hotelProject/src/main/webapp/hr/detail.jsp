<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>사원정보</h2>
<form action="paperPass" id="frm1" method="post">
	<input type="hidden" name="passState" value="서류합격자"/>
	<input type="hidden" name="empNo" value="${applier.empNo }"/>
</form>
<table class="tableForm">
	<tr>
		<td>사원번호</td>
		<td>${applier.empNo }</td>
	</tr>
	<tr>
		<td>부서</td>
		<td>${applier.deptNo }</td>
	</tr>
	<tr>
		<td>직급</td>
		<td></td>
	</tr>
	<tr>
		<td>사원명</td>
		<td>${applier.empName }</td>
	</tr>
	<tr>
		<td>연락처</td>
		<td>${applier.empTel }</td>
	</tr>
	<tr>
		<td>이메일</td>
		<td>${applier.empEmail }</td>
	</tr>
	<tr>
		<td>아이디</td>
		<td>${applier.empId }</td>
	</tr>
	<tr>
		<td>주소</td>
		<td>${applier.empAddr }</td>
	</tr>
	<tr>
		<td>입사일</td>
		<td>${applier.empDate }</td>
	</tr>
	<c:if test="${empty applier.passState }">
	<tr>
		<td>경력사항</td>
		<td>${applier.empCarr }</td>
	</tr>
	<tr>
		<td>자격증</td>
		<td>${applier.empCerti }</td>
	</tr>
	</c:if>
	<c:if test="${applier.passState=='정규사원' }">
	<tr>
		<td>승진등급</td>
		<td></td>
	</tr>
	<tr>
		<td>승진점수</td>
		<td></td>
	</tr>
	</c:if>
</table>
<button onclick="location.href='../modify?empNo=${applier.empNo }'">정보수정</button>
<button onclick="location.href='/hotelProject/personnel'">메인으로</button>
<c:choose>
	<c:when test="${empty applier.passState || applier.passState == '지원대기자'}">
		<button onclick="javascript:pass1st()">서류합격</button>
	</c:when>
	<c:when test='${applier.passState == "서류합격자" }'>
		<button onclick="location.href='../interview/${applier.empNo}'">면접보기</button>
	</c:when>
	<c:when test='${applier.passState == "면접합격자" }'>
		<button onclick="location.href='./contract/${applier.empNo }'">계약하기</button>
	</c:when>
</c:choose>

<script type="text/javascript">
function pass1st(){
	var frm = document.getElementById("frm1");
	var conVal = confirm("${emp.empName} 지원자를 1차 합격합니다.");
	if(conVal == true){
		frm.submit();
	}
}
</script>
</body>
</html>