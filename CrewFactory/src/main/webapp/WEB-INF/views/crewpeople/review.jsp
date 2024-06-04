<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-합격생인터뷰</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>
<style>
	.review-li-cont:hover { background-color:#fafafa;}
</style>
</head>
<body>
<%@ include file = "../include/nav.jsp" %>
<%@ include file = "../include/floating-left.jsp" %>

<div class="container-fluid mt-5 mb-4 mobile-hidden">
	<div class="row sub2-row">
		<div class="col-12">
			<div class="col-12"><h2 class="">합격생인터뷰</h2></div>
			<div class="col-12 mobile-100-percent"><p class="font-18-m font-gray mt-3" style="line-height:1.7rem;">가장 최근에 지원한 19 ~ 22년도 합격생들을 대상으로 받은 면접, 합격후기위주로 구성하였습니다.<br> 항공사에서 합격자의 신분 노출을 엄격히 관리함으로 인해 간소화하여 공개하는점 양해부탁드립니다.</p></div>
		</div>
	</div>
</div>

<div class="container-fluid mt-5 mb-4 mobile-show">
	<div class="row sub2-row">
		<div class="col-12">
			<div class="col-12"><h2 class="">합격생인터뷰</h2></div>
			<div class="col-12 mobile-100-percent"><p class="font-16 font-gray mt-3" style="line-height:1.5rem;">가장 최근에 지원한 19 ~ 22년도 합격생들을 대상으로 받은 면접, 합격후기위주로 구성하였습니다.항공사에서 합격자의 신분 노출을 엄격히 관리함으로 인해 간소화하여 공개하는점 양해부탁드립니다.</p></div>
		</div>
	</div>
</div>

<form role="form" name="frmSearch" id="frmSearch">		
	<input type="hidden" name="section" value="${param.section}"/>
	<input type="hidden" name="gubun" value="${param.gubun}"/>
	<input type="hidden" name="alcd" value="${param.alcd}"/>
	<input type="hidden" name="init" value="${init}" />
	<input type="hidden" name="startPage" id="startPage" value="" />
	<input type="hidden" name="visiblePages" id="visiblePages" value="" />
</form>
<div class="container-fluid mt-5" id="containter-body">
	<div class="row sub2-row py-3" style="border-top:1px solid #e7eaed; border-bottom:1px solid #e7eaed;">
		<div class="col-12 swiper-container sw-review-btn-li">
			<ul class="swiper-wrapper">
				<li class="swiper-slide"><a href="/crewpeople/review.do"><button class="radius-button btn-navy <c:if test="${empty param.gubun}">btn-sky</c:if> font-white">전체</button></a></li>
				<li class="swiper-slide"><a href="/crewpeople/review.do?section=ko&gubun=ke"><button class="radius-button btn-navy <c:if test="${param.gubun eq 'ke'}">btn-sky</c:if> font-white">대한항공</button></a></li>
				<li class="swiper-slide"><a href="/crewpeople/review.do?section=ko&gubun=oz"><button class="radius-button btn-navy <c:if test="${param.gubun eq 'oz'}">btn-sky</c:if> font-white">아시아나항공</button></a></li>
				<li class="swiper-slide"><a href="/crewpeople/review.do?section=ko&gubun=lcc"><button class="radius-button btn-navy <c:if test="${param.gubun eq 'lcc'}">btn-sky</c:if> font-white">국내항공사</button></a></li>
				<li class="swiper-slide"><a href="/crewpeople/review.do?section=os&gubun=ea"><button class="radius-button btn-navy <c:if test="${param.gubun eq 'ea'}">btn-sky</c:if> font-white">중동항공사</button></a></li>
				<li class="swiper-slide"><a href="/crewpeople/review.do?section=os&gubun=eu"><button class="radius-button btn-navy <c:if test="${param.gubun eq 'eu'}">btn-sky</c:if> font-white">유럽항공사</button></a></li>
				<li class="swiper-slide"><a href="/crewpeople/review.do?section=os&gubun=as"><button class="radius-button btn-navy <c:if test="${param.gubun eq 'as'}">btn-sky</c:if> font-white">아시아항공사</button></a></li>
			</ul>
		</div>
	</div>
</div>
<script>
if ($(window).width() > 768) {
	var reviewBtn = new Swiper('.sw-review-btn-li', {
		slidesPerView : 7,
	});
}else{
	var reviewBtn = new Swiper('.sw-review-btn-li', {
		slidesPerView : 4.5,
	});
}

$(document).ready(function(){
	var param = "${param.gubun}";
	if(param == 'ke'){
		reviewBtn.slideTo(1, 0);
	}else if(param == 'oz'){
		reviewBtn.slideTo(2, 0);
	}else if(param == 'lcc'){
		reviewBtn.slideTo(3, 0);
	}else if(param == 'ea'){
		reviewBtn.slideTo(4, 0);
	}else if(param == 'eu'){
		reviewBtn.slideTo(5, 0);
	}else if(param == 'as'){
		reviewBtn.slideTo(6, 0);
	}else{
		reviewBtn.slideTo(0, 0);	
	}
	
});
</script>

<div class="container-fluid" id="containter-body">
	<div class="row sub2-row my-5">
<c:forEach items="${result}" var="review">		
		<div class="col-12 rv-ma-body">
			<div class="col-3 text-center review-arpt-ico mobile-hidden">
				<c:choose>
					<c:when test="${empty review.alcd}"><img src="/img/logo-default.png" class="review-arpt-ico-img"></c:when>
					<c:otherwise><img src="/docs/code/${review.alcd}" class="review-arpt-ico-img"></c:otherwise>
				</c:choose>				
				<div class="review-arpt-vtcal-line"></div>
			</div>
			<div class="col-9 review-body-cont mobile-100-percent">
				<a href="javascript:viewDetail('${review.idx}','${review.section}','${review.gubun}')">
				<div class="col-12 review-li-cont">
					<div class="col-2 my-2 text-center">
						<img src="${review.thumbnail}" width="100px" height="100px" class="border cricle-img">
						<p class="font-pink font-12 my-3 mobile-hidden">${review.classnm}</p>
					</div>
					<div class="col-10 my-2 pl-3">
						<div class="col-12 px-4 px-0-m">
							<p class="font-pink font-14 mb-2 mobile-show"><b>${review.classnm}</b></p>
							<div class="col-10 rv-title mobile-100-percent mobile-hidden">
								<p>${fn:substring(fn:replace(review.title,'<br>','&nbsp;'), 0, 35)}</p>
							</div>
							<div class="col-2 mb-2 text-right mobile-hidden"><p class="font-14 font-gray"><fmt:formatDate value="${review.regdate}" pattern="yyyy-MM-dd"/></p></div>
							<div class="col-12 rad-div-5 bg-light-gray my-2 px-3 py-2 mobile-hidden">
								<span class="font-12 font-gray mr-2">나이</span><span class="font-12 font-gray mr-2">${review.age}</span><span class="mx-3"></span>
								<span class="font-12 font-gray mr-2">스펙</span><span class="font-12 font-gray mr-2">${review.spec}</span><span class="mx-3"></span>
								<span class="font-12 font-gray mr-2">최종학력</span><span class="font-12 font-gray mr-2">${review.gradlv}</span><span class="mx-3"></span>
								<span class="font-12 font-gray mr-2">전공학과</span><span class="font-12 font-gray mr-2">${review.major}</span><span class="mx-3"></span>
								<span class="font-12 font-gray mr-2">어학점수</span><span class="font-12 font-gray mr-2">${review.langlv}</span><span class="mx-3"></span>
								<span class="font-12 font-gray mr-2">지원경험</span><span class="font-12 font-gray mr-2">${review.reference}</span><span class="mx-3"></span>
							</div>
<%-- 							<div class="col-12 rv-comment">
								<p>${review.comment}</p>
							</div> --%>
							<div class="col-12 rad-div-5 my-2 px-2 py-2 mobile-show" style="background:#eeeeee;">
								<span class="font-12 font-gray mr-2">나이</span><span class="font-12 font-gray mr-2">${review.age}</span><span class="mx-3"></span>
								<span class="font-12 font-gray mr-2">스펙</span><span class="font-12 font-gray mr-2">${review.spec}</span><span class="mx-3"></span>
							</div>
							<div class="col-10 rv-title-m mobile-show">
								<p>${fn:substring(fn:replace(review.title,'<br>','&nbsp;'), 0, 35)}</p>
							</div>
							<div class="col-12 my-2 rv-description">
								<p class="font-gray mobile-hidden">${fn:substring(review.description, 0, 100)}...</p>
								<p class="mobile-show" style="color:#a1a1a1;">${fn:substring(review.description, 0, 50)}...</p>
							</div>
							<div class="col-12 mobile-hidden">
								<p class="font-14">→</p>
							</div>
						</div>
					</div>
				</div>
				</a>
			</div>
		</div>
		<div class="col-12 mobile-show my-1"></div>
</c:forEach>
</div>
</div>
<script>
	function viewDetail(idx, section, gubun){
		var loginInfo = "${sessionScope.crewfactoryMemberInfo}";
		if(loginInfo == ''){
			alert("로그인이 필요한 메뉴입니다. 로그인페이지로 이동합니다.");
			location.href = "/member/login.do";
		}else{
			location.href = "/crewpeople/reviewv.do?idx="+idx+"&section="+section+"&gubun="+gubun+"";
		}
	}
</script>



<div class="container-fluid">
	<div class="row sub2-row">
		<div class="col-12 paging text-center my-5">
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

</script>

</body>
</html>