<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-명예의 전당</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>
<%@ include file = "../include/nav.jsp" %>
<%@ include file = "../include/floating-left.jsp" %>

<!-- <div class="container-fluid hoh-banner-container" id="containter-body" style="height:1000px;">
	<div class="row sub-row">
		<div class="col-12" style="margin-top:7rem;">			
			<img src="/img/hoh-banner-tit-img.png">
		</div>
		<div class="col-12" style="margin-top:7rem;">			
			<div class="col-5"><img src="/img/hoh-banner-allpass-tit-img.png"></div>
			<div class="col-7"><img src="/img/hoh-banner-allpass-line-img.png"></div>
		</div>
		<div class="col-12" style="margin-top:3rem;">			
			<ul>
				<li class="float-left font-white font-24 mr-4 font-italic">2020</li>
				<li class="float-left font-white font-24 mr-4 font-italic">2019</li>
				<li class="float-left font-white font-24 mr-4 font-italic">2018</li>
				<li class="float-left font-white font-24 mr-4 font-italic">2017</li>
				<li class="float-left font-white font-24 mr-4 font-italic">2016</li>
				<li class="float-left font-white font-24 mr-4 font-italic">...</li>
			</ul>
		</div>
		<div class="swiper-container" style="margin-top:5rem;" id="hoh-allpass-swiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide"><img src="/img/hoh-banner-img-2020-0001.png"></div>
				<div class="swiper-slide"><img src="/img/hoh-banner-img-2020-0002.png"></div>
				<div class="swiper-slide"><img src="/img/hoh-banner-img-2020-0001.png"></div>
				<div class="swiper-slide"><img src="/img/hoh-banner-img-2020-0001.png"></div>
			</div>
		</div>
	</div>
</div> -->
<div class="container-fluid bg-navy allpass-size" style="background:url('/img/hoh-banner-allpass-bg-img.jpg') no-repeat center;">
	<div class="row sub-row">
		<div class="col-12" style="margin-top:7rem;">			
			<div class="col-5 mobile-100-percent"><img src="/img/hoh-banner-allpass-tit-img.png" class="mobile-100-percent"></div>
			<div class="col-7 mobile-hidden"><img src="/img/hoh-banner-allpass-line-img.png" class="mobile-hidden"></div>
		</div>
		<div class="swiper-container" style="margin-top:3.5rem;" id="hoh-allpass-swiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide mx-2"><img src="/img/hoh-banner-img-2020-0001.png" class="mobile-100-percent"></div>
				<div class="swiper-slide mx-2"><img src="/img/hoh-banner-img-2020-0002.png" class="mobile-100-percent"></div>
				<div class="swiper-slide mx-2"><img src="/img/hoh-banner-img-2020-0003.png" class="mobile-100-percent"></div>
				<div class="swiper-slide mx-2"><img src="/img/hoh-banner-img-2020-0004.png" class="mobile-100-percent"></div>
				<div class="swiper-slide mx-2"><img src="/img/hoh-banner-img-2020-0005.png" class="mobile-100-percent"></div>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid bg-navy" style="background:url('/img/hoh-top-bg-img.jpg') no-repeat center;">
	<div class="row sub-row">
		<div class="col-12" style="margin-top:7rem;">
			<div class="col-5 mobile-100-percent"><img src="/img/hoh-banner-top5-tit-img.png" class="mobile-100-percent"></div>
			<div class="col-7 mobile-hidden"><img src="/img/hoh-banner-allpass-line-img.png" class="mobile-hidden"></div>
		</div>
		<div class="col-12" style="margin-top:3rem;">			
			<ul>
				<li class="float-left font-white font-24 mr-4 font-italic">2020</li>
				<li class="float-left font-white font-24 mr-4 font-italic">2019</li>
				<li class="float-left font-white font-24 mr-4 font-italic">2018</li>
				<li class="float-left font-white font-24 mr-4 font-italic">2017</li>
				
			</ul>
		</div>

		<div class="col-12" style="margin-top:1rem; margin-bottom:5rem;">
			<img src="/img/detal_hof_001.png" class="mobile-100-percent">
		</div>
	</div>
</div>




<script>

$(document).ready(function() {

if ($(window).width() > 768) {
	
	var hohAllpassSwiper = new Swiper('#hoh-allpass-swiper', {
		//loop : true,
		slidesPerView : 3,
		//spaceBetween : 100,
		//centeredSlides : true,
		speed : 800,
		//autoplay : { delay : 7000 },
	});
	
	var hohTop5Swiper = new Swiper('#hoh-top5-swiper', {
		loop : true,
		slidesPerView : 5,
		spaceBetween : 20,
		//centeredSlides : true,
		speed : 800,
		autoplay : {
			delay : 5000
		},
	});
	
}else{
	
	var hohAllpassSwiper = new Swiper('#hoh-allpass-swiper', {
		loop : true,
		slidesPerView : 1.5,
		spaceBetween : 20,
		centeredSlides : true,
		speed : 800,
		autoplay : {
			delay : 7000
		},
	});
	
	var hohTop5Swiper = new Swiper('#hoh-top5-swiper', {
		loop : true,
		slidesPerView : 2,
		spaceBetween : 20,
		centeredSlides : true,
		speed : 800,
		autoplay : {
			delay : 5000
		},
	});
	
}

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