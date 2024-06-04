<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-항공사실무면접정보</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>

<%@ include file = "../include/nav.jsp" %>

<%@ include file = "../include/subbanner.jsp" %>

<div class="container-fluid">
	<div class="row sub-row site-map-row mt-5 mb-4">
		<div class="col-12">
		  <div class="col-12 mb-1">
		    <h1>항공사최신뉴스</h1>
		  </div>
		  <div class="col-12 py-2 line-2-black" style="width:200px; margin:0 auto;"></div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row sub-row">	
		<div class="col-12">
			<div class="search col-12 mt-2">
				<form role="form" name="frmSearch" id="frmSearch" action="/support/recruit">
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
		<table class="table table-striped">
			<tbody>
			  <c:forEach items="${result}" var="list" >
				<tr class="align-middle">
				  <td width="" class="py-4 font-18"><img src="/img/dot-img.png" style="margin-top:-5px;" class="mx-3">
				    <a href="/support/variousv.do?idx=${list.idx}&startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}">${ list.title }</a>
				  </td>
				  <td width="15%" class="font-18 align-middle"><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd"/></td>
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