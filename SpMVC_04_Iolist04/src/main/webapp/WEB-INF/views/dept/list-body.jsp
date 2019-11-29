<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css" href="${rootPath}/css/list-table.css?ver=20191129001">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<body>
	<article>

		<table>
			<tr>
				<th>NO</th>
				<th>거래처코드</th>
				<th>거래처명</th>
				<th>대표</th>
				<th>전화번호</th>
				<th>주소</th>
			</tr>
			
			<c:choose>
				<c:when test="${empty DEPTLIST}">
					<tr>
						<td colspan="5">데이터가 없음</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${DEPTLIST}" var="dto" varStatus="info">
						<tr class="content-body" id="${dto.d_code}">
							<td>${info.count}</td>
							<td>${dto.d_code}</td>
							<td>${dto.d_name}</td>
							<td>${dto.d_ceo}</td>
							<td>${dto.d_tel}</td>
							<td>${dto.d_addr}</td>
						</tr>
					</c:forEach>
				</c:otherwise>

			</c:choose>

		</table>
	</article>

</body>
</html>