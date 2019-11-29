<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 JSP 페이지</title>

<style>

/* 
	header : tag 이름
	{} : 모양에 대한 여러가지 속성 지정
*/
header {
	background-color: green ; /* box의 바탕색을 지정 */
	color : white; /* header box내의 문자열의 글자색을 지정*/
	width : 50%; /* box길이 지정*/		
}

p{
	background-color: cyan;
/* 태그만 시작하면 본문에 있는 모든 tag에 적용*/
}
a{
	text-decoration: none; /* a tag에 적용되어서 밑줄을 없애는 용도 */
	
}
/*
a:hover 액션을 지정하는데
nav tag 내에있는 a tag에만 액션을 지정하라
*/
a:hover{
	font-weight: bold; /* 글자 모양을 bold체로 변경 */
	font-style: italic;/* 글자모양을 이텔릭체로 변경*/
	
}

/* 이문서에 id가 p1으로 지정된 tag에 스타일을 지정하라  */
/* p#p1 또는 #p1 형식으로 지정해도 된다 */
p#p1{
	font-size: 50pt;
	background-color: blue;
	color: white;
}
/* 이문서에 class가 pc로 지정된 tag에 스타일을 지정하라 */
/* p.pc또는 .pc 형식으로 지정해도 된다. */
p.pc{
	background-color: red;
	color: yellow;
	background-image:("/resources/images/Desert.png");
}

</style>
</head>
<body>
	
	<header>
		<h3>나의 홈페이지</h3>
	</header>
	<nav>

		<ul>
			<li><a href="#">학생리스트</a></li>
			<li><a href="#">학생검색</a></li>
			<li><a href="#">로그인</a></li>
			<li><a href="#">회원가입</a></li>

		</ul>

	</nav>
	
	<section>
		<article>
			<p><font size=30pt color=blue face=궁서>여기는 본문부분입니다</font></p>
			<p style="font-size:50pt;color:red;background:yellow">여기는 또 다른 본문입니다.</p>
			<p> 여기는 나의 이야기 입니다</p>
			<p id="p1">여기는 p1 입니다</p>
			<p id="p2">여기는 p2 입니다</p>
			<p id="p3" class="pc">여기는 p3 입니다</p>
			<p id="p4" class="pc">여기는 p4 입니다</p>
			<p id="p5" class="pc">여기는 p5 입니다</p>
			
			<p><a href="https://naver.com">네이버바로가기</a>
		</article>
	
	</section>
	<footer>
		<address>CopyRight &copy; hhjkjm123@naver.com</address>
	</footer>


</body>
</html>
