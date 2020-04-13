<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>델루나 쇼핑몰 - 관리자</title>

</head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">

</script>
<body>
 <jsp:include page="./shopInclude/shopHeader.jsp" flush="true" /> 



<table cellpadding="0" cellspacing="0" align="center">
<tr><td><h2>주문내역<br></h2></td></tr>
<tr><td></td></tr>
<tr><td>주문자 : ${command.memName }</td></tr>
<tr><td>배송지 : ${command.memAddr }</td></tr>
<tr><td>연락처 : ${command.memTel }</td></tr>
<tr><td>상품명 : ${command.goodsName }</td></tr>
<tr><td>배송방법: ${command.shipName }</td></tr>
<tr><td>주문금액: ${command.payPrice }</td></tr>
<tr><td><button><a href="main">메인으로</a></button></td></tr>
</table>	
</body>

</html>