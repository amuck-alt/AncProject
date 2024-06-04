<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-수강후기</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>

<%@ include file = "../include/nav.jsp" %>
<%@ include file = "../include/floating-left.jsp" %>


<div class="container-fluid">
	<div class="row sm-row site-map-row mt-5 mb-4">
		<div class="col-12">
		  <div class="col-12 text-center">
		    <img src="/img/img-main-reply-title.png" class="mobile-100-percent">
		  </div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row sm-row">	
		<div class="col-12">
			<div class="col-12 line-2"></div>
			<c:forEach items="${result}" var="reply">
			<div class="col-12 mt-3 mb-3 font-lightgray">
				<c:choose>
					<c:when test="${reply.section eq '인스타그램'}"><img src="/img/ico-instagram.png" width="20px"><span class="mx-2">인스타그램</span></c:when>
					<c:when test="${reply.section eq '페이스북'}"><img src="/img/ico-facebook.png" width="20px"><span class="mx-2">페이스북</span></c:when>
					<c:when test="${reply.section eq '지인추천'}"><img src="/img/ico-recommend.png" width="20px"><span class="mx-2">지인추천</span></c:when>
					<c:otherwise><img src="/img/ico-website.png" width="20px"><span class="mx-2">홈페이지방문</span></c:otherwise>
				</c:choose>				
				<span class="mx-2 font-blue">★★★★★</span></div>
			<div class="col-12 font-18" style="line-height:26px;">${reply.content}</div>
			<%-- <div class="col-12 mt-3"><span class="mr-2">by ***</span><span class="mx-3 font-lightgray">${reply.regdate}</span></div> --%>
			<div class="col-12 mt-3 line-1-gray"></div>
			</c:forEach>
		</div>
	</div>
</div>

<div class="container-fluid" style="height:300px;"></div>

<!-- 하단링크 -->
<%@ include file = "../include/footlink.jsp" %>

<!-- 상담신청 -->
<%@ include file = "../include/counsel.jsp" %>

<footer>
  <%@ include file = "../include/footer.jsp" %>
</footer>


</body>
</html>