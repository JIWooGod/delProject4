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
<script type="text/javascript" src="/hotelProject/js/contractSign.js"></script>
</head>
<body>
<h2>계약서</h2>
<form:form action="empContracting" commandName="empContractCommand">
<table id="tableForm">
	<tr>
		<td>계약번호</td>
		<td>
			${empCtrt.employmentNo }
			<form:hidden path="paperNo"/>
		</td>
	</tr>
	<tr>
		<td>사원번호</td>
		<td><form:input path="empNo" value="${applier.empNo }" readonly/></td>
	</tr>
	<tr>
		<td>성명</td>
		<td><form:input path="name" placeholder="성명을 정확히 기입하시오"/></td>
	</tr>
	<tr>
		<td>급여</td>
		<td><form:input path="salary" value="${empCtrt.employmentSign }" readonly/>원</td>
	</tr>
	<tr>
		<td>직급</td>
		<td>
			<form:select path="position">
				<c:forEach items="listName" var="dtoName" varStatus="a">
				<form:option value="${a.posit.employmentPosi }"></form:option>
				</c:forEach>
			</form:select>
		</td>
	</tr>
	<tr>
		<td>계약일자</td>
		<td>${empCtrt.employmentDate }</td>
	</tr>
	<tr>
		<td>서명</td>
		<td>* 아래 서명란에 서명하시오 <button onclick="javascript:onClear();">다시하기</button><br/>
			<canvas id="drawCanvas" width="300" height="150" style=" position: relative; border: 1px solid #000;"></canvas>
    		<img id="myImage" style="display:none"/>
		</td>
	</tr>
</table>
	<input type="submit" value="계약하기">
</form:form>
	<button id="cancel" onclick="location.href='../personnel'">취소</button>
</body>
</html>