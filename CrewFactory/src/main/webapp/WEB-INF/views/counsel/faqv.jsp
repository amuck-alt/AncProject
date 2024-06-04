<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="robots" content="index, follow">
<meta name="author" content="Crew-Factory">
<meta name="keywords" content="">
<meta name="description" content="">
<title>${ result.title } - 크루팩토리승무원학원</title>

<%@ include file = "../include/header.jsp" %>

</head>
<body>

<%@ include file = "../include/nav.jsp" %>



<div class="container-fluid swip-banner-container">
	<div class="row cf-row">
		<div class="col-md-12">
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row cf-row site-map-row">
		<div class="col-md-12">
			<ul>
				<li class="font-12 font-gray">Home</li>
				<li class="font-10 mx-2">/</li>
				<li class="font-12 font-gray">새소식</li>
				<li class="font-10 mx-2">/</li>
				<li class="font-12 font-bold">인론보도자료</li>
			</ul>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row cf-row">	
		<div class="col-md-9">
			<div class="row">
				<div class="col-6 text-left">
					<a href="/counsel/faq.do"><label class="re-label">목록으로</label></a>
				</div>
				<!-- div class="col-6 text-right"><label class="re-label">이전</label><span class="mx-1"></span><label class="re-label">다음</label></div-->	
			</div>
			<div class="row">
				<div class="col-12 line-2 my-3"></div>
				<div class="col-12 font-20 font-bold"><img src="../img/faq-ico-q-btn.png" class="mx-2">${ result.question }</div>
				<div class="col-12 line-1-gray my-3"></div>
				<div class="col-12 font-20 font-bold"><img src="../img/faq-ico-a-btn.png" class="mx-2">${ result.title }</div>
				<div class="col-12 line-1-gray my-3"></div>
				<div class="col-md-12">
					${result.content}
				</div>
			</div>			
		</div>
		<div class="col-md-3">
			<div class="col-md-12">
				
				<div class=""><a href="" class="hvr-shadow"><img src="../img/sub-left-tel-btn.png"></a></div>
				<div class="my-2"></div>
				<div class="left-ban">
					<ul>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-faq-btn.png"></a></li>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-nation-btn.png"></a></li>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-fee-btn.png"></a></li>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-map-btn.png"></a></li>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-check-btn.png"></a></li>
						<li><a href="" class="hvr-shadow"><img src="../img/sub-left-fee-btn.png"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
</div>


<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<footer>
  <%@ include file = "../include/footer.jsp" %>
</footer>

</body>
</html>