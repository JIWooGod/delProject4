<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<c:forEach items="${ menus }" var="menu" end="0">
			${ menu.rstName }
		</c:forEach>
	</div>
	<table style="padding: 30px;">
			<c:if test="${ !empty menus }">
				<c:forEach items="${ menus }" var="menu" varStatus="status">
				<tr>
					<td rowspan="2">
						<c:forTokens items="${ menu.menuImg }" delims="-" var="menuImg" varStatus="ii">
							<c:if test="${ ii.index == 0}">
								<img src="dining/update/${ menuImg }" style="width: 200px; height: 200px; margin: 10px">
							</c:if>
						</c:forTokens>
					</td>
					<td style="padding-top: 2px;">
						<b  style="font-size: 15px;">${ menu.menuName } &nbsp;&nbsp;...................&nbsp;&nbsp; ${ menu.menuPrice } \</b>
					</td>
				</tr>
				<tr>
					<td style="padding-bottom: 2px;">${ menu.menuCnt }</td>
				</tr>
				</c:forEach>
			</c:if>
			<c:if test="${ empty menus }">
				<div align="center" style="padding: 200px;">
					메뉴를 준비중입니다.
				</div>
			</c:if>
	</table>
</body>
</html>