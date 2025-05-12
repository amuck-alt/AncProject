<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%= site_title %> - 대한항공 공채 설명회 </title>
<meta name="description" content="<%= site_descript %>" />
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file="../include/header.jsp"%>

</head>
<body>
	<%@ include file="../include/nav.jsp"%>
	<%@ include file="../include/floating-left.jsp"%>


	<!-- 사이즈 1920로 스크롤생김 -->

	<!-- <div class="container-fluid  mobile-hidden" >
		<div class="row">
			<div class="col-12 text-center">
				<img src="/img/220726_d8_page.jpg" style="width: 100%;" alt="티웨이항공 5회 단기반" id="mobile-100-percent">
			</div>
		</div>
	</div> -->
	
	<!-- <div class="container-fluid mobile-show">
		<div class="row">
			<div class="col-12">
					<img src="/img/220726_d8_page_mo_01.jpg" alt="티웨이항공 5회 단기반" id="mobile-100-percent">
					<img src="/img/220726_d8_page_mo_02.jpg" alt="티웨이항공 5회 단기반" id="mobile-100-percent">
					<img src="/img/220726_d8_page_mo_03.jpg" alt="티웨이항공 5회 단기반" id="mobile-100-percent">
				</div>
		</div>
	</div> -->
	
	<!-- 카드뉴스 형식 -->
	<div class="container-fluid my-5">
		<div class="row sub-row">
			<div class="col-12 text-center">
			
				<img src="/img/221018_d8_page_01.png"  alt="대한항공 공채 설명회" id="mobile-100-percent">
				<a href="https://open.kakao.com/o/sqPnmiIe" target="_blank">
				<img src="/img/221018_d8_page_02.png"  alt="대한항공 공채 설명회" id="mobile-100-percent">
				</a>
				
			</div>
		</div>
	</div>


	

	

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
<script>
	$(document).ready(function(){
		$('#blogto').show();
		$('#blogsh').hide();
		$('#blogcp').hide();
	});

	function clickBlog(section){
		
		if (section == 'to'){
			$('#blog-section-to').addClass('activing');
			$('#blog-section-sh').removeClass('activing');
			$('#blog-section-cp').removeClass('activing');
			$('#blogto').show();
			$('#blogsh').hide();
			$('#blogcp').hide();
		} else if(section == 'sh'){
			filterClass = '.sh';
			$('#blog-section-sh').addClass('activing');
			$('#blog-section-to').removeClass('activing');
			$('#blog-section-cp').removeClass('activing');
			$('#blogto').hide();
			$('#blogsh').show();
			$('#blogcp').hide();
		}
		else{
			filterClass = '.cp';
			$('#blog-section-cp').addClass('activing');
			$('#blog-section-sh').removeClass('activing');
			$('#blog-section-to').removeClass('activing');
			$('#blogto').hide();
			$('#blogsh').hide();
			$('#blogcp').show();
		}
	}
	
	
	
		if ($(window).width() > 768) {

			var galleryThumbs = new Swiper('#spc-gallery-thumbs', {
				slidesPerView : 6,
				spaceBetween : 10,
				watchSlidesVisibility : true,
				watchSlidesProgress : true,
			});

			var galleryTop = new Swiper('#spc-gallery-top', {
				thumbs : {
					swiper : galleryThumbs,
				},
			});
			
			var galleryThumbs1 = new Swiper('#spc-gallery-thumbs1', {
				slidesPerView : 3,
				spaceBetween : 10,
				watchSlidesVisibility : true,
				watchSlidesProgress : true,
			});

			var galleryTop = new Swiper('#spc-gallery-top1', {
				thumbs : {
					swiper : galleryThumbs1,
				},
			});

		} else {
			var galleryThumbs = new Swiper('#spc-gallery-thumbs', {
				slidesPerView : 2.6,
				spaceBetween : 10,
				watchSlidesVisibility : true,
				watchSlidesProgress : true,
			});

			var galleryTop = new Swiper('#spc-gallery-top', {
				thumbs : {
					swiper : galleryThumbs,
				},
			});
			var galleryThumbs1 = new Swiper('#spc-gallery-thumbs1', {
				slidesPerView : 2.6,
				spaceBetween : 10,
				watchSlidesVisibility : true,
				watchSlidesProgress : true,
			});

			var galleryTop = new Swiper('#spc-gallery-top1', {
				thumbs : {
					swiper : galleryThumbs1,
				},
			});


		}
	</script>
	
	<script src="../dist/js/jquery.counterup.min.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
	<script src="../dist/js/bootstrap.min.js"></script>
	<script src="../dist/js/swiper.min.js"></script>
</body>
</html>