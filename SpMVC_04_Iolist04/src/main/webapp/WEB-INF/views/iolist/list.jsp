<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${rootPath}/css/list-table.css?ver20191128001">
<link rel="stylesheet" type="text/css" href="${rootPath}/css/top-scroll.css?ver20191128001">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
p #insert{
	margin-left: 50px;
}

article.body{
	width: 978px;
	height: 978px;
	overflow-y: auto;
	overflow : auto;
	margin: 10px auto;
}
</style>
<script type="text/javascript">
	$(function() {
		$(".content-body").click(function(e){
			
			// id에 설정된 값을 가져오기
			let id = $(this).attr("data-id")
			let name = $(this).attr("data-name")
			alert(id + name)
			// 현재 페이지를 /dept/view를 전환하라
			// 주소창에 /dept/view를 입력하여 서버에 전송하라
			// id 변수에 값을 실어서 보내라
			document.location.href = "${rootPath}/iolist/view?id=" + id
		})
		
		var preScroll = $(window).scrollTop();
            $(window).scroll(function(e){
                let curScroll = $(window).scrollTop();
                // 아래 방향으로 스크롤을 시도하면
                if(preScroll > curScroll){
                    $("ul.main-menu").css("top",0)
                }else{
                    $("ul.main-menu").css("top",-80)
                }
                preScroll = curScroll
            })
	})

</script>

</head>
<body>
	<%@ include file="/WEB-INF/views/include/include-nav.jspf"%>
	<section class="dept">
		<article>
			<p id="insert">
				<a href="${rootPath}/iolist/insert"><button>새로등록</button></a>
		</article>

		<article class="body">

			<table>
				<tr>
					<th>NO</th>
					<th>거래일자</th>
					<th>구분</th>
					<th>CD</th>
					<th>거래처명</th>
					<th>대표자명</th>
					<th>CD</th>
					<th>상품명</th>
					<th>매입단가</th>
					<th>매출단가</th>
					<th>부가세</th>
					<th>수량</th>
					<th>단가</th>
					<th>금액</th>
				</tr>
				<c:choose>
					<c:when test="${empty IOLIST}">
						<tr>
							<td colspan="5">데이터가 없음</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${IOLIST}" var="dto" varStatus="info">
						
							<%
							/*
								기본적으로 tag에 포함할 수 있는 속성 id ,
							*/
							%>
						
							<tr class="content-body" data-id="${dto.io_seq}" data-name = "홍길동">
			
							
								<td>${dto.io_seq}</td>
								<td>${dto.io_date}</td>
								<td>${dto.io_inout}</td>
								<td>${dto.io_dcode}</td>
								<td>${dto.d_name}</td>
								<td>${dto.d_ceo}</td>
								<td>${dto.io_pcode}</td>
								<td>${dto.p_name}</td>
								<td>${dto.p_iprice}</td>
								<td>${dto.p_oprice}</td>
								<td>${dto.p_vat}</td>
								<td>${dto.io_qty}</td>
								<td>${dto.io_price}</td>
								<td>${dto.io_total}</td>
							</tr>
						</c:forEach>
					</c:otherwise>

				</c:choose>

			</table>
		</article>
	</section>

</body>
</html>