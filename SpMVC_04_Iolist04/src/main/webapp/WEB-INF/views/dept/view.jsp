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
<%@ include file="/WEB-INF/views/include/include-css.jspf" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


</head>
<body>
	<%@ include file="/WEB-INF/views/include/include-dept-header.jspf"%>
	<style>
		th{
			background-color: #ccc;
			text-align: right;
		}
		td{
			background-color: #ddd;
			
		}
		div.btn-box{
			display: flex;
			width:90%;
			margin: 10px auto;
			/*background-color : #fff;*/

			
			justify-content: center;
			align-content: center;
			padding: 10px
		}
		
		button{
			border-radius: 3px;
			outline: none;
			padding: 10px 20px;
			margin-right: 10px;
			
		}
		
		button:hover{
			background-color: #ddd;
			color: black;
			cursor: pointer;
		}
		
		.btn-update{
			background-color: blue;
			color: white;
			
		}
		.btn-delete{
			background-color: orange;
			color: white;
			margin-right: 10px;
		}
	
	</style>
	
	<script>
		
		$(function(){
			$(".btn-update").click(function(){
				document.location.href = "${rootPath}/dept/update?id=${DEPT_DTO.d_code}"
			})
			
			
			$(".btn-delete").click(function(){
				
				let msg = "거래처 : ${DEPT_DTO.d_name} \n"
				msg += "대표 : ${DEPT_DTO.d_ceo} \n"
				msg += "삭제할까요?"
				if(confirm(msg)){
					document.location.href = "${rootPath}/dept/delete?id=${DEPT_DTO.d_code}"
				}
			})
		})
	</script>
	
	<section>
		<table>
			<tr>
				<th>거래처코드</th><td>${DEPT_DTO.d_code}</td>
				<th>거래처명</th><td>${DEPT_DTO.d_name}</td>
			</tr>
			
			<tr>
				<th>대표</th><td>${DEPT_DTO.d_ceo}</td>
				<th>전화번호</th><td>${DEPT_DTO.d_tel}</td>
			</tr>
			
			<tr>
				<th>주소</th><td colspan="3">${DEPT_DTO.d_addr}</td>
			</tr>
			
			<tr>
				<td colspan="4">
					<div class="btn-box">
						<button class="btn-update">수정</button>
						<button class="btn-delete">삭제</button>
					</div>
				</td>
			</tr>
		</table>
	</section>

</body>
</html>