<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-위아크루</title>
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
			<label class="lb-tag">대한항공</label>
			<label class="lb-tag">아시아나항공</label>
			<label class="lb-tag">자기소개서 </label>
			<!-- label class="lb-tag">중동항공사채용</label-->
		  </div>
		  </div>
	    </div>
	    <div class="col-12 px-3 text-center" style="width:100%; margin:0 auto;">
	      <div class="line-2-black" style="width:100%; margin:0 auto;"></div>
	    </div>
	</div>
</div>	

<div class="container-fluid mt-3" id="containter-body">
  <div class="row main-row">
    <ul class="blog-row">
      <li class="blog-row-first"><!-- 메인리스트 -->
        <div class="blog-list">
          <ul>
            <c:forEach items="${result}" var="list">
            <c:set value="${list.loginyn}" var="loginyn"/>             
              <li class="mb-5">
<%
	String loginyn = (String)pageContext.getAttribute("loginyn");
	if("Y".equals(loginyn)){
%>
		<c:choose>
			<c:when test="${!empty sessionScope.crewfactoryMemberInfo}">
				<a href="/crewpeople/wearev.do?idx=${list.idx}&init=N&startPage=${param.startPage}&visiblePages=${param.visiblePages}&search=${param.searchText}" class="">
			</c:when>
			<c:otherwise><a href="javascript:invalidMemberShip()"></c:otherwise>
		</c:choose>
<%		
	}else{
%>
		<a href="/crewpeople/wearev.do?idx=${list.idx}&init=N&startPage=${param.startPage}&visiblePages=${param.visiblePages}&search=${param.searchText}" class="">
<%		
	}
%>
                <div class="pt-3">
                <div class="col-12 font-bold font-18 font-bold pb-2 line-1-gray off-hide" style="height:4.1rem;">
                  ${fn:substring(list.title, 0, 26)}<label class="mx-2"></label>
                </div>
                <div class="col-12 py-2 off-hide" style="height:3.7rem;">
                  <p class="font-14 font-gray">${fn:substring(list.description, 0, 50)}</p>
                </div>
                <div class="col-12 my-1 off-hide" id="blog-image">
                 	<c:choose>
                 		<c:when test="${list.thumbnail eq ''}"><img src="/img/weare.png" style="width:100%;" class="hvr-grow"></c:when>
                 		<c:otherwise><img src="${list.thumbnail}" style="width:100%;" class="hvr-grow"></c:otherwise>
                 	</c:choose>
                </div>
                <div class="col-12 py-1">
                  <div class="col-6"><span class="font-14 font-gray text-left"><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd"/></span></div>
                  <div class="col-6 text-right">
                    <span class="mx-2 font-14 font-gray text-left align-top"><!-- <img src=/img/ico-view.png alt="조회수"> --></span><span>${list.visit}</span>
                    <!-- span class="mx-2 font-14 font-dark-gray text-left align-top"><img src=/img/ico-like.png alt="좋아요"></span><span>12</span-->
                  </div>
                </div>
                </div>
                </a>
              </li>
            </c:forEach>
          </ul>
        </div>
        <div class="col-12 paging text-center">
		  	<ul class="pagination pagination-lg" id="pagination"></ul>
			</div>
      </li>
      <li class="blog-row-last"><!-- 퀵메뉴 -->
        <div class="col-12 mt-10">          
		  <div class="col-12 my-3"></div>
			<div class="popular">
				<p class="font-20"><b>인기글</b></p>
				<div class="line-1-gray my-2"></div>
				<div class="col-12" id="blog-popular">
				  <ul>
				    <c:forEach items="${topblog}" var="top">
				    <c:set value="${top.loginyn}" var="loginyn"/> 
<%
	String loginyn = (String)pageContext.getAttribute("loginyn");
	if("Y".equals(loginyn)){
%>
		<c:choose>
			<c:when test="${!empty sessionScope.crewfactoryMemberInfo}">
				<a href="/crewpeople/wearev.do?idx=${top.idx}&init=N&startPage=${param.startPage}&visiblePages=${param.visiblePages}&search=${param.searchText}" class="">
			</c:when>
			<c:otherwise><a href="javascript:invalidMemberShip()"></c:otherwise>
		</c:choose>
<%		
	}else{
%>
		<a href="/crewpeople/wearev.do?idx=${top.idx}&init=N&startPage=${param.startPage}&visiblePages=${param.visiblePages}&search=${param.searchText}" class="">
<%		
	}
%>
				      <li>
						<div class="col-12 font-14 my-2 off-hide" style="height:3rem;">${top.title}</div>
						<div class="col-12 my-1 off-hide">
						  	<c:choose>
                  		<c:when test="${top.thumbnail eq ''}"><img src="/img/weare.png" style="width:100%;"></c:when>
                  		<c:otherwise><img src="${top.thumbnail}" style="width:100%;"></c:otherwise>
                  	</c:choose>
						</div>
						<div class="col-12 my-1 font-12 font-gray font-normal">
						  <div class="col-6">
						  	<span class="font-14 font-dark-gray text-left"><fmt:formatDate value="${top.regdate}" pattern="yyyy-MM-dd"/></span>
						  </div>
	            <div class="col-6 text-right">
	        	    <span class="px-2 font-14 font-dark-gray text-left align-top"><!-- <img src=/img/ico-view.png alt="조회수"> -->${top.visit}</span>
	              <!-- span class="px-2 font-14 font-dark-gray text-left align-top"><img src=/img/ico-like.png alt="좋아요">12</span-->
	            </div>
						</div>
						<div class="col-12 pb-4 line-1-gray"></div>
				      </li>
				      </a>
				    </c:forEach>
				  </ul>
				</div>
			</div>	
        </div>
      </li>
    </ul>  
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
	var visiblePages = 3;						//리스트 보여줄 페이지
	var startPage = ${startPage};		//현재 페이지
	 
	$('#pagination').twbsPagination({
	    totalPages: totalPages,
	    visiblePages: visiblePages,
        startPage: startPage,
        onPageClick: function (event, page) {
        	$('#startPage').val(page);//보고 싶은 페이지
        	$('#visiblePages').val(visiblePages);
        	$("#frmSearch").submit();
        }
	});
});

function invalidMemberShip(){
	alert("로그인이 필요한 메뉴입니다. 로그인페이지로 이동합니다.");
	location.href = "/member/login.do";
}

</script>
</body>
</html>