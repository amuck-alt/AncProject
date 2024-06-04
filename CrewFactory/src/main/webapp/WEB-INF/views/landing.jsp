<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="include/site.jsp"%>
<title><%=site_title%></title>
<meta name="description" content="<%=site_descript%>" />
<meta property="og:title" content="<%=site_title%>">
<meta property="og:description" content="<%=site_descript%>">
<%@ include file="include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="/vendor/loader/loaders.min.css"/>
</head>

<body>

<div class="loading" style="display:none; width:100%; height:100%; position:fixed; left:0px; top:0px; background:rgba(0, 0, 0, 0.7); z-index:10000;">
	<div class="loader" style="position:absolute; top:50%; left:50%; margin-top:-20px; margin-left:-40px;">
		<div class="loader-inner ball-pulse">
		    <div></div>
		    <div></div>
		    <div></div>
		</div>
	</div>
</div>

<%@ include file = "include/nav.jsp" %>

<div class="container-fluid">
	<div class="row">
		<div class="col-12 off-hide text-center ld-main-visual">
			<div class="col-3 mobile-hidden"></div>
			<div class="col-6 mobile-100-percent text-center wow fadeInUp" data-wow-delay="0.5s" style="margin-top:100px;">
				<img src="/img/landing/main-visual-01-txt.png" class="mobile-hidden">
				<img src="/img/landing/main-visual-01-txt-m.png"  class="mobile-show mobile-100-percent" style="width:100%; max-width:400px;" >
			</div>
			<div class="col-3 mobile-hidden"></div>
		</div>
	</div>
</div>

<div class="container-fluid" style="background:url('/img/landing/why-bg-img.jpg') no-repeat center;">
	<div class="row landing  wow fadeInUp">
		<div class="col-12 mt-3  text-center">
			<img src="/img/landing/landing-ing-01.png" class="mobile-hidden mt-5">
			<img src="/img/landing/landing-ing-mo-01.png" class="mobile-show mt-5 mobile-100-percent" style="width:100%; ">
		</div>
	</div>
</div>

<!--될때까지 학습해주니까! -->
<div class="container-fluid wow bounceInUp mobile-hidden">
	<div class="row landing py-5">
		<div class="col-12 py-5 text-center">
			<img src="/img/landing/landing-ing-02.gif" class="mobile-100-percent">
		</div>
	</div>
</div>
<div class="container-fluid wow bounceInUp mobile-show">
	<div class="row landing py-5">
		<div class="col-12 py-5 text-center">
			<img src="/img/landing/landing-ing-mo-02.gif" class="mobile-100-percent">
		</div>
	</div>
</div>


<!-- 결국 중요한것은 전문성  -->

<div class="container-fluid mobile-hidden" style="background:url('/img/landing/bg-review.jpg') no-repeat center; height:1100px;">
	<div class="row landing py-5">
		<div class="col-12 text-center mt-5">
			<img src="/img/landing/landing-ing-03.png" >
		</div>
		<div class="swiper-container my-5 sw-main-review">
			<div class="swiper-wrapper">
				<div class="swiper-slide"><img src="/img/main-review-1.png" class="rad-div-20"></div>
				<div class="swiper-slide"><img src="/img/main-review-2.png" class="rad-div-20"></div>
				<div class="swiper-slide"><img src="/img/main-review-3.png" class="rad-div-20"></div>
				<div class="swiper-slide"><img src="/img/main-review-4.png" class="rad-div-20"></div>
				<div class="swiper-slide"><img src="/img/main-review-5.png" class="rad-div-20"></div>
				<div class="swiper-slide"><img src="/img/main-review-6.png" class="rad-div-20"></div>
			</div>
		</div>
		<div class="col-12 text-center sw-main-review-pagination"></div>
	</div>
</div>

<div class="container-fluid mobile-show" style="background:url('/img/landing/bg-review.jpg') no-repeat center; height:650px;">
	<div class="row">
		<div class="col-12 mt-5 text-center">
			<img src="/img/landing/landing-ing-mo-03.png" class="mobile-100-percent" >
		</div>
		<div class="swiper-container my-5 sw-main-review-m">
			<div class="swiper-wrapper">
				<div class="swiper-slide"><img src="/img/main-review-1.png" class="rad-div-10 mobile-100-percent"></div>
				<div class="swiper-slide"><img src="/img/main-review-2.png" class="rad-div-10 mobile-100-percent"></div>
				<div class="swiper-slide"><img src="/img/main-review-3.png" class="rad-div-10 mobile-100-percent"></div>
				<div class="swiper-slide"><img src="/img/main-review-4.png" class="rad-div-10 mobile-100-percent"></div>
				<div class="swiper-slide"><img src="/img/main-review-5.png" class="rad-div-10 mobile-100-percent"></div>
				<div class="swiper-slide"><img src="/img/main-review-6.png" class="rad-div-10 mobile-100-percent"></div>
			</div>
		</div>
		<div class="col-12 text-center sw-main-review-pagination-m"></div>
	</div>
</div>

<script>

var $btnTop = $('.btn-top');
var mainReviewSwiper = new Swiper('.sw-main-review', {
	effect: 'coverflow',
	grabCursor: true,
	loop: true,
	centeredSlides: true,
	slidesPerView: 2.3,
	coverflowEffect: {
		rotate: 50,
		stretch: 0,
		depth: 300,
		modifier: 1,
		slideShadows: true,
	},
	pagination: {
		el: '.sw-main-review-pagination', clickable: true,
	},
	/* autoplay : {
		delay : 3000,
		disableOnInteraction : true,
	}, */
});

var mainReviewMobileSwiper = new Swiper('.sw-main-review-m', {
	effect: 'coverflow',
	grabCursor: true,
	loop: true,
	centeredSlides: true,
	slidesPerView: 1.2,
	coverflowEffect: {
		rotate: 50,
		stretch: 0,
		depth: 300,
		modifier: 1,
		slideShadows: true,
	},
	pagination: {
		el: '.sw-main-review-pagination-m', clickable: true,
	},
	/* autoplay : {
		delay : 3000,
		disableOnInteraction : true,
	}, */
});

</script>

<!-- 배너 -->
<div class="container-fluid py-2" style="background:#0e1525;">
	<div class="row" >
		<div class="col-12 text-center my-5 px-3 mobile-hidden"><a href="http://www.crewgo3.com/index.do"><img src="/img/landing/landing-ing-04.jpg" class="mobile-100-percent"></a></div>
		<div class="col-12 text-center px-2 mobile-show"><a href="http://www.crewgo3.com/index.do"><img src="/img/landing/landing-ing-mo-04.jpg" class="mobile-100-percent"></a></div>
	</div>
</div>

<div class="container-fluid ld-counting" style="background:url('/img/landing/main-history-bg.jpg') no-repeat top;">
	<div class="row landing py-5">
		<div class="col-12 my-5">
			<div class="col-6 mobile-hidden">
				<img src="/img/landing/05-txt-001.png" class="mobile-100-percent ">
			</div>
			<div class="col-12 mobile-show">
				<img src="/img/landing/05-txt-001.png" class="mobile-100-percent ">
			</div>
		
			<div class="col-6 mobile-100-percent">
				<div class="my-5 col-12">
					<ul class="col-12 my-5">
						<li class="col-6 float-left  ">
							<div>
								<span class="font-700 font-blue mb-3 counter1 font-bigrem">8</span><span class="mx-4 font-700 font-200rem font-white">명원칙</span>
							</div>
							<div class="col-6 my-4" style="height:5px; background:#03d8ff;"></div>
							<div class="col-8  font-18"><img src="/img/landing/05-txt-1.png" class="mobile-60-percent mobile-hidden"></div>
							<div class="col-8  font-18"><img src="/img/landing/05-txt-1----2.png" class="mobile-60-percent mobile-show"></div>
						</li>
						<li class="col-6 float-left">
							<div>
								<span class="font-700 font-blue mb-3 counter1 font-bigrem">10</span><span class="mx-4 font-700 font-200rem font-white">년이상</span>
							</div>
							<div class="col-7 my-4" style="height:5px; background:#03d8ff;"></div>
							<div class="col-10 font-white font-18 font-lh-20rem"><img src="/img/landing/05-txt-2.png" class="mobile-60-percent"></div>
						</li>
					</ul>
					<ul class="col-12 my-5 pt-5">
						<li class="col-6 float-left  ">
							<div>
								<span class="font-700 font-blue mb-3   counter1 font-bigrem">1</span><span class="mx-4 font-700 font-200rem font-white">회</span>
							</div>
							<div class="col-6 my-4" style="height:5px; background:#03d8ff;"></div>
							<div class="col-8 font-white font-18"><img src="/img/landing/05-txt-3.png" class="mobile-hidden"></div>
							<div class="col-8 font-white font-18"><img src="/img/landing/05-txt-3-----2.png" class="mobile-show"></div>
						</li>
						<li class="col-6 float-left">
							<div>
								<span class="font-700 font-blue mb-3 counter1 font-bigrem">3</span><span class="mx-4 font-700 font-200rem font-white">밀착</span>
							</div>
							<div class="col-7 my-4" style="height:5px; background:#03d8ff;"></div>
							<div class="col-10 font-white font-18 font-lh-20rem"><img src="/img/landing/05-txt-4.png"></div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 국내항공사 -->
<div class="container-fluid">
	<div class="row ">
		<div class="col-12 text-center ">
			<div class="mobile-hidden pt-5 my-3"><img src="/img/landing/landing-ing-06.jpg"></div>
			<div class="mobile-show"><img src="/img/landing/landing-ing-mo-06.jpg" class="mobile-100-percent"></div>
		</div>
		<div class="col-12 mt-5">
			<div class="col-12 wow slideInLeft">
				<div class="col-7 float-left off-hide mobile-100-percent"><img src="/img/landing/curri-ko-001.png" class="hvr-grow mobile-100-percent"></div>
				<div class="col-5 float-right mt-5 off-hide mobile-hidden">
					<div class="col-12 my-5 mx-5">
						<p class="mx-5 font-500 font-200rem">서류전형 대비</p>
						<div class="mx-5 my-5 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 my-5">
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">자기소개서와 이력서 가이드라인</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">스펙과 경력, 경험에 맞는 작성요령</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">일대일 첨삭</li>
					</ul>
					</div>
				</div>
				<div class="col-12 off-hide mobile-show">
					<div class="col-12 my-5">
						<p class="mx-5 font-500 font-200rem">서류전형 대비</p>
						<div class="mx-5 my-4 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 font-300">
						<li class="font-18 my-1 ml-3" style="list-style-type:disc;">자기소개서와 이력서 가이드라인</li>
						<li class="font-18 my-1 ml-3" style="list-style-type:disc;">스펙과 경력, 경험에 맞는 작성요령</li>
						<li class="font-18 my-1 ml-3" style="list-style-type:disc;">일대일 첨삭</li>
					</ul>
					</div>
				</div>
			</div>
			<div class="col-12 wow slideInLeft">
				<div class="col-7 float-right off-hide mobile-100-percent"><img src="/img/landing/curri-ko-002.png" class="hvr-grow mobile-100-percent"></div>
				<div class="col-5 float-left mobile-100-percent mt-5 off-hide mobile-hidden">
					<div class="my-5 mx-5 float-right">
						<p class="mx-5 font-500" style="font-size:2rem;">이미지 메이킹</p>
						<div class="mx-5 my-4 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 my-5">
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">피부생상에 맞는 퍼스널컬러 진단</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">나에게 어울리는 헤어 &amp; 메이크업</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">인사, 자세, 워킹, 표정 등 이미지 표현</li>
					</ul>
					</div>
				</div>
					<div class="col-12 off-hide mobile-show">
						<div class="col-12 my-5">
							<p class="mx-5 font-500 font-200rem">이미지메이킹</p>
							<div class="mx-5 my-4 bg-navy" style="width:100px; height:5px;"></div>
							<ul class="mx-5 font-300">
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">피부생상에 맞는 퍼스널컬러 진단</li>
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">나에게 어울리는 헤어 &amp; 메이크업</li>
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">인사, 자세, 워킹, 표정 등 이미지 표현</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-12 wow slideInLeft">
				<div class="col-7 float-left off-hide mobile-100-percent"><img src="/img/landing/curri-ko-003.png" class="hvr-grow mobile-100-percent"></div>
				<div class="col-5 float-right mt-5 off-hide mobile-hidden">
					<div class="col-12 my-5 mx-5">
						<p class="mx-5 font-500" style="font-size:2rem;">항공사별 최근 트렌드 파악</p>
						<div class="mx-5 my-5 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 my-5">
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">기업마다 다른 정보 파악</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">아시아나항공 디귿자워킹과 암리치 연습</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">대한항공 임원,최종면접을 대비한 유니폼 환복</li>
					</ul>
					</div>
				</div>
				<div class="col-12 off-hide mobile-show">
					<div class="col-12 my-5">
							<p class="mx-5 font-500 font-200rem">항공사별 최근 트렌드 파악</p>
							<div class="mx-5 my-4 bg-navy" style="width:100px; height:5px;"></div>
							<ul class="mx-5 font-300">
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">기업마다 다른 정보 파악</li>
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">아시아나항공 디귿자워킹과 암리치 연습</li>
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">대한항공 임원,최종면접을 대비한 유니폼 환복</li>
						</ul>
					</div>
				</div>
			</div>	
			<div class="col-12 wow slideInLeft">
				<div class="col-7 float-right off-hide mobile-100-percent"><img src="/img/landing/curri-ko-004.png" class="hvr-grow mobile-100-percent"></div>
				<div class="col-5 float-left mt-5 off-hide mobile-hidden">
					<div class="my-5 mx-5 float-right">
						<p class="mx-5 font-500" style="font-size:2rem;">남들과 차별화된 나의 답변</p>
						<div class="mx-5 my-5 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 my-5">
							<li class="font-18 my-2 ml-3" style="list-style-type:disc;">내가 돋보일 수 있는 스토리텔링</li>
							<li class="font-18 my-2 ml-3" style="list-style-type:disc;">내 스펙과 환경에 맞는 한국어답변</li>
							<li class="font-18 my-2 ml-3" style="list-style-type:disc;">영어답변 및 영어기내방송문 낭독</li>
						</ul>
					</div>
				</div>
				<div class="col-12 off-hide mobile-show">
					<div class="col-12 my-5">
							<p class="mx-5 font-500 font-200rem">남들과 차별화된 나의 답변</p>
							<div class="mx-5 my-4 bg-navy" style="width:100px; height:5px;"></div>
							<ul class="mx-5 font-300">
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">내가 돋보일 수 있는 스토리텔링</li>
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">내 스펙과 환경에 맞는 한국어답변</li>
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">영어답변 및 영어기내방송문 낭독</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-12 wow slideInLeft">
				<div class="col-7 float-left off-hide mobile-100-percent"><img src="/img/landing/curri-ko-005.png" class="hvr-grow mobile-100-percent"></div>
				<div class="col-5 float-right mt-5 off-hide mobile-hidden">
					<div class="col-12 my-5 mx-5">
						<p class="mx-5 font-500" style="font-size:2rem;">일대일 맞춤 피드백</p>
						<div class="mx-5 my-5 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 my-5">
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">비디오촬영을 통한 면접관의 시선 분석</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">학력,경력,성별에 따른 개인별 피드백</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">남자 스튜어드 특강으로 차별화된 대비</li>
					</ul>
					</div>
				</div>
				<div class="col-12 off-hide mobile-show">
					<div class="col-12 my-5">
							<p class="mx-5 font-500 font-200rem">일대일 맞춤 피드백</p>
							<div class="mx-5 my-4 bg-navy" style="width:100px; height:5px;"></div>
							<ul class="mx-5 font-300">
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">비디오촬영을 통한 면접관의 시선 분석</li>
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">학력,경력,성별에 따른 개인별 피드백</li>
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">남자 스튜어드 특강으로 차별화된 대비</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<!--외국항공사  -->
<div class="container-fluid" style="background:#f1f1f1;">
	<div class="row">
		<div class="col-12 text-center my-5">
			<div class="mobile-hidden"><img src="/img/landing/landing-ing-07.jpg"></div>
			<div class="mobile-show"><img src="/img/landing/landing-ing-mo-07.jpg" class="mobile-100-percent"></div>
		</div>
		<div class="col-12 mb-5 bg-white">
			<div class="col-12 wow slideInLeft">
				<div class="col-7 float-left mobile-100-percent off-hide"><img src="/img/landing/curri-os-001.png" class="hvr-grow mobile-100-percent"></div>
				<div class="col-5 float-right mobile-hidden mt-5 off-hide">
					<div class="col-12 my-5 mx-5">
						<p class="mx-5 font-500" style="font-size:2rem;">Cover letter &amp; Resume</p>
						<div class="mx-5 my-5 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 my-5">
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">스펙과 경력, 경험에 맞는 작성요령</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">일대일 첨삭</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">CV drop 통과를 위한 실전 연습</li>
					</ul>
					</div>
				</div>
				<div class="col-12 off-hide mobile-show">
					<div class="col-12 my-5">
							<p class="mx-5 font-500 font-200rem">Cover letter &amp; Resume</p>
							<div class="mx-5 my-4 bg-navy" style="width:100px; height:5px;"></div>
							<ul class="mx-5 font-300">
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">스펙과 경력, 경험에 맞는 작성요령</li>
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">일대일 첨삭</li>
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">CV drop 통과를 위한 실전 연습</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-12 wow slideInLeft">
				<div class="col-7 float-right off-hide mobile-100-percent"><img src="/img/landing/curri-os-002.png" class="hvr-grow mobile-100-percent"></div>
				<div class="col-5 float-left mt-5 off-hide mobile-hidden">
					<div class="my-5 mx-5 float-right">
						<p class="mx-5 font-500" style="font-size:2rem;">Image Making</p>
						<div class="mx-5 my-5 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 my-5">
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">피부생상에 맞는 퍼스널컬러 진단</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">나에게 어울리는 헤어 &amp; 메이크업</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">인사, 자세, 워킹, 표정 등 이미지 표현</li>
					</ul>
					</div>
				</div>
				<div class="col-12 off-hide mobile-show">
					<div class="col-12 my-5">
							<p class="mx-5 font-500 font-200rem">Image Making</p>
							<div class="mx-5 my-4 bg-navy" style="width:100px; height:5px;"></div>
							<ul class="mx-5 font-300">
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">피부생상에 맞는 퍼스널컬러 진단</li>
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">나에게 어울리는 헤어 &amp; 메이크업</li>
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">인사, 자세, 워킹, 표정 등 이미지 표현</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-12 wow slideInLeft">
				<div class="col-7 float-left off-hide mobile-100-percent"><img src="/img/landing/curri-os-003.png" class="hvr-grow mobile-100-percent"></div>
				<div class="col-5 float-right mt-5 off-hide mobile-hidden">
					<div class="col-12 my-5 mx-5">
						<p class="mx-5 font-500" style="font-size:2rem;">1:1 English Interview</p>
						<div class="mx-5 my-5 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 my-5">
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">국가별 특이점과 기업별 인재상 파악</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">영문 필기시험 및 에쎄이</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">키워드 별 워드슈팅</li>
					</ul>
					</div>
				</div>
				<div class="col-12 off-hide mobile-show">
					<div class="col-12 my-5">
							<p class="mx-5 font-500 font-200rem">1:1 English Interview</p>
							<div class="mx-5 my-4 bg-navy" style="width:100px; height:5px;"></div>
							<ul class="mx-5 font-300">
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">국가별 특이점과 기업별 인재상 파악</li>
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">영문 필기시험 및 에쎄이</li>
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">키워드 별 워드슈팅</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-12 wow slideInLeft">
				<div class="col-7 float-right off-hide mobile-100-percent"><img src="/img/landing/curri-os-004.png" class="hvr-grow mobile-100-percent"></div>
				<div class="col-5 float-left mt-5 off-hide mobile-hidden">
					<div class="my-5 mx-5 float-right">
						<p class="mx-5 font-500" style="font-size:2rem;">Group Activities</p>
						<div class="mx-5 my-5 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 my-5">
							<li class="font-18 my-2 ml-3" style="list-style-type:disc;">그룹 디스커션, 디베이트</li>
							<li class="font-18 my-2 ml-3" style="list-style-type:disc;">타당성 있는 결론 도출 및 팀웍 훈련</li>
							<li class="font-18 my-2 ml-3" style="list-style-type:disc;">최근 기출문제 및 차별화된 어필 요령</li>
						</ul>
					</div>
				</div>
				<div class="col-12 off-hide mobile-show">
					<div class="col-12 my-5">
							<p class="mx-5 font-500 font-200rem">Group Activities</p>
							<div class="mx-5 my-4 bg-navy" style="width:100px; height:5px;"></div>
							<ul class="mx-5 font-300">
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">그룹 디스커션, 디베이트</li>
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">타당성 있는 결론 도출 및 팀웍 훈련</li>
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">최근 기출문제 및 차별화된 어필 요령</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-12 wow slideInLeft">
				<div class="col-7 float-left off-hide mobile-100-percent"><img src="/img/landing/curri-os-005.png" class="hvr-grow mobile-100-percent"></div>
				<div class="col-5 float-right mt-5 off-hide mobile-hidden">
					<div class="col-12 my-5 mx-5">
						<p class="mx-5 font-500" style="font-size:2rem;">Video Interview</p>
						<div class="mx-5 my-5 bg-navy" style="width:100px; height:5px;"></div>
						<ul class="mx-5 my-5">
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">최근 모든 항공사에 추가된 화상면접 지원방법</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">비디오촬영을 통한 면접관의 시선 분석</li>
						<li class="font-18 my-2 ml-3" style="list-style-type:disc;">목소리톤, 아이컨텍 등 언텍트 이미지메이킹</li>
					</ul>
					</div>
				</div>
				<div class="col-12 off-hide mobile-show">
					<div class="col-12 my-5">
							<p class="mx-5 font-500 font-200rem">Video Interview</p>
							<div class="mx-5 my-4 bg-navy" style="width:100px; height:5px;"></div>
							<ul class="mx-5 font-300">
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">최근 모든 항공사에 추가된 화상면접 지원방법</li>
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">비디오촬영을 통한 면접관의 시선 분석</li>
							<li class="font-18 my-1 ml-3" style="list-style-type:disc;">목소리톤, 아이컨텍 등 언텍트 이미지메이킹</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid wow fadeInUp">
	<div class="row">
		<div class="col-12 text-center"><img src="/img/landing/img-upsubmit.png" width="100%" style="max-width:1920px;">
		</div>
	</div>
</div>
<div class="container-fluid wow fadeInUp">
	<div class="row landing pt-5">
		<div class="col-12 text-center mt-5 mobile-hidden">
			<p class="font-100 my-5 font-350rem font-ls-2">크루팩토리 <span class="font-700">대표강사진</span></p>
			<p class="font-400 font-gray font-20">실력있는 교육관을 영입해 <span class="font-black font-600">경쟁력</span>에서 충분히 앞서갈 수 있도록 해드립니다.</p>
		</div>
		<div class="col-12 text-center mt-5 mobile-show">
			<p class="font-100 my-5 font-350rem font-ls-2">크루팩토리 <span class="font-700">대표강사진</span></p>
			<p class="font-400 font-gray font-20">실력있는 교육관을 영입해 <span class="font-black font-600">경쟁력</span>에서 <br>충분히 앞서갈 수 있도록 해드립니다.</p>
		</div>
	</div>
</div>

<div class="container-fluid wow fadeInUp mobile-show" style="background:url('/img/landing/main-curri-ko-bg.jpg') no-repeat top; background-size:100% 38%; margin-top:50px;">
	<div class="row landing">
		<div class="col-12 swiper-container sw-pro-thumb-m" style="margin-top:15px;">
			<div class="swiper-wrapper">
				<c:forEach items="${professor}" var="pro" varStatus="status">
					<div class="swiper-slide">
						<div class="col-7 rad-div-10 off-hide mobile-100-percent" style="position:relative; background:url('/img/pro-sign-bg.jpg') no-repeat left bottom; height:220px;">
							<img src="${pro.thumbnail}" style="position:absolute; z-index:500; width:170px; bottom:0px; right:0px;">
							<div class="my-5 mx-5" style="position:relative; z-index:600;">
								<p class="font-white font-40 font-700 font-lh-30rem" style="word-break:keep-all;">${pro.subject}</p>
								<p class="mt-4 font-200rem font-white"><span class="font-500 font-blue">${pro.proname}</span><span class="ml-2 font-16">${pro.ranks }</span>
								<a href="/introduce/pro.do"><img src="/img/landing/btn-more.png" width="45px;" class="ml-4" style="margin-top:-3px;"></a></p>
								<div class="col-12 mt-4 font-white font-18" style="font-weight:500; word-break:keep-all;">${pro.sentence}</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="col-12 swiper-container sw-pro-list-m">
			<ul class="swiper-wrapper">
			<c:forEach items="${professor}" var="pro" varStatus="status">
				<li class="swiper-slide my-3 px-1">
					<div class="col-12 rad-div-10 border off-hide text-right" style="background:#fff; height:100px;" >
						<img src="${pro.thumbnail}" width="100px" style="margin-right:-20px;">
						<div class="col-8 text-left" style="position:absolute; top:30px; left:10px;">
							<p class="font-20 font-bold" style="color:#00285a;"><strong>${pro.proname}</strong></p>
							<p><span class="font-14">${pro.ranks}</span></p>
						</div>
					</div>
				</li>
			</c:forEach>
			</ul>			
		</div>
		<div class="col-12 text-center my-5"><a href="/introduce/pro.do"><img src="/img/more-btn-txt.png"></a></div>
	</div>
</div>

<script>
	var proListMobileSwiper = new Swiper('.sw-pro-list-m', {
		slidesPerView : 2.5,
		slidesBetween : 10,
	});
	var proThumbMobileSwiper = new Swiper('.sw-pro-thumb-m', {
		slidesPerView : 1,
		thumbs: {
	        swiper: proListMobileSwiper
	      }
	});
</script>

<div class="container-fluid wow fadeInUp mobile-hidden" style="background:url('/img/landing/main-curri-ko-bg.jpg') no-repeat top; margin-top:70px;">
	<div class="row landing">
		<div class="col-12 swiper-container sw-pro-thumb">
			<div class="swiper-wrapper">
				<c:forEach items="${professor}" var="pro">
				<div class="swiper-slide">
					<div class="col-7" style="background:url('/img/landing/bg-tablet.png') no-repeat left; height:436px; margin-top:64px">
						<img src="${pro.thumbnail}" width="320px" class="float-right" style="margin-top:36px; margin-right:123px;">
						<div class="ml-5 col-8 text-left" style="position:absolute; top:50px; left:30px;">
							<p class="mt-4 font-white" style="word-break:keep-all; font-size:2.5rem; line-height:3.5rem; font-weight:700;">${pro.subject}</p>
							<p class="mt-4 font-20 font-white"><span class="font-500 font-blue">${pro.proname}</span><span class="ml-2 font-16">${pro.ranks }</span>
								<a href="/introduce/pro.do"><img src="/img/landing/btn-more.png" class="ml-3"></a></p>
							<p class="mt-4 font-white font-18" style="font-weight:500; word-break:keep-all;">${pro.sentence}</p>
							<ul class="col-12 mt-5">
								<li class="float-left"><img src="/img/ico-watch-img.png" width="18px"></li>
								<li class="float-left ml-3"><span class="font-white font-14" style="font-weight:300; word-break:keep-all;">${pro.schedule }</span></li>
							</ul>
							<ul class="col-12 mt-2">
								<li class="float-left"><img src="/img/ico-schedule-img.png" width="18px"></li>
								<li class="float-left ml-3"><span class="font-white font-14" style="font-weight:300; word-break:keep-all;">${pro.classnm }</span></li>
							</ul>
						</div>
					</div>
					<div class="col-5 mt-2" style="height:410px;">
						<div class="col-12"><div class="ck-content">${pro.history }</div></div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
		<div class="col-12 swiper-container sw-pro-list">
			<ul class="mt-5 swiper-wrapper">
			<c:forEach items="${professor}" var="pro" varStatus="status">
				<li class="swiper-slide my-3">
					<div class="col-12 rad-div-10 border off-hide text-right pro-li-ar" style="width:250px; height:170px;" >
						<img src="${pro.thumbnail}" width="150px" style="margin-right:-30px;">
						<div class="col-8 text-left" style="position:absolute; top:50px; left:30px;">
							<p class="font-20 font-bold" style="color:#00285a;"><strong>${pro.proname}</strong><span class="ml-2 font-14">${pro.ranks}</span></p>
							<p class="font-14 mt-3" style="word-break:keep-all;">${pro.subject}</p>
						</div>
					</div>
				</li>
			</c:forEach>
			</ul>			
		</div>
		<div class="col-12 text-center my-5"><a href="/introduce/pro.do"><img src="/img/more-btn-txt.png"></a></div>
	</div>
</div>

<script>
	var proListSwiper = new Swiper('.sw-pro-list', {
		slidesPerView : 5,
	});
	var proThumbSwiper = new Swiper('.sw-pro-thumb', {
		slidesPerView : 1,
		thumbs: {
	        swiper: proListSwiper
	      }
	});
</script>

<div class="container-fluid my-5" style="background:url('/img/landing/main-map-bg.jpg') no-repeat top;">
	<div class="row sm-row py-5">
		<div class="col-12 text-center my-5">
			<p class="font-100 my-5 font-350rem font-ls-2">크루팩토리 <span class="font-700">위치찾기</span></p>
		</div>
		<!--<div class="col-12 my-5">
			<div class="col-12 border rad-div-10 off-hide">
				<div class="swiper-container sw-facil">
					<div class="mobile-hidden" style="position: absolute; z-index: 1999; top:0px; left:340px;" id="sw-facil-silde-prev"><img src="/img/landing/img-facil-txt.png"></div>
					<div class="mobile-hidden" style="position: absolute; z-index: 1999; top:200px; left:0px;" id="sw-facil-silde-prev"><img src="/img/landing/ico-arrow-left.png"></div>
					<div class="mobile-hidden" style="position: absolute; z-index: 1998; top:200px; right:0px;" id="sw-facil-silde-next"><img src="/img/landing/ico-arrow-right.png"></div>
					<div class="swiper-wrapper">
						<div class="swiper-slide"><img src="/img/facil/1.png"></div>
						<div class="swiper-slide"><img src="/img/facil/3.png"></div>
						<!-- <div class="swiper-slide"><img src="/img/facil/2.png"></div>
					</div>
				</div>
			</div>
		</div> -->
		<div class="col-12 mb-3">
			<div class="col-12 border rad-div-10 off-hide">
				<img src="/img/landing/img-map.png" width="100%">
			</div>
		</div>
		<div class="col-12 mb-4">
			<div class="col-12">
				<ul class="col-12 bg-white" style="border-top:3px solid #000; border-bottom:3px solid #000;">
					<li class="float-left px-3 mt-4 mobile-hidden"><img src="/img/landing/ico-pin.png" width="25px"></li>
					<li class="float-left mt-4 mb-2"><p class="font-500 font-20">크루팩토리승무원학원 강남캠퍼스</p>
						<div class="font-16 font-gray py-3" style="border-bottom:1px solid #d0d0d0;">서울시 강남구 논현동 18-7 성일빌딩 1F, 2F</div>
						<div class="font-14 font-gray my-3"><span class="font-black font-500 mr-1">신사역</span>3번출구 (3번출구 이용 도보 3분), <span class="font-black font-500 mr-1">논현역</span>7번출구 (7번출구 이용 도보 3분)</div>
						<div class="font-14 font-gray my-3">
							<span class="font-black font-500 mr-2">간선</span>(140, 144, 145, 241, 400, 402, 420, 421, 440, 441, 470, 542, 741)
							<span class="font-black font-500 mx-2">직행</span>(1100, 3030, 3100, 6900, 9700, G746)
							<span class="font-black font-500 mx-2">급행</span>(8001)<br>
							<span class="font-black font-500 mr-2">광역</span>(9404, 9711A, M7412)
							<span class="font-black font-500 mx-2">공항</span>(6009)</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>

<script>
    var facilSwiper = new Swiper('.sw-facil', {
      slidesPerView: 1,
      loop: true,
      autoplay : {
			delay : 5000,
			disableOnInteraction : true,
		},
		navigation : {
			nextEl : '#sw-facil-silde-next',
			prevEl : '#sw-facil-silde-prev',
		},
    });
    
   function startSilde(facilSwiper) {
		swiper.autoplay.start();
	}

	function stopSilde(facilSwiper) {
		swiper.autoplay.stop();
	}
</script>

<!-- 후기 -->
<div class="container-fluid" style="background:url('/img/landing/class-banner-bg-img.jpg') no-repeat top;">
	<div class="row landing">
		<div class="col-12 text-center my-5">
			<p class="font-100 my-5 font-300rem font-lh-40rem font-white font-ls-2">크루팩토리를 선택하는 이유는 <br>"<span class="font-700">합격</span>" 이라는 결과 때문입니다.</p>
		</div>
	</div>
	<div class="row landing py-3">
		<div class="col-12 swiper-container sw-review-btn-li">
			<ul class="swiper-wrapper">
				<li class="swiper-slide"><a href="/crewpeople/review.do"><button class="review-button bg-sky font-white">전체</button></a></li>
				<li class="swiper-slide"><a href="/crewpeople/review.do?section=ko&gubun=ke"><button class="review-button btn-navy font-white">대한항공</button></a></li>
				<li class="swiper-slide"><a href="/crewpeople/review.do?section=ko&gubun=oz"><button class="review-button btn-navy font-white">아시아나항공</button></a></li>
				<li class="swiper-slide"><a href="/crewpeople/review.do?section=ko&gubun=lcc"><button class="review-button btn-navy font-white">국내항공사</button></a></li>
				<li class="swiper-slide"><a href="/crewpeople/review.do?section=os&gubun=ea"><button class="review-button btn-navy font-white">중동항공사</button></a></li>
				<li class="swiper-slide"><a href="/crewpeople/review.do?section=os&gubun=eu"><button class="review-button btn-navy font-white">유럽항공사</button></a></li>
				<li class="swiper-slide"><a href="/crewpeople/review.do?section=os&gubun=as"><button class="review-button btn-navy font-white">아시아항공사</button></a></li>
			</ul>
		</div>
	</div>

<script>

function swipeAirlines(){	
	if ($(window).width() > 768) {
		var reviewBtn = new Swiper('.sw-review-btn-li', {
			slidesPerView : 7,
			spaceBetween: 30,
		});
	}else{
		var reviewBtn = new Swiper('.sw-review-btn-li', {
			slidesPerView : 2.5,
		});
	}
}

$(document).ready(function() {
	swipeAirlines();
});

$(window).resize(function() {
	swipeAirlines();	
});

</script>
	<div class="row landing">
		<div class="my-5 swiper-container sw-interview">
			<div class="swiper-wrapper">
				<c:forEach items="${reviewBest}" var="review">
				<div class="swiper-slide px-2">
					<div class="" style="position:absolute; left:38%; z-index:9999;"><img src="${review.thumbnail}" width="100px" height="100px" class="circle-img"></div>
					<div class="col-12 border rad-div-10 ld-review bg-white" style="position:relative;margin-top:45px;">
						<div class="col-12 px-2 mt-3">
							<div class="col-12 my-3">
								<p class="font-12">${review.classnm}</p>
							</div>
							<div class="col-12 my-3 font-lh-20rem">
								<p class="font-150rem font-500 mobile-hidden">${fn:substring(review.title, 0, 35)}</p>
								<p class="font-175rem font-500 mobile-show">${fn:substring(review.title, 0, 35)}</p>
							</div>
							<div class="col-12 bg-l-gray my-2 px-3 py-3 font-14" style="line-height:1.5rem;">
								${review.age}<span class="mx-2"></span>
								${review.spec}<span class="mx-2"></span>
								${review.gradlv}<span class="mx-2"></span>
								${review.langlv}<span class="mx-2"></span>
								${review.reference}
							</div>
							<%-- <div class="col-12 py-2">
								<p class="font-150rem">${review.comment}</p>
							</div> --%>
							<div class="col-12 my-2">
								<p class="font-16 font-gray">${fn:substring(review.description, 0, 100)}...</p>
							</div>
							<div class="col-12 mobile-hidden">
								<p class="font-14">→</p>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>			
		</div>
		<div class="col-12 mb-5 text-center sw-interview-pagination"></div>
	</div>
</div>

<script>
if ($(window).width() > 768) {
var reviewSwiper = new Swiper('.sw-interview', {
	slidesPerView : 3,
	autoplay : {
		delay : 3000,
		disableOnInteraction : true,
	},
	pagination : {
		el : '.sw-interview-pagination',	clickable : true,
	},	
});
}else{
	var reviewSwiper = new Swiper('.sw-interview', {
		slidesPerView : 1,
		autoplay : {
			delay : 3000,
			disableOnInteraction : true,
		},
		pagination : {
			el : '.sw-interview-pagination',	clickable : true,
		},	
	});	
}
</script>


<div class="container-fluid bg-light-gray">
	<div class="row main-row py-5">
		<div class="col-12 text-center my-5">
			<p class="font-300rem font-ls-2 py-4">상담신청</p>
			<p class="font-150rem py-3 font-gray">크루팩토리가 유명해진 이유는 합격이라는 결과 때문입니다.</p>
		</div>
		<div class="col-12 my-3 border bg-white rad-div-10 px-4 py-5">
			<div class="col-3 px-3 py-2 mobile-100-percent">
				<input type="text" placeholder="이름" name="usrname" class="form-control" maxlength="5"></div>
			<div class="col-1 px-3 py-2 mobile-100-percent">
				<input type="text" placeholder="나이" name="usrage" class="form-control" maxlength="2" oninput="numberMaxLength(this);"></div>
			<div class="col-5 px-3 py-2 mobile-100-percent">
				<div class="input-group">
				<select class="form-control mr-2" name="phonese" style="width:23%;height:3.75rem;"><option value="010" selected>010</option></select>
				<input type="number" placeholder="1234" name="phonenumfi" class="form-control mr-2" style="width:33.33333%;" maxlength="4" oninput="numberMaxLength(this);">
				<input type="number" placeholder="1234" name="phonenumla" class="form-control" style="width:33.33333%;" maxlength="4" oninput="numberMaxLength(this);"></div>
			</div>
			<div class="col-3 px-3 py-2 mobile-100-percent"><button type="button" class="btn btn-primary btn-lg btn-block" onclick="checkValidate()" style="height:3.6rem;">상담신청</button></div>
		</div>
		<div class="col-12 px-4 py-1">
			<div class="form-group">
				<div class="custom-control custom-checkbox">
					<input type="checkbox" name="agreement" value="1" id="agreement" class="custom-control-input" checked>
					<label for="agreement" class="mx-1 custom-control-label">개인정보 이용방침에 동의합니다.<span class="mx-2"><a href="" data-toggle="modal" data-target="#personalInfo"><b>자세히보기</b></a></span></label>
				</div>
        	</div>
		</div>
	</div>
</div>

<script>

function numberMaxLength(e){
	if(e.value.length > e.maxLength){
		e.value = e.value.slice(0, e.maxLength);
	}
}

function checkValidate(){
	var mobile = $("select[name=phonese]").val() + $("input[name=phonenumfi]").val() + $("input[name=phonenumla]").val();
	if($("input[name=usrname]").val() == ""){
		alert("이름을 정확히 입력하세요.");
		return false;
	}
	if($("input[name=usrage]").val() == ""){
		alert("나이를 정확히 입력하세요.");
		return false;
	}
	if($("input[name=phonenumfi]").val() == "" || $("input[name=phonenumla]").val() == ""){
		alert("전화번호를 정확히 입력하세요.");
		return false;
	}
	if($("input:checkbox[name=agreement]").is(":checked") == false){
		alert("개인정보이용방침에 동의하셔야 합니다.");
		return false;
	}
	
	var obj = {
			"gubun" : "상담(랜딩)",
			"stat" : "신규",
			"name" : $("input[name=usrname]").val(),
			"phone" : mobile,
			"age" : $("input[name=usrage]").val(),
			"hopse" : "",
			"domain" : "<%=request.getServerName()%>",
			"regip" : "<%=request.getRemoteAddr()%>",
	}
		
	$.ajax({
	    url: "/quick/counsel.do",
	    type: "post",
	    data: JSON.stringify(obj),
	    contentType: "application/json",
	    success: function(data) {
	        alert("상담신청이 완료되었습니다.");
	        window.location.reload();
	    },
	    error: function(errorThrown) {
	        alert(errorThrown.statusText);
	    }
	});
	
}
</script>


<%@ include file = "include/footer.jsp" %>


<div class="container-fluid" style="position:fixed; z-index:2039; bottom:0px;">
	<div class="row">
		<div class="col-12 pb-1 pr-1" id="link" style="display:none;">
			<div class="border rad-div-10 bg-white px-3 py-3" style="float:right; width:130px; height:130px;">
				<ul class="my-3">
					<li class="my-1 ml-4" style="list-style-type: disc;"><a href="http://www.crewschool.co.kr">항공운항과입시</a></li>
					<li class="my-1 ml-4" style="list-style-type: disc;"><a href="http://www.crew-gs.com">항공사지상직</a></li>
					<li class="my-1 ml-4" style="list-style-type: disc;"><a href="http://www.crew-gs.com">여행사취업</a></li>
					<li class="my-1 ml-4" style="list-style-type: disc;"><a href="http://www.crewfa.com">인천캠퍼스</a></li>
				</ul>
			</div>
		</div>
		<div class="col-12 py-2 mobile-show" style="width:100%; background:#00b7ee;" >
			<div class="col-5 pl-2 pr-1"><a href="https://www.crew-factory.com"><button class="btn btn-primary" style="width:100%; height:35px; background:#00b7ee;">
				<img src="/img/landing/ico-home.png" height="14px" class="mr-3" style="margin-top:-2px;">홈으로
			</button></a></div>
			<div class="col-5 pl-1 pr-1"><a href="" data-toggle="modal" data-target="#counselingModal"><button class="btn btn-primary" style="width:100%; height:35px; background:#fc229c;">
				<img src="/img/landing/ico-counsel.png" height="14px" class="mr-3" style="margin-top:0px;">빠른상담신청
			</button></a></div>
			<div class="col-2 pl-1 pr-2 text-center"><button class="btn bg-navy float-right text-center" id="linked-site" style="width:100%; height:35px;">
				<img src="/img/landing/ico-list.png" height="20px" class="" style="margin:0 auto;">
			</button></div>
		</div>
	</div>
</div>

<!-- Modal -->
<form role="form" name="quick_counsel" data-toggle="validator">
<input type="hidden" name="domain" value="<%= request.getServerName() %>">
<input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
	<div class="modal fade" id="counselingModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header bg-ivory">
					<p class="modal-title font-24 font-bold">
						<img src="/img/logo.png">
					</p>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="col-12 px-3">
						<p class="my-3">입력하신 전화번호는 상담목적이외의 어떠한 용도로도 사용되지 않습니다.</p>
						<div class="col-12 py-2">
							<div class="col-2 py-3">이름</div>
							<div class="col-10">
								<div class="input-group">
									<input type="text" class="form-control" name="quick_name" id="quick_name" placeholder="이름" maxlength="10" data-error="이름을 정확히 입력하세요" required>
									<span class="py-3 input-group-append mx-4">나이</span> <input type="text" class="form-control input-group-append mr-2" name="quick_age" id="quick_age" data-error="나이를 정확히 입력하세요"  maxlength="2" placeholder="나이" required>
									<div class="help-block with-errors text-danger"></div>
								</div>
							</div>
						</div>
						<div class="col-12 py-2">
							<div class="col-2 py-3">전화번호</div>
							<div class="col-10">
								<div class="input-group">
									<select class="form-control mr-2" id="quick_mobile-1" style="height: 3.75rem;">
										<option value="010">010</option>
									</select> <input type="text" class="form-control input-group-append mr-2" id="quick_mobile-2" required maxlength="4" placeholder="앞번호" data-error="연락처를 정확히 입력하세요" > <input type="text" class="form-control input-group-append" id="quick_mobile-3" required maxlength="4" placeholder="뒷번호" data-error="연락처를 정확히 입력하세요">
								</div>
								<div class="help-block with-errors text-danger"></div>
							</div>
						</div>
						<div class="col-12 py-2">
							<div class="col-2 py-3">관심분야</div>
							<div class="col-10">
								<div class="input-group">
									<select class="form-control mr-2" id="hopse" name="hopse" style="height: 3.75rem;">
										<option value="대한항공/아시아나항공">대한항공/아시아나항공</option>
										<option value="국내항공사">국내항공사</option>
										<option value="외국항공사">외국항공사</option>
										<option value="남자승무원(스튜어드)">남자승무원(스튜어드)</option>
										<option value="항공사지상직승무원">항공사지상직승무원</option>
										<option value="항공운항과대학입시">항공운항과대학입시</option>
									</select>
								</div>
							</div>
						</div>
						<div class="col-12 py-2">
							<div class="col-2 py-3"></div>
							<div class="col-10">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" name="quick_agree" value="yes" id="quick_agree" class="custom-control-input" checked> <label for="agree" class="custom-control-label">개인정보 이용방침에 동의합니다. <span class="mx-2"><a href="" data-toggle="modal" data-target="#personalInfo"><b>자세히보기</b></a></span></label>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-lg btn-block btn-primary font-white font-bold" id="btnCounsel">상담신청</button>
				</div>
			</div>
		</div>
	</div>
</form>

<div class="modal fade bd-example-modal-lg" id="personalInfo" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header bg-ivory">
				<p class="modal-title font-24 font-bold">
					<img src="/img/logo.png">
				</p>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="col-12 px-3" style="overflow: auto; width: 100%; height: 500px;">
					<p class="my-3">㈜ 백아 크루팩토리승무원학원(이하 ‘학원’이라 함) 개인정보처리방침은 다음과 같은 내용을 담고 있습니다.</p>
					<br> 1. 개인정보의 처리 목적<br>
					<p class="mx-2">
						- 학원은 다음의 목적을 위하여 개인정보를 처리하고 있으며, 다음의 목적 이외의 용도로는 이용하지 않습니다.<br> - 고객 가입의사 확인, 고객에 대한 서비스 제공에 따른 본인 식별.인증, 회원자격 유지,관리 물품 또는 서비스 공급에 따른 금액 결제, 물품 또는 서비스의 공급.배송 등
					</p>
					<br> 2. 개인정보의 처리 및 보유 기간<br>
					<p class="mx-2">
						- 학원은 정보주체로부터 개인정보를 수집할 때 동의 받은 개인정보 보유/이용기간 또는 법령에 따른 개인정보<br> - 보유/이용기간 내에서 개인정보를 처리.보유하며 구체적인 개인정보 처리 및 보유 기간은 다음과 같습니다.<br> 아래 예시를 참고하여 개인정보 처리업무와 개인정보 처리업무에 대한 보유기간 및 관련 법령, 근거 등을 기재합니다.<br> (예시)<br> - 고객 가입 및 관리 : 서비스 이용계약 또는 회원가입 해지시까지, 다만 채권.채무관계 잔존시 해당 채권.채무관계 정산까지<br>
						- 전자상거래에서의 계약.청약철회, 대금결제, 재화 등 공급기록 : 5년<br>
					</p>
					<br> 3. 개인정보 주체자의 권리와 의무<br>
					<p class="mx-2">
						정보주체와 법정대리인의 권리·의무 및 그 행사방법 이용자는 개인정보주체로써 다음과 같은 권리를 행사할 수 있습니다.<br> 정보주체는 학원에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.<br> - 개인정보 열람요구<br> - 오류 등이 있을 경우 정정 요구<br> - 삭제요구<br> - 처리정지 요구<br>
					</p>
					<br> 4. 처리하는 개인정보의 항목 작성<br>
					<p class="mx-2">
						학원은 정보주체의 온라인상담 관련(상담신청, 이미지체크, 시간표조회, 1:1이력서무료상담, 지원가능한 항공사조회, 위탁교육문의)을 위해 개인정보를 아래와 같이 수집하고 있습니다.<br> - 성명, 전화번호, 나이, 성별, 키, 몸무게, 최종학력, 외국어능력<br>
					</p>
					<br> 5. 개인정보의 파기절차 및 기한<br>
					<p class="mx-2">
						개인정보의 파기('학원')은 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체 없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.<br> - 파기절차<br> 이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.<br> - 파기기한<br> 이용자의
						개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.<br>
					</p>
					<br> 6. 개인정보 자동 수집 장치의 설치.운영 및 거부에 관한 사항<br>
					<p class="mx-2">
						학원은 개별적인 맞춤서비스를 제공하기 위해 이용정보를 저장하고 수시로 불러오는 ‘쿠기(cookie)’를 사용합니다. 쿠키는 웹사이트를 운영하는데 이용되는 서버(http)가 이용자의 컴퓨터 브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다.<br> 가. 쿠키의 사용 목적 : 이용자가 방문한 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 인기 검색어, 보안접속 여부, 등을 파악하여 이용자에게 최적화된 정보 제공을 위해 사용됩니다. <br> 나. 쿠키의
						설치.운영 및 거부 : 웹브라우저 상단의 도구>인터넷 옵션>개인정보 메뉴의 옵션 설정을 통해 쿠키 저장을 거부 할 수 있습니다<br> 다. 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.<br>
					</p>
					<br> 7. 개인정보 보호책임자 작성<br>
					<p class="mx-2">
						학원은 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.<br> 개인정보 보호책임자<br> ·성명 :백철<br> ·직책 :CEO<br> ·직급 :대표이사<br> ·연락처 :0220387273, sasoo107@hanmail.net, 025471467<br> <br> 개인정보 보호 담당부서<br> ·부서명 :온라인사업부<br>
						·담당자 :백철<br> ·연락처 :0220387273, sasoo107@hanmail.net, 025471467<br> 정보주체께서는 학원의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. 학원은 정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다.<br>
					</p>
					<br> 8. 개인정보 처리방침 변경<br>
					<p class="mx-2">
						이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.<br>
					</p>
					<br> 9. 개인정보의 안전성 확보 조치 ('크루팩토리')은(는) 개인정보보호법 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.<br>
					<p class="mx-2">
						1. 개인정보 취급 직원의 최소화 및 교육<br> 개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다.<br> 2. 개인정보에 대한 접근 제한<br> 개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여,변경,말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.<br> 3. 비인가자에 대한 출입 통제<br> 개인정보를
						보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.<br>
					</p>
					<br>
					<p class="mx-2">
						원칙적으로 ㈜백아 이용자의 개인정보를 타인 또는 타기업, 기관에 공개하지 않습니다.<br> 다만 아래의 경우에는 예외로 합니다.<br> ㈜백아를 통해 교육 도중 작성된 저작물에 대한 저작권 및 초상권 또는 컨텐츠(사진,동영상)는 합리적인 차원에서 ㈜백아에 귀속하여 활용할 수 있다.<br> 본인은 본인의 개인정보(이름, 생년월일, 전화번호, 이메일 등)를 크루팩토리에 제공하여 취업관련 서비스의 마케팅 활동(전화 통화 방식, 이메일 발송 방식, SMS방식 포함) 목적으로 제공, 활용되도록 함에 동의
						합니다.<br>
					</p>
				</div>
			</div>
		</div>
	</div>
</div>



<script>

$(document).on('click', '#btnCounsel', function(){
	var mobile = $("#quick_mobile-1").val() + $("#quick_mobile-2").val() + $("#quick_mobile-3").val();
	$("#quick_phone").val(mobile);
	
	if($("#quick_mobile-2").val() == '' || $("#quick_mobile-3").val() == '' || $('#quick_name').val() == '' || $('#quick_age').val() == ''){
		alert("성함과 연락처, 나이는 필수 입력항목입니다.");
		return false;
	}
	
	var obj = {
			"gubun" : "상담(랜딩)",
			"stat" : "신규",
			"name" : $('#quick_name').val(),
			"phone" : mobile,
			"age" : $('#quick_age').val(),
			"hopse" : $('#hopse').val(),
			"domain" : "<%= request.getServerName() %>",
			"regip" : "<%=request.getRemoteAddr()%>",
	}
	
	$.ajax({
	    url: "/quick/counsel.do",
	    type: "post",
	    data: JSON.stringify(obj),
	    contentType: "application/json",
	    success: function(data) {
	        alert("상담신청이 완료되었습니다.");
	        window.location.reload();
	    },
	    error: function(errorThrown) {
	        alert(errorThrown.statusText);
	    }
	});
	
});

</script>

<script>
	$('#linked-site').click(function(){
		if($("#link").is(":visible")){
			$("#link").hide(200);
		}else{
			$("#link").show(200);			
		}
	});
</script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=94scwakr1d"></script>

<script>

$('.counter1').counterUp({
	delay: 10,
	time: 500,
});

$('.counter2').counterUp({
	delay: 10,
	time: 1000,
});


</script>

</body>
</html>