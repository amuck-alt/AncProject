<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title>${result.title}-<%=site_title%></title>
<meta name="description" content="${result.description}"/>
<meta property="og:title" content="${result.title}-<%=site_title%>">
<meta property="og:description" content="${result.description}">
<%@ include file = "../include/header.jsp" %>
</head>
<body>
<%@ include file = "../include/nav.jsp" %>
<%@ include file = "../include/floating-left.jsp" %>

<div class="container-fluid">
	<div class="row sm-row">	
		<div class="col-12 mt-4">
			<div class="col-fix-6 text-left">
				<a href="/crewpeople/review.do?section=${param.section}&gubun=${param.gubun}&startPage=${param.startPage}&visiblePages=${param.visiblePages}&searchText=${param.searchText}"><label class="re-label">목록으로</label></a>
			</div>
<!-- 			<div class="col-fix-6 text-right">
				<label class="re-label">이전</label><span class="px-1"></span><label class="re-label">다음</label>
			</div> -->
		</div>
	</div>
</div>

<div class="container-fluid" id="containter-body">
	<div class="row sm-row">	
		<div class="col-12 my-3 line-2-black"></div>
		<div class="col-12">			
			<div class="col-12 px-2 font-24 font-bold">${ result.title }</div>
			<div class="col-12 px-2 pt-2 font-14 font-gray" class="mobile-100-percent"><fmt:formatDate value="${result.regdate}" pattern="yyyy-MM-dd"/></div>
		</div>
		<div class="col-12 line-1-gray my-3"></div>
		<div class="col-12" id="bbs-content">
			${result.content}
		</div>
	</div>				
</div>

<!-- div class="container-fluid py-6">
  <div class="row sub-row">
    <ul class="blog-row">
      <li class="blog-row-first" id="bbs-content">
        <div class="row">
          ${result.content}
        </div>
      </li>
      <li class="blog-row-last">
        <div class="col-12">
          <div class="taglink">
			<div class="my-2 font-20 font-bold">인기태그</div>
			<div class="line-1-gray my-2"></div> 
			<label class="lb-tag">대한항공</label>
			<label class="lb-tag">항공운항과</label>
			<label class="lb-tag">자소서</label>
			<label class="lb-tag">중동항공사채용</label>
		  </div>
		  <div class="col-12 my-3"></div>
			<div class="popular">
				<p class="font-20 font-bold">인기글</p>
				<div class="line-1-gray my-2"></div>
				<div class="col-12">
					<div class="my-2"></div>
					<div class="font-12">대한항공, 아시아나항공 지원자집중! 합격하는 노하우 알려드립니다.</div>
					<div class="my-1 font-12 font-gray">2019-09-10</div>
					<div class="my-2 off-hide border-rds" style="height:120px"><a href="" class="hvr-grow"><img src="../img/cp-thum-img-02.jpg"></a></div>
					<div class="my-4"></div>
				</div>
				<div class="col-12">
					<div class="my-2"></div>
					<div class="font-12">대한항공, 아시아나항공 지원자집중! 합격하는 노하우 알려드립니다.</div>
					<div class="my-1 font-12 font-gray">2019-09-10</div>
					<div class="my-2 off-hide border-rds" style="height:120px"><a href="" class="hvr-grow"><img src="../img/cp-thum-img-02.jpg"></a></div>
					<div class="my-2"></div>
				</div>
			</div>	
        </div>
      </li>
    </ul>  
  </div>
</div-->


<!-- 하단링크 -->
<%@ include file = "../include/footlink.jsp" %>

<!-- 상담신청 -->
<%@ include file = "../include/counsel.jsp" %>

<footer>
  <%@ include file = "../include/footer.jsp" %>
</footer>


</body>
</html>