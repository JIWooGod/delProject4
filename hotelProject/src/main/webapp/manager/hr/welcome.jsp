<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/hotelProject/css/hoteladmin.css"/>
</head>
<body>
<br/>
<br/>
<hr/>
<p style="text-align:center">
${applier.empName } 님, 가입을 완료하려면 아래 링크를 눌러 입력한 이메일로 확인메일을 보내십시오.<br/>
<a href="/hotelProject/applyMailing?receiver=${applier.empEmail }&empId=${applier.empId }"><strong>확인메일 보내기</strong></a>
</p>
</body>
</html>