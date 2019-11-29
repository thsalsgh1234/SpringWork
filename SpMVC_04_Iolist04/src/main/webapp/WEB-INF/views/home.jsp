<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>나의 페이지</title>
<link rel="stylesheet" href="${rootPath}/css/main.css?ver=2019-11-25"
	type="text/css">
</head>
<body>
	<header>
		<h3>매입매출 관리</h3>
	</header>
	<%@ include file="/WEB-INF/views/include/include-product-nav.jspf"%>
</body>
</html>