<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${emp.deptNo } 부서 / <b>${emp.empName }</b>
<input type="hidden" name="jobintvViewer" value="${emp.empNo }"/>
</body>
</html>