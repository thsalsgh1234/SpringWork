<%@ page language="java" 
      contentType="text/html; charset=UTF-8" 
      pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<<c:set var="rootPaht" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>학생정보 관리</h3>
<!-- ul : unorderd List 약자 -->
<ol>
   <!-- list item -->
   <li><a href="${rootPaht}/student/list">학생리스트</a></li>
   <li><a href="${rootPaht}/student/search">학생검색</a></li>
   <li><a href="#">로그인</a></li>
   <li><a href="#">회원가입</a></li>
</ol>
</body>
</html>