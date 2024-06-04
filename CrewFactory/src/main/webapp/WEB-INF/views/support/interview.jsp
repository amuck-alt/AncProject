<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-항공과 대학합격후기</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>

	<%@ include file="../include/nav.jsp"%>
	<%@ include file="../include/floating-left.jsp"%>


<%@ include file = "../include/subbanner.jsp" %>


<div class="container-fluid">
	<div class="row sm-row mt-5 mb-4">
		<div class="col-12">
		  <div class="col-12 mb-1">
		    <h1>항공과 대학합격후기</h1>
		  </div>
		  <div class="col-12 py-2 line-2-black" style="width:200px; margin:0 auto;"></div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row sm-row">	
		<div class="col-12">
			<div class="search col-12">
				<form role="form" name="frmSearch" id="frmSearch">
				<input type="hidden" name="init" value="${init}" />
				<input type="hidden" name="section" value="${param.section}" />
				<input type="hidden" name="startPage" id="startPage" value="" />
				<input type="hidden" name="visiblePages" id="visiblePages" value="" />
				<div class="input-group search-row">
					<input class="form-control" name="searchText" id="searchText" type="text" value="${param.searchText}" placeholder="검색내용을 입력하세요.">
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
	<div class="row sm-row">	
		<div class="col-12">	
			<div class="col-12 my-2"></div>
			<table class="table table-striped">
			  <tbody>
				<c:forEach items="${result}" var="list" >
				<tr class="align-middle">
				  <td width="" class="py-4 font-20"><!-- <img src="/img/dot-img.png" style="margin-top:-5px;" class="mx-3"> -->
				    <a href="/support/interviewv.do?idx=${list.idx}&startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}">${ list.title }</a>
				  </td>
				</tr>
				</c:forEach >
			  </tbody>
			  <tfoot>
				  <tr>
				    <td></td>
				  </tr>  
				</tfoot>
			</table>
			<div class="paging text-center">
			  <ul class="pagination pagination-lg" id="pagination"></ul>
			</div>
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
    
	$("#searchBtn").click(function(){
	    $("#frmSearch").submit();
	});
	     
	var totalPages = ${totalPage};	// 전체 페이지
	var visiblePages = 10;			// 리스트 보여줄 페이지
	var startPage = ${startPage};	// 현재 페이지
	 
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