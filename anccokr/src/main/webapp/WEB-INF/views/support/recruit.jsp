<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-항공사채용공고</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>

<%@ include file = "../include/nav.jsp" %>
<%@ include file = "../include/floating-left.jsp" %>

<div class="container-fluid">
	<div class="row sub-row site-map-row mt-5 mb-4">
		<div class="col-12">
		  <div class="col-12 mb-1">
		    <h1>항공사채용공고</h1>
		  </div>
		  <div class="col-12 py-2 line-2-black" style="width:200px; margin:0 auto;"></div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row sub-row">	
		<div class="col-12">
			<div class="search col-12 mt-2">
				<form role="form" name="frmSearch" id="frmSearch" action="/support/recruit.do">
				<input type="hidden" name="init" value="${init}" />
				<input type="hidden" name="section" value="${param.section}" />
				<input type="hidden" name="startPage" id="startPage" value="" />
				<input type="hidden" name="visiblePages" id="visiblePages" value="" />
				<div class="input-group search-row">
					<input class="form-control search-bar" name="searchText" id="searchText" type="text" placeholder="검색어를 입력하세요" value="${param.searchText}">
					<div class="input-group-append">
						<button class="btn btn-primary" name="searchBtn" id="searchBtn"><img class="faq-search-btn" src="../img/ico-search-wh.png"></button>
					</div>
				</div>
				</form>				
			</div>
		</div>
	</div>
</div>


<div class="container-fluid" id="containter-body">
	<div class="row sub-row">	
		<div class="col-12 my-2"></div>
		<div class="col-12 font-20 font-bold table-header">
			<ul class="col-12">
				<a href="/support/recruit.do?section=ko&search="><li class="<c:if test="${ param.section eq 'ko' }">now</c:if>" style="width:50%; text-align:center;">국내항공사</li></a>
				<a href="/support/recruit.do?section=os&search="><li class="<c:if test="${ param.section eq 'os' }">now</c:if>" style="width:50%; text-align:center;">외국항공사</li></a>
			</ul>
		</div>
		<table class="table">
			<tbody>
				<c:forEach items="${result}" var="list" >
				<tr class="align-middle" style="height:7rem;">
					<td width="20%" id="bbs-thumbnail"><img src="/docs/code/${list.path}" class="align-middle"></td>
					<td width="" class="font-20 align-middle">
					  <a href="/support/recruitv.do?idx=${list.idx}&startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}&section=${param.section}"><b>${ list.title }</b></a>
					  <p class="pt-2 font-14 font-gray">${list.description}</p>
					  <p class="pt-2 font-14" id="mobile-bbs-td"><b>${ list.steptitle }</b><span class="mx-2">/</span>${ list.stepdetail }</p>
					</td> 
					<td width="20%" class="font-18 align-middle" id="pc-bbs-td"><b>${ list.steptitle }</b><span class="mx-2">/</span>${ list.stepdetail }</td>
					<td width="10%" class="font-18 align-middle" id="pc-bbs-td"><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd"/></td>
				</tr>
				</c:forEach >
			</tbody>
			<tfoot>
			  <tr>
			    <td colspan="4"></td>
			  </tr>  
			</tfoot>
		</table>
		<div class="col-12 paging text-center">
		  <ul class="pagination pagination-lg" id="pagination"></ul>
		</div>
	</div>
</div>


<script>

$(document).ready(function() {
    
	$("#searchBtn").click(function(){
	    $("#frmSearch").submit();
	});
	     
	var totalPages = ${totalPage};//전체 페이지
	var visiblePages = 3;//리스트 보여줄 페이지
	var startPage = ${startPage};//현재 페이지
	 
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

</script>

<!-- 하단링크 -->
<%@ include file = "../include/footlink.jsp" %>

<!-- 상담신청 -->
<%@ include file = "../include/counsel.jsp" %>

<footer>
  <%@ include file = "../include/footer.jsp" %>
</footer>

</body>
</html>