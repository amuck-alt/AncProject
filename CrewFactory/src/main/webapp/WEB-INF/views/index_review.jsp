<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
	.sw-main-review-ko-pagination .swiper-pagination-bullet, .sw-main-review-os-pagination .swiper-pagination-bullet, .sw-main-review-best-pagination .swiper-pagination-bullet { margin:7px; padding:5px; background-color:#fff; }
	.sw-main-review-ko, .sw-main-review-os { height:320px; } @media only screen and (max-width: 767px) { .sw-main-review-ko, .sw-main-review-os { height:200px; } }
</style>

<div class="main-sign-ment">
	<div class="row main-row">
		<div class="col-12  text-center">
			<img src="/img/main-sign-txt-n.png" width="65%" id="mobile-100-percent">
		</div>
	</div>
</div>

<!-- 중간배너/학원과외 PC -->
<div class="containter-fluid bg-pass21" style="background: url('/img/220914_mid_banner_bg.jpg') no-repeat center;">
	<div class="row sub-row text-center">
		<div class="col-12"> <a href="/counsel/specclass2.do">
			<img src="/img/220914_mid_banner.png" class="mobile-100-percent"></a>
		</div>
	</div>
</div>

<!-- <div class="containter-fluid bg-dark-navy mobile-hidden">
	<div class="row event-banner-row">
		<div class="col-12 pt-3">
			<div class="col-2"></div>
			<div class="col-5">
				<img src="/img/choi-txt-img-1029_01.png">
			</div>
			<div class="col-2 pt-5">
				<a href="/counsel/online.do"><button class="btn btn-primary" style="width: 200px;">자세히보기</button></a>
			</div>
			<div class="col-2"></div>
		</div>
	</div>
</div> -->


<div class="container-fluid" style="background:url('/img/main-review-bg-img.jpg') no-repeat top; background-color:#111d32;">
	<div class="row sub-row py-5">
		<div class="col-12 wow bounceInUp">
			<div class="col-12 text-center">
				<div class="mb-5 mobile-hidden"><img src="/img/main-review-title.png" class="my-5 mobile-100-percent"></div>
				<div class="mobile-show"><img src="/img/main-review-title-m.png" class="my-5 mobile-100-percent"></div>
			</div>
			<div class="col-12 mb-3 mt-3">
				<div class="col-6 mobile-100-percent mt-3"><img src="/img/main-review-ke-tit.png" class="mobile-50-percent" id="ko-tit"></div>
				<div class="col-6 mobile-100-percent mt-3 text-right">
					<button class="radius-button btn-sky font-white" id="ke">대한항공</button>
					<button class="radius-button btn-navy font-white" id="oz">아시아나항공</button>
					<button class="radius-button btn-navy font-white" id="lcc">국내항공사</button>
				</div>
			</div>
			<div class="col-12 my-2">
				<div class="swiper-container sw-main-review-ko">
					<div class="swiper-wrapper"></div>
				</div>
				<div class="col-12 text-center my-3 sw-main-review-ko-pagination"></div>
			</div>
		</div>
		<div class="col-12 wow bounceInUp">
			<div class="col-12 pt-5 my-3">
				<div class="col-6 mobile-100-percent mt-3"><img src="/img/main-review-ea-tit.png" class="mobile-50-percent" id="os-tit"></div>
				<div class="col-6 mobile-100-percent mt-3 text-right">
					<button class="radius-button btn-sky font-white" id="ea">중동항공사</button>
						<button class="radius-button btn-navy font-white" id="eu">유럽항공사</button>
						<button class="radius-button btn-navy font-white" id="as">아시아항공사</button>
				</div>
			</div>
			<div class="col-12">
				<div class="swiper-container sw-main-review-os">
					<div class="swiper-wrapper">
					</div>
				</div>
				<div class="col-12 text-center my-3 sw-main-review-os-pagination"></div>
			</div>
		</div>
		<div class="col-12 mt-5 wow bounceInUp">
<!-- 			<div class="col-12 pt-5 my-3">
				<div class="col-6 mobile-100-percent mt-3"><img src="/img/main-review-os-tit.png" class="mobile-50-percent"></div>
			</div> -->
			<div class="col-12">
				<div class="swiper-container sw-main-review-best">
					<div class="swiper-wrapper">
						<div class="swiper-slide pr-2"><img src="/img/main-review-1.png" class="rad-div-10" width="100%"></div>
						<div class="swiper-slide pr-2"><img src="/img/main-review-2.png" class="rad-div-10" width="100%"></div>
						<div class="swiper-slide pr-2"><img src="/img/main-review-3.png" class="rad-div-10" width="100%"></div>
						<div class="swiper-slide pr-2"><img src="/img/main-review-4.png" class="rad-div-10" width="100%"></div>
						<div class="swiper-slide pr-2"><img src="/img/main-review-5.png" class="rad-div-10" width="100%"></div>
						<div class="swiper-slide pr-2"><img src="/img/main-review-6.png" class="rad-div-10" width="100%"></div>
					</div>
				</div>
				<div class="col-12 text-center my-3 sw-main-review-best-pagination"></div>
			</div>
		</div>
	</div>
</div>


<script>
var appendNumber = 600;
var prependNumber = 1;
var slideViews = 0;
if($(window).width() > 768){
	slideViews = 2.2;
}else{
	slideViews = 1.1;
}

var reviewKoSwiper = new Swiper('.sw-main-review-ko', {
	slidesPerView: slideViews,
	//loop: true,
	//centeredSlides: true,
	pagination: {
		el: '.sw-main-review-ko-pagination', clickable: true,
	},
	virtual: {
		slides: (function () {
		var slides = [];
		var gubun = "ke";
		var idx = [543, 544, 484, 482, 527, 526, 525, 524, 545, 546, 548, 547];
      for (var i = 0; i < 12; i += 1) {
    	  if(i < 4){ gubun = "ke"; }else if(i >= 4 && i < 8){	gubun = "oz"; }else{	gubun = "lcc"; }
    	  slides.push('<a href="/crewpeople/review.do?&section=ko&gubun=' + gubun + '"><img src="/img/main-review-ko-' + (i + 1) + '.png" class="mobile-100-percent"></a>');
		}
      return slides;
		}()),
	},
});

var reviewOsSwiper = new Swiper('.sw-main-review-os', {
	slidesPerView: slideViews,
	//loop: true,
	//centeredSlides: true,
	pagination: {
		el: '.sw-main-review-os-pagination', clickable: true,
	},
	virtual: {
		slides: (function () {
		var slides = [];
		var gubun2 = "ea";
		var idx = [69, 21, 60, 539, 78, 27, 28, 79, 66, 65, 61, 59];
      for (var i = 0; i < 21; i += 1) {
			if(i <= 4){ gubun2 = "ea"; }else if(i > 4 && i <= 8){	gubun2 = "eu"; }else{ gubun2 = "as"; }
			slides.push('<a href="/crewpeople/review.do?&section=os&gubun=' + gubun2 + '"><img src="/img/main-review-os-' + i + '.png" class="mobile-100-percent"></a>');
		}
      return slides;
		}()),
	},
});

var reviewBestSwiper = new Swiper('.sw-main-review-best', {
	slidesPerView: slideViews,
	//loop: true,
	//centeredSlides: true,
	pagination: {
		el: '.sw-main-review-best-pagination', clickable: true,
	},
});

document.querySelector('#ke').addEventListener('click', function (e) {
	e.preventDefault();
	$("#oz").removeClass("btn-sky");
	$("#lcc").removeClass("btn-sky");
	$("#ke").addClass("btn-sky");
	$("#ko-tit").attr("src", "/img/main-review-ke-tit.png");
	reviewKoSwiper.slideTo(0, 0);
});
document.querySelector('#oz').addEventListener('click', function (e) {
	e.preventDefault();
	$("#ke").removeClass("btn-sky");
	$("#lcc").removeClass("btn-sky");
	$("#oz").addClass("btn-sky");
	$("#ko-tit").attr("src", "/img/main-review-oz-tit.png");
	reviewKoSwiper.slideTo(4, 0);
});
document.querySelector('#lcc').addEventListener('click', function (e) {
	e.preventDefault();
	$("#ke").removeClass("btn-sky");
	$("#oz").removeClass("btn-sky");
	$("#lcc").addClass("btn-sky");
	$("#ko-tit").attr("src", "/img/main-review-ko-tit.png");
	reviewKoSwiper.slideTo(8, 0);
});

document.querySelector('#ea').addEventListener('click', function (e) {
	e.preventDefault();
	$("#eu").removeClass("btn-sky");
	$("#as").removeClass("btn-sky");
	$("#ea").addClass("btn-sky");
	$("#os-tit").attr("src", "/img/main-review-ea-tit.png");
	reviewOsSwiper.slideTo(0, 0);
});
document.querySelector('#eu').addEventListener('click', function (e) {
	e.preventDefault();
	$("#ea").removeClass("btn-sky");
	$("#as").removeClass("btn-sky");
	$("#eu").addClass("btn-sky");
	$("#os-tit").attr("src", "/img/main-review-eu-tit.png");
	reviewOsSwiper.slideTo(5, 0);
});
document.querySelector('#as').addEventListener('click', function (e) {
	e.preventDefault();
	$("#ea").removeClass("btn-sky");
	$("#eu").removeClass("btn-sky");
	$("#as").addClass("btn-sky");
	$("#os-tit").attr("src", "/img/main-review-as-tit.png");
	reviewOsSwiper.slideTo(9, 0);
});

</script>


