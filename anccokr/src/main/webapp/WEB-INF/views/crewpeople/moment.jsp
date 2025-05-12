<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-크루모먼트</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>
<%@ include file = "../include/nav.jsp" %>
<%@ include file = "../include/floating-left.jsp" %>

<div class="container-fluid mt-5">
  <div class="row main-row">
        <div class="col-12 px-2 pb-4">
          <div class="col-6 px-2 faq-search text-center" id="mobile-100-percent">
          <form role="form" name="frmSearch" id="frmSearch">		
			<input type="hidden" name="init" value="${init}" />
			<input type="hidden" name="startPage" id="startPage" value="" />
			<input type="hidden" name="visiblePages" id="visiblePages" value="" />
			<div class="input-group faq-search-row">
			  <input class="form-control" name="searchText" id="searchText" type="text" placeholder="검색어를 입력하세요" style="height:55px;">
			  <div class="input-group-append">
				<button class="btn btn-primary" name="searchBtn" id="searchBtn"><img class="faq-search-btn" src="../img/ico-search-wh.png"></button>
			  </div>
			</div>
		  </form>	
		  </div>
		  <div class="col-6 px-2 align-bottom" id="mobile-100-percent">
		  <div class="taglink pt-3">
			<span class="mx-3 font-20 font-bold">{인기태그}</span>
			<label class="lb-tag">대한항공데이</label>
			<label class="lb-tag">카타르합격후기</label>
			<label class="lb-tag">합격생간담회</label>
		  </div>
		  </div>
	    </div>
	    <div class="col-12 px-3 text-center" style="width:100%; margin:0 auto;">
	      <div class="line-2-black" style="width:100%; margin:0 auto;"></div>
	    </div>
	</div>
</div>	  


<div class="container-fluid" id="containter-body">
  <div class="row main-row">
	<div class="col-12 moment-list">
	  <ul class="my-5">
	    <c:forEach items="${result}" var="list">
	    <li style="height:360px;">
	      <article>
	        <div class="col-12 off-hide" style="height:1.75rem;">
	          <span class="font-18"><a href="/crewpeople/momentv.do?idx=${list.idx}&init=N&startPage=${param.startPage}&visiblePages=${param.visiblePages}&search=${param.search}">${list.title}</a></span>
			  		<c:if test="${ nowdate <= regdate + 14 }"><label class="mx-2 hot-dot"></label></c:if>
		    	</div>
	        <div class="col-12 my-2 off-hide">
	          <a href="/crewpeople/momentv.do?idx=${list.idx}&init=N&startPage=${param.startPage}&visiblePages=${param.visiblePages}&search=${param.search}">
		         <c:choose>
	           		<c:when test="${list.thumbnail eq ''}"><img src="/img/weare.png" style="width:100%;" class="hvr-grow"></c:when>
	           		<c:otherwise><img src="${list.thumbnail}" style="width:100%;" class="hvr-grow"></c:otherwise>
	           	</c:choose>
	         </a>
	        </div>
	        <div class="font-14 font-gray">
	          <span class="align-left"><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd"/></span>
	          <%-- <span class="align-right">${list.visit}</span> --%>
	        </div>
	      </article>
	    </li>
	    </c:forEach>
	  </ul>  
	</div>		
  </div>	
</div>
<div class="container-fluid" id="containter-body">
	<div class="row main-row">
		<div class="col-12 paging text-center">
			<ul class="pagination pagination-lg" id="pagination"></ul>
		</div>
	</div>
</div>

<!-- 하단링크 -->
<%@ include file = "../include/footlink.jsp" %>

<!-- 상담신청 -->
<%@ include file = "../include/counsel.jsp" %>

<footer>
  <%@ include file = "../include/footer.jsp" %>
</footer>


<script>

$(document).ready(function() {
       
	$("#search").click(function(){
	    $("#frmSearch").submit();
	});
	     
	var totalPages = ${totalPage};	//전체 페이지
	var visiblePages = 3;			//리스트 보여줄 페이지
	var startPage = ${startPage};	//현재 페이지
	 
	$('#pagination').twbsPagination({
	    totalPages: totalPages,
	    visiblePages: visiblePages,
       startPage: startPage,
       onPageClick: function (event, page) {
        	$('#startPage').val(page);
        	$('#visiblePages').val(visiblePages);
        	$("#frmSearch").submit();
        }
	});
});

</script>
</body>
</html>