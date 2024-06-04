<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-국내항공사정보</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>

	<%@ include file="../include/nav.jsp"%>
	<%@ include file="../include/floating-left.jsp"%>



<div class="container-fluid swip-banner-container">
	<div class="row cf-row">
		<div class="col-md-12">
		</div>
	</div>
</div>



<div class="container-fluid">
	<div class="row sub-row">	
		<div class="col-12">
			<hr>
			  <label class="font-18 mx-4 mobile-100-percent text-center" >FSC</label>
			  <a href="/support/alko.do?section=ko&search=ke">
			     <img src="/docs/code/0a247468-5f7d-48f5-99e9-8904c75d401b.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'ke' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="대한항공" >
			  </a>
			  <a href="/support/alko.do?section=ko&search=os">
			    <img src="/docs/code/2f581d87-2a81-41a0-9944-d73ef905ae7c.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'os' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="아시아나항공" >
			  </a>
			  <hr>
			  <label class="font-18 mx-4 mobile-100-percent text-center" >LCC</label>
			  <a href="/support/alko.do?section=ko&search=je">
			   <img src="/docs/code/dcc5f664-9400-46a7-b2f0-2cb388082373.png"class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'je' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="제주항공" >
			  </a>
			  <a href="/support/alko.do?section=ko&search=ji">
			   <img src="/docs/code/1e69610f-93b3-4028-8993-d9f2e5e67982.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'ji' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose> "width="120px" alt="진에어" >
			  </a>
			  <a href="/support/alko.do?section=ko&search=tw">
			    <img src="/docs/code/25b44d13-f2f8-42c1-8098-db585fc23975.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'tw' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="티웨이항공" >
			  </a>
			  <a href="/support/alko.do?section=ko&search=ea">
			    <img src="/docs/code/3fbe2b0b-445a-4fce-b5ad-ee4baee0339d.png"  class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'ea' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="이스타항공">
			  </a>
			  <a href="/support/alko.do?section=ko&search=ap">
			    <img src="/docs/code/24945731-bf53-4b80-b586-165aaaa89d78.png"  class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'ap' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="에어부산">
			  </a>
			  <a href="/support/alko.do?section=ko&search=as">
			    <img src="/docs/code/e652e1c9-bd3b-4622-bf72-eeb5cc4fe434.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'as' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="에어서울">
			  </a>
			  <hr>
			  <label class="font-18 mx-4 mobile-100-percent text-center" >HSC</label>
			  <a href="/support/alko.do?section=ko&search=pre">
			    <img src="/docs/code/c53cbf26-c71a-4ea2-bed2-07f9c66fd1ed.png"  class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'pre' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="에어프레미아">
			  </a>
			<hr>
		</div>
		<div class="col-12">
			<c:choose>
			  <c:when test="${ param.search eq 'ke' }"><img src="/img/korea_title3.png" alt="대한항공 항공사정보" id="mobile-100-percent"></c:when>
			  <c:when test="${ param.search eq 'os' }"><img src="/img/asiana_title3.png" alt="아시아나항공 항공사정보" id="mobile-100-percent"></c:when>
			  <c:when test="${ param.search eq 'je' }"><img src="/img/jeju_title_02.png" alt="제주항공 항공사정보" id="mobile-100-percent"></c:when>
			  <c:when test="${ param.search eq 'ji' }"><img src="/img/jin_title_02.png" alt="진에어 항공사정보" id="mobile-100-percent"></c:when>
			  <c:when test="${ param.search eq 'ap' }"><img src="/img/busan_title2.png" alt="에어부산 항공사정보" id="mobile-100-percent"></c:when>
			  <c:when test="${ param.search eq 'ea' }"><img src="/img/eastar_title_2.png" alt="이스타항공 항공사정보" id="mobile-100-percent"></c:when>
			  <c:when test="${ param.search eq 'tw' }"><img src="/img/tway_title_02.png" alt="티웨이항공 항공사정보" id="mobile-100-percent"></c:when>
			  <c:when test="${ param.search eq 'as' }"><img src="/img/airseoul_title2.png" alt="에어서울 항공사정보" id="mobile-100-percent"></c:when>
			   <c:when test="${ param.search eq 'pre' }"><img src="/img/premia_title_2.png" alt="에어프레미아 항공사정보" id="mobile-100-percent"></c:when>
			</c:choose>
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

</body>
</html>