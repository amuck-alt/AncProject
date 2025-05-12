<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!-- <div class="container-fluid" id="notice">
	<div class="col-12 text-center">
 		<img src="img/main-sign-txt_04.png" CLASS="mobile-100-percent">
	</div>
</div> -->

<%@ include file = "index_notice.jsp" %>

<div class="container-fluid mobile-hidden" style="height:100px"></div>

<div class="container-fluid py-3" id="containter-body">
	<div class="row main-row">
		<div class="col-12 main-quick-menu">
			<div class="col-4 mobile-100-percent quick-class">
				<div class="col-12 off-hide overlay-container quick-class">
					<a href="/detail/open.do">
					<div style="position:absolute; top:3rem; left:3rem;">
						<p class="py-3 font-20 font-bold">이달의 개강일정 안내</p>
						<div class="py-1 line-2-black" style="width:100px;"></div>
						<img src="/img/main-scheduler-more-btn.png" class="py-4 mobile-hidden">
					</div>
					<img src="/img/main-quick-class-01.png" id="mobile-100-percent">
					<div class="overlay mobile-hidden">
						<div class="overlay-text font-white font-20">이달의 <br>개강일정 안내</div>
					</div>
					</a>
				</div>
			</div>
			<div class="col-8 mobile-100-percent">
				<div class="col-12 quick-ke-day">
					<div class="col-7 off-hide overlay-container quick-ke-day">
						<a href="/detail/detail06.do">
						<img src="/img/main-quick-ke-day.png" class="">
						<div class="overlay mobile-hidden">
							<div class="overlay-text font-white font-20">대한항공 DAY</div>
						
						</div>
						</a>
					</div>
					<div class="col-5 bg-white quick-ke-day">
						<a href="/detail/detail06.do">
						<div class="py-5 px-3">
							<p class="py-3 font-20 font-bold">대한항공 DAY</p>
							<div class="py-1 line-2-black" style="width:100px;"></div>
							<p class="py-3 font-14 font-gray mobile-hidden" >크루팩토리만의 특별한 합격 전략</p>
							<img src="/img/main-scheduler-more-btn.png" class="py-3 mobile-hidden">
						</div>
						</a>
					</div>
				</div>
				<div class="col-12 quick-oz-day">
					<div class="col-5 bg-oz text-right quick-oz-day">
						<a href="/detail/detail07.do">
						<div class="py-5 px-3">
							<p class="py-3 font-20 font-bold">아시아나항공 DAY</p>
							<div class="py-1 line-2-black float-right" style="width:100px;"></div>
							<p class="py-4 font-14 font-gray  mobile-hidden" >크루팩토리만의 특별한 합격 전략</p>
							<img src="/img/main-scheduler-more-btn.png" class="py-3 float-right mobile-hidden">
						</div>
						</a>
					</div>
					<div class="col-7 off-hide overlay-container quick-oz-day">
						<a href="/detail/detail07.do">
						<img src="/img/main-quick-oz-day.png">
						<div class="overlay mobile-hidden">
							<div class="overlay-text font-white font-20">아시아나항공 DAY</div>
						
						</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



<div class="container-fluid">
	<div class="row main-row">
		<div class="col-12 my-3">
			<div class="col-6 font-18"><strong>이달의 스케쥴</strong></div>
			<div class="col-6 py-1 px-1"></div>
		</div>
		<div class="col-12">
			<div class="swiper-container sw-scheduler">
				<div class="swiper-wrapper">
					
	
					
					<div class="swiper-slide">
						<div class="col-12 border rad-div-10 px-3 py-3">
							<div class="col-4"><img src="/img/m/img-schedule-001.png"></div>
							<div class="col-8">
								<p class="py-1 font-12">10월 21일</p>
								<p class="py-1 font-16"><strong>대한항공 취업준비반</strong></p>
								<p class="py-1 font-12 font-gray">2022년 승무원 면접대비</p>
							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<div class="col-12 border rad-div-10 px-3 py-3">
							<div class="col-4"><img src="/img/m/img-schedule-009.png"></div>
							<div class="col-8">
								<p class="py-1 font-12">11월 7일</p>
								<p class="py-1 font-16"><strong>외국항공사 취업준비반</strong></p>
								<p class="py-1 font-12 font-gray">2022년 승무원 면접대비</p>
							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<div class="col-12 border rad-div-10 px-3 py-3">
							<div class="col-4"><img src="/img/m/img-schedule-007.png"></div>
							<div class="col-8">
								<p class="py-1 font-12">11월 12일</p>
								<p class="py-1 font-16"><strong>CRS,DCS자격증</strong></p>
								<p class="py-1 font-12 font-gray">공항예약,발권 자격증</p>
							
							</div>
						</div>
					</div>
				
					
				</div>
				<div class="sw-scheduler-pagination text-center"></div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid" style="height:30px;"></div>

<script>
if( $(window).width() > 768 ){
	var schedulerSwiper = new Swiper('.sw-scheduler', {
		slidesPerView: 3,	
		autoplay: {
	        delay: 2000,
	        disableOnInteraction: false,
	      },
		loop: true,
		pagination: {
	        el: '.sw-scheduler-pagination',
	      },
	});
}else{
	var schedulerSwiper = new Swiper('.sw-scheduler', {
		slidesPerView: 1,	
		autoplay: {
	        delay: 2000,
	        disableOnInteraction: false,
	      },
		loop: true,
		pagination: {
	        el: '.sw-scheduler-pagination',
	      },
	});
}	
</script>

