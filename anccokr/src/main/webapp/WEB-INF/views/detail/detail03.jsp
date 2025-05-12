<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%= site_title %> - 항공과 최고 합격률 기록</title>
<meta name="description" content="<%= site_descript %>" />
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file="../include/header.jsp"%>

</head>
<body>
	<%@ include file="../include/nav.jsp"%>
	<%@ include file="../include/floating-left.jsp"%>

	<div style="text-align: center;">
	<img src="/img/detail_0416_mo01.jpg" alt="단기반" id="mobile-100-percent" class="mobile-show">
	<img src="/img/detail_0416_mo02.jpg" alt="단기반" id="mobile-100-percent" class="mobile-show">
	<img src="/img/detail_0416_mo03.jpg" alt="단기반" id="mobile-100-percent" class="mobile-show">
	<img src="/img/detail_0416_mo04.jpg" alt="단기반" id="mobile-100-percent" class="mobile-show">
		
		
		
		
		
		</div>
	
	 	<!-- 웹 -->
		<div style="text-align: center; ">
		<img src="/img/detail_0416_01.jpg" alt="단기반" id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
		<img src="/img/detail_0416_02.jpg" alt="단기반" id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
		<img src="/img/detail_0416_03.jpg" alt="단기반" id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
		<img src="/img/detail_0416_04.jpg" alt="단기반" id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
		
	
	
		
		</div>

	
	
	
	
	
	<!-- 사이즈 1920로 스크롤생김 -->
	
		<!-- 사이즈 1920로 스크롤생김
	<div class="container-fluid mobile-hidden">
		<div class="row text-center">
			<img src="/img/d3_01.jpg" alt="아시아나항공 5주 완성반" id="mobile-100-percent" style="width:50%;">
			<img src="/img/d3_02.jpg" alt="아시아나항공 5주 완성반" id="mobile-100-percent" style="width:50%;">
		</div>
	</div>

	<div class="row main-row">
		<div class="col-12 text-center">
		<img src="/img/d3_01-mobile.jpg" alt="아시아나항공 5주 완성반" id="mobile-100-percent" class="mobile-show">
		<img src="/img/d3_02-mobile.jpg" alt="아시아나항공 5주 완성반" id="mobile-100-percent" class="mobile-show">
		<img src="/img/d3_03.jpg" alt="아시아나항공 5주 완성반" id="mobile-100-percent">
		<img src="/img/d3_03-1.jpg" alt="아시아나항공 5주 완성반" id="mobile-100-percent">
		<img src="/img/d3_04.jpg" alt="아시아나항공 5주 완성반" id="mobile-100-percent">
		<img src="/img/d3_05.jpg" alt="아시아나항공 5주 완성반" id="mobile-100-percent">
		<img src="/img/d3_08.jpg" alt="아시아나항공 5주 완성반" id="mobile-100-percent" >
		<img src="/img/d3_06.jpg" alt="아시아나항공 5주 완성반" id="mobile-100-percent">
		<a href="../crewpeople/review.do?section=ko"><img src="/img/d3_07.jpg" alt="아시아나항공 5주 완성반" id="mobile-100-percent"></a>
		</div>
	</div>-->





		<!-- 하단링크 -->
		<%@ include file="../include/footlink.jsp"%>

		<!-- 상담신청 -->
		<%@ include file="../include/counsel.jsp"%>

		<footer>
			<%@ include file="../include/footer.jsp"%>
		</footer>



		<script>
	
	$(document).ready(function( $ ) {
		$('.counter').counterUp({
			delay: 10,
			time: 3000
		});
	});

	var wow = new WOW( {
		animateClass: 'animated',
		offset:       100
	});
	
	wow.init();
</script>
		<script src="../dist/js/jquery.counterup.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
		<script src="../dist/js/bootstrap.min.js"></script>
		<script src="../dist/js/swiper.min.js"></script>
</body>
</html>