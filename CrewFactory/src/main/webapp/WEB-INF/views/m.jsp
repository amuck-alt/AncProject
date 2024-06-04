<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">

<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/dist/css/bootstrap.css">
<link rel="stylesheet" href="/vendor/swiper/css/swiper.css">
<link rel="stylesheet" href="/vendor/swiper/css/swiper.min.css">
<link rel="stylesheet" href="/vendor/wow/animate.css">
<link rel="stylesheet" href="/css/cfw-style-m.css">

<script src="/dist/js/jquery.min.js"></script>
<script src="/dist/js/jquery-ui.min.js"></script>
<script src="/dist/js/bootstrap.min.js"></script>
<script src="/dist/js/jquery.twbsPagination.js" type="text/javascript"></script>
<script src="/vendor/swiper/js/swiper.js"></script>
<script src="/vendor/swiper/js/swiper.min.js"></script>
<script src="/vendor/wow/wow.min.js"></script>
<script>	new WOW().init(); </script>

</head>
<body>

<div class="container-fluid-m">
	<div class="row-m no-margin-x">
		<div class="col-12 py-2 px-2 bt-ln-gray">
			<div class="col-3"><button class="round px-4 py-2 font-white font-10" style="background:#171f32;">개강일정</button></div>
			<div class="col-9 py-1 px-1"><strong>외항사</strong> 주말 정규반 07월 25일</div>
		</div>
	</div>
</div>

<div class="container-fluid-m">
	<div class="row-m">
		<div class="col-12">
			<div class="col-6 px-2 py-3"><img src="/img/m/logo.png" width="150px"></div>
			<div class="col-6 px-2 py-3 text-right">
				<img src="/img/m/ico-telephone.png" width="45px" class="mr-2">
				<img src="/img/m/ico-menu-toggle-btn.png" width="45px">
			</div>
		</div>
	</div>
</div>
<div class="container-fluid-m">
	<div class="row-m no-margin-x">
		<div class="col-11 py-1 px-1" style="background:#171f32;">
			<div class="menu-box">
				<ul>
					<li class="font-white">홈</li>
					<li class="font-white">학원소개</li>
					<li class="font-white">교육과정</li>
					<li class="font-white">취업연구실</li>
					<li class="font-white">크루피플</li>
					<li class="font-white">새소식</li>
					<li class="font-white">상담센터</li>
				</ul>				
			</div>
		</div>
		<div class="col-1 py-1" style="background:#171f32;"><p class="font-white"></p></div>
	</div>
</div>


<div class="container-fluid-m">
	<div class="row-m no-margin-x">
		<div class="swiper-container sw-main-visual">
			<div class="swiper-wrapper">					
				<!-- 개강일정 --><div class="swiper-slide "><a href="detail/open.do"><img src="/img/2020-main-visual-009-mobile.png" width="100%"></a></div>
				<!-- 비대면 --><div class="swiper-slide"><a href='detail/detail03.do'><img src="/img/2020-mobile-visual-0003.png" width="100%"></a></div>
				<!--대한항공 정상화 운항  --><div class="swiper-slide"><a href='/detail/detail11.do'><img src="/img/2020-main-visual-0525-02-mobile.jpg" width="100%"></a></div>
				<!--합격후기 --><div class="swiper-slide"><a href="/crewpeople/review.do"><img src="/img/2020-main-visual-008-mobile.png" width="100%"></a></div>
				<!--크룹과외로 운영합니다  --><div class="swiper-slide"><a href='/detail/new_detail02.do'><img src="/img/2020-main-visual-new02-mobile.jpg" width="100%"></a></div>
				<!-- 대한항공 승무원 채용 --><div class="swiper-slide">	<a href="detail/detail01.do"><img src="/img/2020-main-visual-001-mobile.png" width="100%"></a></div>
				<!-- 중동항공사 --><div class="swiper-slide"><a href='/detail/detail10.do'><img src="/img/2020-main-visual-0525-03-mobile.jpg" width="100%"></a></div>
				<!--대한항공에 강하다  --><div class="swiper-slide"><a href="/introduce/pro.do"><img src="/img/2020-main-visual-010-mobile.png" width="100%"></a>	</div>
				<!--대한항공 과외  --><div class="swiper-slide"><a href="detail/detail02.do"><img src="/img/2020-main-visual-002-mobile.png" width="100%"></a></div>
				<!--대한항공데이  --><div class="swiper-slide"><a href="detail/detail06.do"><img src="/img/2020-main-visual-006-mobile.png" width="100%"></a></div>
				<!--아시아나데이  --><div class="swiper-slide"><a href="detail/detail07.do"><img src="/img/2020-main-visual-007-mobile.png" width="100%"></a></div>
				<!--스카이팀  --><div class="swiper-slide"><a href="detail/detail05.do"><img src="/img/2020-main-visual-005-mobile.png" width="100%"></a></div>										
			</div>
		</div>
	</div>
</div>

<script>
var mainvisualSwiper = new Swiper('.sw-main-visual', {
	loop : true,
	centeredSlides : true,
	autoplay : {
		delay : 8000,
		disableOnInteraction : true,
	},
});
</script>


<style>
	.sw-main-review-ko-pagination .swiper-pagination-bullet, .sw-main-review-os-pagination .swiper-pagination-bullet { margin:7px; padding:5px; background-color:#fff; }
</style>

<div class="container-fluid-m" style="background:url('/img/main-review-bg-img.jpg') no-repeat top; background-color:#111d32;">
	<div class="row-m py-5">
		<div class="col-12 text-center py-3">
			<div class="wow bounceInUp" data-wow-delay="1.0s"><img src="/img/m/img-sign-banner.png" class="mb-2" width="100%"></div>
			<div class="wow bounceInLeft mb-3" data-wow-delay="1.0s"><img src="/img/main-review-title.png" class="my-3" width="200px"></div>
		</div>
		<div class="col-12 mb-3 mt-2">
			<div class="col-12 mt-3"><img src="/img/main-review-ko-tit.png" width="200px"></div>
			<div class="col-12 mt-3">
				<img src="/img/main-review-ko-btn-ke-hover.png" class="mr-2" width="100px" id="ke">
				<img src="/img/main-review-ko-btn-oz.png" class="mr-2" width="100px" id="oz">
				<img src="/img/main-review-ko-btn-lcc.png" class="mr-2" width="100px" id="lcc">
			</div>
		</div>
		<div class="col-12 my-2">
			<div class="swiper-container sw-main-review-ko">
				<div class="swiper-wrapper"></div>
			</div>
			<div class="col-12 text-center my-3 sw-main-review-ko-pagination"></div>
		</div>
		<div class="col-12 mb-3 mt-2">
			<div class="col-12 mt-3"><img src="/img/main-review-os-tit.png" width="200px"></div>
			<div class="col-12 mt-3">
				<img src="/img/main-review-os-btn-ea-hover.png" class="mr-2" width="100px" id="ea">
				<img src="/img/main-review-os-btn-eu.png" class="mr-2" width="100px" id="eu">
				<img src="/img/main-review-os-btn-as.png" class="mr-2" width="100px" id="as">
			</div>
		</div>
		<div class="col-12 my-2">
			<div class="swiper-container sw-main-review-os">
				<div class="swiper-wrapper"></div>
			</div>
			<div class="col-12 text-center my-3 sw-main-review-os-pagination"></div>
		</div>
	</div>
</div>

<script>
var appendNumber = 600;
var prependNumber = 1;

var reviewKoSwiper = new Swiper('.sw-main-review-ko', {
	slidesPerView: 1,
	pagination: {
		el: '.sw-main-review-ko-pagination', clickable: true,
	},
	virtual: {
		slides: (function () {
		var slides = [];
		var idx = [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 15];
      for (var i = 0; i < 12; i += 1) {
			slides.push('<c:choose><c:when test="${!empty sessionScope.crewfactoryMemberInfo}"><a href="/crewpeople/reviewv.do?idx=' + idx[i] + '&section=ko&gubun=ke"><img src="/img/main-review-ko-' + (i + 1) + '.png" width="100%"></a></c:when><c:otherwise><a href="javascript:invalidMemberShip()"><img src="/img/main-review-ko-' + (i + 1) + '.png" width="100%"></a></c:otherwise></c:choose>');
		}
      return slides;
		}()),
	},
});
document.querySelector('#ke').addEventListener('click', function (e) {
  e.preventDefault();
  reviewKoSwiper.slideTo(0, 0);
});
document.querySelector('#oz').addEventListener('click', function (e) {
  e.preventDefault();
  reviewKoSwiper.slideTo(4, 0);
});
document.querySelector('#lcc').addEventListener('click', function (e) {
  e.preventDefault();
  reviewKoSwiper.slideTo(8, 0);
});

var reviewOsSwiper = new Swiper('.sw-main-review-os', {
	slidesPerView: 1,
	pagination: {
		el: '.sw-main-review-os-pagination', clickable: true,
	},
	virtual: {
		slides: (function () {
		var slides = [];
		var idx = [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 15];
      for (var i = 0; i < 12; i += 1) {
			slides.push('<c:choose><c:when test="${!empty sessionScope.crewfactoryMemberInfo}"><a href="/crewpeople/reviewv.do?idx=' + idx[i] + '&section=ko&gubun=ke"><img src="/img/main-review-os-' + (i + 1) + '.png" width="100%"></a></c:when><c:otherwise><a href="javascript:invalidMemberShip()"><img src="/img/main-review-os-' + (i + 1) + '.png" width="100%"></a></c:otherwise></c:choose>');
		}
      return slides;
		}()),
	},
});
document.querySelector('#ea').addEventListener('click', function (e) {
  e.preventDefault();
  reviewOsSwiper.slideTo(0, 0);
});
document.querySelector('#eu').addEventListener('click', function (e) {
  e.preventDefault();
  reviewOsSwiper.slideTo(4, 0);
});
document.querySelector('#as').addEventListener('click', function (e) {
  e.preventDefault();
  reviewOsSwiper.slideTo(8, 0);
});

</script>

<div class="" style="height:15px;"></div>

<div class="container-fluid-m" style="display:none;">
	<div class="row-m">
		<div class="col-12">
			<div class="swiper-container sw-quick-menu">
				<ul class="swiper-wrapper">
					<li class="swiper-slide px-2 text-center"><img src="/img/m/ico-phone.png" width="60px"><br><p class="font-10">전화상담</p></li>
					<li class="swiper-slide px-2 text-center"><img src="/img/m/ico-imgchk.png" width="60px"><br><p class="font-10">이미지체크</p></li>
					<li class="swiper-slide px-2 text-center"><img src="/img/m/ico-search.png" width="60px"><br><p class="font-10">위치조회</p></li>
					<li class="swiper-slide px-2 text-center"><img src="/img/m/ico-counsel.png" width="60px"><br><p class="font-10">온라인상담</p></li>
					<li class="swiper-slide px-2 text-center"><img src="/img/m/ico-counsel.png" width="60px"><br><p class="font-10">온라인상담</p></li>
				</ul>
			</div>
		</div>
	</div>
</div>

<div class="bt-ln-gray" style="height:15px; display:none;"></div>

<div class="container-fluid-m">
	<div class="row-m">
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
								<p class="py-1 font-12">8월 4일</p>
								<p class="py-1 font-16"><strong>21' 대한항공 채용대비</strong></p>
								<p class="py-1 font-12 font-gray">첫 지원자 8명 제한</p>
							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<div class="col-12 border rad-div-10 px-3 py-3">
							<div class="col-4"><img src="/img/m/img-schedule-002.png"></div>
							<div class="col-8">
								<p class="py-1 font-12">8월 21일</p>
								<p class="py-1 font-16"><strong>CPR 심폐소생술 취득</strong></p>
								<p class="py-1 font-12 font-gray">정회원 스펙업 혜택</p>
							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<div class="col-12 border rad-div-10 px-3 py-3">
							<div class="col-4"><img src="/img/m/img-schedule-003.png"></div>
							<div class="col-8">
								<p class="py-1 font-12">8월 1일 ~</p>
								<p class="py-1 font-16"><strong>기내수화 취득</strong></p>
								<p class="py-1 font-12 font-gray">정회원 스펙업 혜택</p>
							</div>
						</div>
					</div>
				</div>
				<div class="sw-scheduler-pagination text-center"></div>
			</div>
		</div>
	</div>
</div>

<script>
$(document).ready(function(){
	var swiper = new Swiper('.sw-scheduler', {
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
});	
</script>

<div class="" style="height:20px;"></div>

<div class="container-fluid-m">
	<div class="row-m mb-3">
		<div class="col-12">
			<div class="col-12 pb-2">
				<div class="col-12 border rad-div-10 off-hide"><img src="/img/m/img-day-schedule.png" width="100%"></div>
			</div>
			<div class="col-6 pr-1">
				<div class="col-12 border rad-div-10 off-hide"><img src="/img/m/img-day-ke.png" width="100%"></div>
			</div>
			<div class="col-6 pl-1">
				<div class="col-12 border rad-div-10 off-hide"><img src="/img/m/img-day-oz.png" width="100%"></div>
			</div>
		</div>
	</div>
</div>


<!-- 공백 -->
<div class="" style="height:30px;"></div>
<!-- 커리큘럼 -->
<div class="container-fluid-m">
	<div class="row-m no-margin-x">
		<div class="col-12 my-3" style="padding-left:10px;">
			<div class="col-6 font-18"><strong>크루팩토리 커리큘럼</strong></div>
			<div class="col-6 py-1 px-1"></div>
		</div>
		<div class="col-12">
			<div class="swiper-container sw-curri">
				<div class="swiper-wrapper col-12">
					<div class="swiper-slide">
						<div class="col-12 px-2 py-2 border-tb">
							<div class="col-4"><img src="/img/m/img-curri-ko.png" width="100px"></div>
							<div class="col-8 px-3">
								<!-- <p class="pb-1 font-10 font-gray">Domestic Airlines Cabin-Crew</p> -->
								<div class="col-10 py-1 font-14"><strong>대한항공/아시아나항공<br>국적기취업준비반 1:8</strong></div>
								<div class="col-2 py-1 text-right"><img src="/img/m/ico-more.png" width="25px"></div>
								<div class="col-12 py-1 font-12 font-gray">대한항공, 아시아나항공전문 프리미엄과정</div>
							</div>
						</div>
						<div class="col-12" style="height:5px; background:#e6e5e5"></div>
						<div class="col-12 px-2 py-2 border-tb">
							<div class="col-4"><img src="/img/m/img-curri-os.png" width="100px"></div>
							<div class="col-8 px-3">
								<div class="col-10 py-1 font-14"><strong>외국항공사<br>취업준비반 1:8</strong></div>
								<div class="col-2 py-1 text-right"><img src="/img/m/ico-more.png" width="25px"></div>
								<div class="col-12 py-1 font-12 font-gray font-lh-16">개인의 이미지진단/분석을 통해<br>품격있고 인정받는 인재상 완성</div>
							</div>
						</div>
						<div class="col-12" style="height:5px; background:#e6e5e5"></div>
						<div class="col-12 px-2 py-2 border-tb">
							<div class="col-4"><img src="/img/m/img-curri-prv.png" width="100px"></div>
							<div class="col-8 px-3">
								<div class="col-10 py-1 font-14"><strong>1:1<br>승무원과외</strong></div>
								<div class="col-2 py-1 text-right"><img src="/img/m/ico-more.png" width="25px"></div>
								<div class="col-12 py-1 font-12 font-gray font-lh-16">개인별관리로 성향과 장/단점에 맞춰<br>최고의 결과를 끌어낼수 있도록 합니다</div>
							</div>
						</div>
						<div class="col-12" style="height:5px; background:#e6e5e5"></div>
						<div class="col-12 px-2 py-2 border-tb">
							<div class="col-4"><img src="/img/m/img-curri-std.png" width="100px"></div>
							<div class="col-8 px-3">
								<div class="col-10 py-1 font-14"><strong>남자승무원<br>스튜어드&nbsp;</strong></div>
								<div class="col-2 py-1 text-right"><img src="/img/m/ico-more.png" width="25px"></div>
								<div class="col-12 py-1 font-12 font-gray font-lh-16">스튜어드를 위한 특별한 과외/특강<br>이미지/모의면접 등 남자승무원 맞춤과정</div>
							</div>
						</div>
<!-- 						<div class="col-12" style="height:5px; background:#e6e5e5"></div>
						<div class="col-12 px-2 py-2 border-tb">
							<div class="col-4"><img src="/img/m/img-curri-sky.png" width="100px"></div>
							<div class="col-8 px-3">
								<div class="col-10 py-1 font-14"><strong>스카이팀 선발대회<br>&nbsp;</strong></div>
								<div class="col-2 py-1 text-right"><img src="/img/m/ico-more.png" width="25px"></div>
								<div class="col-12 py-1 font-12 font-gray font-lh-16">스튜어드를 위한 특별한 과정 Special특강</div>
							</div>
						</div> -->
						<div class="col-12" style="height:5px; background:#e6e5e5"></div>
						<div class="col-12 px-2 py-2 border-tb">
							<div class="col-4"><img src="/img/m/img-curri-ipsi.png" width="100px"></div>
							<div class="col-8 px-3">
								<div class="col-10 py-1 font-14"><strong>항공운항과<br>대학입시교육</strong></div>
								<div class="col-2 py-1 text-right"><img src="/img/m/ico-more.png" width="25px"></div>
								<div class="col-12 py-1 font-12 font-gray font-lh-16">인하공전/한서대/수원과학대 등 <br>승무원관련 명문대 합격률 압도적 1위</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
$(document).ready(function(){
	var curriSwiper = new Swiper('.sw-curri', {
		slidesPerView: 1,	
	});
});	
</script>




<!-- 공백 -->
<div class="container-fluid-m bg-gray" style="height:5px;"></div>

<div class="" style="height:30px;"></div>

<div class="container-fluid-m">
	<div class="row-m no-margin-x">
		<div class="col-12">
			<div class="swiper-container sw-banner">
				<div class="swiper-wrapper">
					<div class="swiper-slide"><img src="/img/m/img-banner-001.png" width="100%"></div>
					<div class="swiper-slide"><img src="/img/m/img-banner-001.png" width="100%"></div>
					<div class="swiper-slide"><img src="/img/m/img-banner-001.png" width="100%"></div>
				</div>
				<div class="sw-banner-pagination text-center"></div>
			</div>
		</div>
	</div>
</div>

<script>
$(document).ready(function(){
	var bannerSwiper = new Swiper('.sw-banner', {
		slidesPerView: 1,	
		autoplay: {
	        delay: 2500,
	        disableOnInteraction: false,
	      },
		loop: true,
		pagination: {
	        el: '.sw-banner-pagination',
	      },
	});
});	
</script>

<!-- 공백 -->
<div class="" style="height:30px;"></div>



<div class="container-fluid-m">
	<div class="row-m">
		<div class="col-12 my-3">
			<div class="col-6 font-18"><strong>"5Star"강사진소개</strong></div>
			<div class="col-6 font-12 py-1 px-1 text-right">더보기</div>
		</div>
		<div class="col-12 rad-div-10 off-hide" style="background:url('/img/m/bg-pro-img.png') no-repeat center;">
			<div class="swiper-container sw-pro">
				<div class="swiper-wrapper">
					<div class="swiper-slide"><img src="/img/m/img-pro-001.png" width="100%"></div>
					<div class="swiper-slide"><img src="/img/m/img-pro-002.png" width="100%"></div>
					<div class="swiper-slide"><img src="/img/m/img-pro-003.png" width="100%"></div>
					<div class="swiper-slide"><img src="/img/m/img-pro-004.png" width="100%"></div>
					<div class="swiper-slide"><img src="/img/m/img-pro-005.png" width="100%"></div>
				</div>
			</div>
		</div>
		<div class="col-12 my-3">
			<div class="swiper-container sw-pro-thumb">
				<div class="swiper-wrapper">
					<c:forEach items="${professor}" var="pro" varStatus="status">
					<div class="swiper-slide">
						<div class="col-12 rad-div-10 border off-hide" style="height:70px;">
							<img src="${pro.thumbnail}" width="60px" style="margin-left:30px;">
						</div>
					</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>


<script>
$(document).ready(function(){
	var proThumbSwiper = new Swiper('.sw-pro-thumb', {
		slidesPerView: 3.5,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		loopedSlides: 5,
	});
	var proSwiper = new Swiper('.sw-pro', {
		slidesPerView: 1,
		loop: true,
		loopedSlides: 5,
		thumbs: {
	        swiper: proThumbSwiper,
	      },
	});
});	
</script>

<!-- 공백 -->
<div class="" style="height:30px;"></div>


<div class="container-fluid-m">
	<div class="row-m">
		<div class="col-12 mt-3">
			<div class="col-6 font-18"><strong>오늘도, 우리는 열공</strong></div>
			<div class="col-6 font-12 font-gray py-1 px-1 text-right">더보기</div>
		</div>
		<div class="col-12" id="sw-main-moment">
			<ul class="col-12">
				<c:forEach items="${moment}" var="moment"  varStatus="status">
					<c:choose><c:when test="${status.count eq 1 }"><li class="col-12 float-left px-1 py-1 mobile-100-percent off-hide"></c:when>
									<c:when test="${status.count eq 2 }"><li class="col-6 float-left py-1 px-1 mobile-50-percent off-hide"></c:when>
									<c:otherwise><li class="col-6 float-left py-1 px-1 mobile-50-percent rad-div-10 off-hide"></c:otherwise></c:choose>
						<div class="col-12 rad-div-10 off-hide">
							<a href="/crewpeople/momentv.do?idx=${moment.idx}"><img src="${moment.thumbnail}" width="100%" class="hvr-grow"></a>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>

<div class="" style="height:30px;"></div>

<div class="container-fluid-m">
	<div class="row-m no-margin-x">
		<div class="col-12"><img src="/img/m/img-banner-001.png" width="100%"></div>
	</div>
</div>

<div class="" style="height:30px;"></div>

<div class="container-fluid-m">
	<div class="row-m">
		<div class="col-12 my-3">
			<div class="col-6 font-18"><strong>새소식</strong></div>
			<div class="col-6 font-12 font-gray py-1 px-1 text-right">더보기</div>
		</div>
		<div class="col-12">
			<div class="swiper-container sw-news">
				<div class="swiper-wrapper">
					<c:forEach items="${announce}" var="announce"  varStatus="status">
					<div class="swiper-slide">
						<div class="col-12 border rad-div-10 px-3 py-3">
							<div class="col-4"><img src="/img/m/ico-number-${status.count}.png"></div>
							<div class="col-8">
								<p class="py-1 font-10"><fmt:formatDate value="${announce.regdate}" pattern="yyyy-MM-dd"/></p>
								<p class="py-1 font-16"><strong>${announce.title}</strong></p>
								<p class="py-1 font-12 font-gray">${announce.description}</p>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
				<div class="sw-news-pagination text-center"></div>
			</div>
		</div>
	</div>
</div>

<script>
$(document).ready(function(){
	var bannerSwiper = new Swiper('.sw-news', {
		slidesPerView: 1,	
		autoplay: {
	        delay: 2500,
	        disableOnInteraction: false,
	      },
		loop: true,
		pagination: {
	        el: '.sw-news-pagination',
	      },
	});
});	
</script>

<!-- 공백 -->
<div class="" style="height:30px;"></div>


<div class="container-fluid-m">
	<div class="row-m no-margin-x px-1">
		<div class="col-12 mt-3 px-1">
			<div class="col-6 font-18"><strong>위아크루</strong></div>
			<div class="col-6 font-12 font-gray py-1 px-1 text-right">더보기</div>
		</div>
		<div class="col-12" id="sw-main-moment">
			<ul>
				<c:forEach items="${blogko}" var="blogko">
				<li class="col-6 float-left px-1 py-1">
					<div class="col-12 border off-hide">
						<img src="${blogko.thumbnail}" style="width:100%;" class=" hvr-grow" alt="${blogko.title}">
					</div>
				</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>

<div class="" style="height:30px;"></div>

<div class="container-fluid-m">
	<div class="row-m no-margin-x" style="background: url('/img/main-teacherbanner-bg-01.jpg') no-repeat top; background-size:250%; position: relative; height:13rem;">
		<div class="col-12 text-center" style="padding-top: 5rem; padding-bottom: 5rem; z-index: 999;">
			<img src="/img/main-teacherbanner-01.png" width="360px">
		</div>
	</div>
	<div class="row-m no-margin-x off-hide" style="background:url('/img/main-teacherbanner-bg-02.jpg'); height:19rem;">
		<div class="col-12 text-center">
			<img src="/img/main-teacherbanner-02.png" width="360px">
		</div>
	</div>
</div>

<div class="container-fluid-m">
	<div class="row no-margin-x">
		<div class="col-12 text-center">
			<img src="/img/main-sign-txt_09.png" width="100%">
		</div>
	</div>
</div>

<div class="container-fluid py-5" style="width:100%; height: 100%; background: url('../img/wis-bg3.png') no-repeat center;">
	<div class="row main-row text-center">
		<div class="col-6 off-hide" style="border-right: 1px solid #474747">
			<p class="font-24 font-white pt-4 px-4">전화상담</p>
			<p class="font-18 font-pink py-1 pb-2 px-3 ">02-2038-0065</p>
			<p class="font-10 px-3">주말/공휴일에도 상담이 가능합니다</p>
			<a href='tel:02-2038-0065'><button class="btn btn-primary" style="width: 100px; margin-top: 25px;">전화걸기 ☎</button></a>
		</div>
		<div class="col-6 off-hide">
			<p class="font-24 font-white pt-4 px-4">카카오톡</p>
			<p class="font-18 font-pink py-1 pb-2 px-3 ">KAKAO TALK</p>
			<p class="font-10 px-3">카카오톡 상담 바로가기</p>
			<a href="https://pf.kakao.com/_QWAEl"><button class="btn btn-primary" style="width: 100px; margin-top: 25px;">친구추가 +</button></a>
		</div>
	</div>
</div>
	
<footer>
<div class="container-fluid-m bg-navy">
  <div class="row-m">
    <div class="col-12 pt-5 pb-3">
      <div class="col-12">
        <img src="/img/logo-white.png" width="250px">
        <div class="mt-2">
          <ul>
      	  	<li class="float-left px-3"><a href="https://www.facebook.com/crewseoul" target="_blank"><img src="../img/sns-facebook-ico.png"></a></li>
				  	<li class="float-left px-3"><a href="https://www.instagram.com/crewfactory_fly/" target="_blank"><img src="../img/sns-instagram-ico.png"></a></li>
				  	<li class="float-left px-3"><a href="https://pf.kakao.com/_QWAEl" target="_blank"><img src="../img/sns-kakao-ico.png"></a></li>
				  	<li class="float-left px-3"><a href="https://map.naver.com/v5/entry/place/34589774?c=14140743.5947732,4510655.1054681,15,0,0,0,dh"><img src="../img/sns-naver-ico.png"></a></li>
					</ul>
        </div>
      </div>
      <div class="col-12">
        <div class="col-12 mb-3 mt-4">
          <ul class="col-12 font-white font-12">
            <li class="px-3 float-left"><b>강남캠퍼스</b></li>
            <li class="px-3 float-left"><a href="http://www.crewfa.com" target="_blank" class="font-white">인천캠퍼스</a></li>
            <li class="px-3 float-left"><a href="http://www.crew-gs.com" target="_blank" class="font-white">항공사지상직</a></li>
          </ul>
          <ul class="col-12 font-12">
            <li class="px-3 float-left"><a href="http://www.crewschool.co.kr" target="_blank" class="font-white">항공운항과입시</a></li>
            <li class="px-3 float-left"><a href="http://www.crew-gs.com" target="_blank" class="font-white">여행사취업</a></li>
          </ul>
        </div>
        <div class="col-12">
        	<div class="col-12 mt-2 px-3">
        		<p class="font-white font-12">강남캠퍼스 본관</p>
        	</div>
        	<div class="col-12">  
	          <ul class="px-3">
	            <li class="font-gray font-10">서울특별시 강남구 논현동 18-4 성일빌딩 1F, 2F 크루팩토리 승무원학원 백아(주)</li>
	          </ul>
	          <ul class="px-3">
	            <li class="font-gray font-10"><span>tel. 02-2038-0065</span><span class="mx-4">fax. 02-512-1467</span><a href="/detail/fee1.do" target="_blank" class="font-gray">수강료안내</a></li>
	          </ul>
	        </div>
	        <div class="col-12 mt-2 px-3">
        		<p class="font-white font-12">강남캠퍼스 제2관</p>
        	</div>
        	<div class="col-12">  
	          <ul class="px-3">
	            <li class="font-gray font-10">서울특별시 강남구 논현동 17-5 극동빌딩 7층</li>
	          </ul>
	          <ul class="px-3">
	            <li class="font-gray font-10"><span>tel. 02-548-4091</span><span class="mx-4">fax. 02-548-4095</span><a href="/detail/fee2.do" target="_blank" class="font-gray">수강료안내</a></li>
	          </ul>
          </div>
          <div class="col-12 mt-2 px-3">
        		<p class="font-white font-12">인천캠퍼스</p>
        	</div>
        	<div class="col-12">  
	          <ul class="px-3">
	            <li class="font-gray font-10">인천광역시 부평구 경원대로 1382 대한빌딩 5층</li>
	          </ul>
	          <ul class="px-3">
	            <li class="font-gray font-10"><span>tel. 032-502-3356</span><span class="mx-4">fax. 032-361-3346</span><a href="/detail/fee3.do" target="_blank" class="font-gray">수강료안내</a></li>
	          </ul>
	        </div>
        </div>
        <div class="col-12 px-3 mt-4 font-white">Copyright ⓒ  백아(주), All rights reserved.</div>  
      </div>
    </div>
  </div>
</div>


<%@page import="java.net.URLEncoder, java.net.URLDecoder" %>
<%
	String visiter_refer = request.getHeader("referer");
	String visiter_ipaddr = request.getRemoteAddr();
	String visiter_agent = request.getHeader("User-Agent");
	String visiter_domain = request.getServerName();
	String getParam = request.getQueryString();	
	String currentUrl = "http://" + request.getServerName() + request.getAttribute("javax.servlet.forward.request_uri");  
	if(getParam != null){
		currentUrl = currentUrl + "?" + getParam;
	}
%>

<!-- script>
	$(document).ready(function(){
		var dec = decodeURI("<%=visiter_refer%>");
		var dec2 = decodeURI("<%=currentUrl%>");
		console.log(dec);
		console.log("<%=visiter_ipaddr%>");
		if(dec != 'null' || dec != null || dec != ''){
			$.ajax({
				type: "POST",
				contentType: "application/json",
				url: "/visit/counter.do",
				data: JSON.stringify({
				ipaddr : "<%=visiter_ipaddr%>",
				path : dec,
				current : dec2,
				domain : "<%=visiter_domain%>",
				agent : "<%=visiter_agent%>",
			}),
				dataType: 'json',
				error: function (e) { }	
			});
		}
	});
</script -->





</footer>

</body>
</html>