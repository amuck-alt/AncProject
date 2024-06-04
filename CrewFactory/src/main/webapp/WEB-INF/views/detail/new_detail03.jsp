<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp"%>
<title><%= site_title %>-크루팩토리</title>
<meta name="description" content="<%= site_descript %>" />
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp"%>
</head>
<body>
	<%@ include file = "../include/nav.jsp"%>
	<%@ include file = "../include/floating-left.jsp"%>


	<!-- 사이즈 1920로 스크롤생김  고3 에브리데이 상세 

	<div style="text-align: center;">
		<img src="/img/d8_01.jpg" alt="단기반" id="mobile-100-percent" class="mobile-show">
		<img src="/img/d8_02.gif" alt="단기반" id="mobile-100-percent" class="mobile-show">
		<img src="/img/d8_03.jpg" alt="단기반" id="mobile-100-percent" class="mobile-show">
		
		<!--<a href="/detail/open.do"><img src="/img/d8_03.jpg" alt="단기반" id="mobile-100-percent" class="mobile-show"></a> 
		</div> -->
	 	<!-- 웹 
		<div style="text-align: center; ">
		<img src="/img/d8_01_01.jpg" alt="단기반" id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
		<img src="/img/d8_01_02.gif" alt="단기반"  id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
		<img src="/img/d8_01_03.jpg" alt="단기반" id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
		<!--<a href="/detail/open.do"><img src="/img/d8_01_03.jpg" alt="단기반" id="mobile-100-percent" class="mobile-hidden" style="width:100%;"></a>
		
		</div> 상세 끝 ! -->




<!-- 웹버전 -->
	<div class="container-fluid mobile-hidden">	
	  	<div class="row">
		   	<div class="col-12"><img src="/img/detail_200901_03.jpg" style="width: 100%;" class="mobile-100-percent"></div>	
	  	</div>
	  	<div class="row">
		   	<div class="col-12"><img src="/img/detail_201111_04.jpg" style="width: 100%;" class="mobile-100-percent"></div>	
	  	</div>
	</div>
   
 <!-- 모바일버전 -->
   <div style="text-align: center;">
		<img src="/img/detail_200901_03mo.jpg" alt="합격률" id="mobile-100-percent" class="mobile-show">
   </div>
   <div style="text-align: center;">
		<img src="/img/detail_201111mo.jpg" alt="합격률" id="mobile-100-percent" class="mobile-show">
   </div>
	
	

<div class="containter-fluid py-5" style="background:url('/img/main-review-bg-img.jpg') no-repeat top; background-color:#171f32;">
	<div class="row sub-row py-5">
		<div class="col-12 text-center mb-5 px-2">
		</div>
		<div class="col-12">
			<img src="/img/main-review-allpass-tit-img.png" class="my-5 mobile-hidden">
			<img src="/img/main-review-allpass-tit-img-m.png" class="mb-2 mobile-show mobile-75-percent">
		</div>
		<div class="col-12">
			<div class="swiper-container" id="sw-main-review-bob">
				<div class="swiper-wrapper">
					<div class="swiper-slide"><a href="/detail/hof.do"><img src="/img/main-review-allpass-001.png" class="mobile-100-percent"></a></div>
					<div class="swiper-slide"><a href="/detail/hof.do"><img src="/img/main-review-allpass-003.png" class="mobile-100-percent"></a></div>
					<div class="swiper-slide"><a href="/detail/hof.do"><img src="/img/main-review-allpass-004.png" class="mobile-100-percent"></a></div>
					<div class="swiper-slide"><a href="/detail/hof.do"><img src="/img/main-review-allpass-005.png" class="mobile-100-percent"></a></div>
					<div class="swiper-slide"><a href="/detail/hof.do"><img src="/img/main-review-allpass-006.png" class="mobile-100-percent"></a></div>
				</div>
			</div>
			<div class="col-12 text-center my-3" id="sw-main-review-bob-pagination"></div>
		</div>
		<div class="col-12">
			<img src="/img/main-review-best-tit-img.png" class="my-5 mobile-hidden">
			<img src="/img/main-review-best-tit-img-m.png" class="mb-2 mobile-show mobile-75-percent">
		</div>
		<div class="col-12">
			<div class="swiper-container" id="sw-main-review-reply">
				<div class="swiper-wrapper">
					<div class="swiper-slide pr-1"><img src="/img/main-review-best-001.png" class="mobile-100-percent"></div>
					<div class="swiper-slide pr-1"><img src="/img/main-review-best-002.png" class="mobile-100-percent"></div>
					<div class="swiper-slide pr-1"><img src="/img/main-review-best-003.png" class="mobile-100-percent"></div>
					<div class="swiper-slide pr-1"><img src="/img/main-review-best-004.png" class="mobile-100-percent"></div>
					<div class="swiper-slide pr-1"><img src="/img/main-review-best-005.png" class="mobile-100-percent"></div>
					<div class="swiper-slide pr-1"><img src="/img/main-review-best-006.png" class="mobile-100-percent"></div>
					<div class="swiper-slide pr-1"><img src="/img/main-review-best-007.png" class="mobile-100-percent"></div>
				</div>
			</div>
			<div class="col-12 text-center my-3" id="sw-main-review-reply-pagination"></div>
		</div>
		<div class="col-12 text-center mt-5">
			<div class="swiper-container" id="sw-main-review-thumbnail">
				<div class="swiper-wrapper">
					<div class="swiper-slide"><img src="/img/review-1.png"></div>
					<div class="swiper-slide"><img src="/img/review-2.png"></div>
					<div class="swiper-slide"><img src="/img/review-3.png"></div>
					<div class="swiper-slide"><img src="/img/review-4.png"></div>
					<div class="swiper-slide"><img src="/img/review-5.png"></div>
					<div class="swiper-slide"><img src="/img/review-6.png"></div>
					<div class="swiper-slide"><img src="/img/review-7.png"></div>
					<div class="swiper-slide"><img src="/img/review-8.png"></div>
					<div class="swiper-slide"><img src="/img/review-9.png"></div>
					<div class="swiper-slide"><img src="/img/review-10.png"></div>
					<div class="swiper-slide"><img src="/img/review-11.png"></div>
					<div class="swiper-slide"><img src="/img/review-12.png"></div>
					<div class="swiper-slide"><img src="/img/review-13.png"></div>
					<div class="swiper-slide"><img src="/img/review-14.png"></div>
					<div class="swiper-slide"><img src="/img/review-15.png"></div>
					<div class="swiper-slide"><img src="/img/review-16.png"></div>
					<div class="swiper-slide"><img src="/img/review-17.png"></div>
					<div class="swiper-slide"><img src="/img/review-18.png"></div>
					<div class="swiper-slide"><img src="/img/review-19.png"></div>
					<div class="swiper-slide"><img src="/img/review-20.png"></div>
					<div class="swiper-slide"><img src="/img/review-21.png"></div>
					<div class="swiper-slide"><img src="/img/review-22.png"></div>
					<div class="swiper-slide"><img src="/img/review-23.png"></div>
					<div class="swiper-slide"><img src="/img/review-24.png"></div>
					<div class="swiper-slide"><img src="/img/review-25.png"></div>
					<div class="swiper-slide"><img src="/img/review-26.png"></div>
					<div class="swiper-slide"><img src="/img/review-27.png"></div>
					<div class="swiper-slide"><img src="/img/review-28.png"></div>
					<div class="swiper-slide"><img src="/img/review-29.png"></div>
					<div class="swiper-slide"><img src="/img/review-30.png"></div>
					<div class="swiper-slide"><img src="/img/review-31.png"></div>
					<div class="swiper-slide"><img src="/img/review-32.png"></div>
					<div class="swiper-slide"><img src="/img/review-33.png"></div>
					<div class="swiper-slide"><img src="/img/review-34.png"></div>
					<div class="swiper-slide"><img src="/img/review-35.png"></div>
					<div class="swiper-slide"><img src="/img/review-36.png"></div>
					<div class="swiper-slide"><img src="/img/review-37.png"></div>
					<div class="swiper-slide"><img src="/img/review-38.png"></div>
					<div class="swiper-slide"><img src="/img/review-39.png"></div>
					<div class="swiper-slide"><img src="/img/review-40.png"></div>
					<div class="swiper-slide"><img src="/img/review-41.png"></div>
					<div class="swiper-slide"><img src="/img/review-42.png"></div>
					<div class="swiper-slide"><img src="/img/review-43.png"></div>
					<div class="swiper-slide"><img src="/img/review-44.png"></div>
					<div class="swiper-slide"><img src="/img/review-45.png"></div>
					<div class="swiper-slide"><img src="/img/review-46.png"></div>
					<div class="swiper-slide"><img src="/img/review-47.png"></div>
					<div class="swiper-slide"><img src="/img/review-48.png"></div>
					<div class="swiper-slide"><img src="/img/review-49.png"></div>
					<div class="swiper-slide"><img src="/img/review-50.png"></div>
					<div class="swiper-slide"><img src="/img/review-51.png"></div>
					<div class="swiper-slide"><img src="/img/review-52.png"></div>
					<div class="swiper-slide"><img src="/img/review-53.png"></div>
					<div class="swiper-slide"><img src="/img/review-54.png"></div>
					<div class="swiper-slide"><img src="/img/review-55.png"></div>
					<div class="swiper-slide"><img src="/img/review-56.png"></div>
					<div class="swiper-slide"><img src="/img/review-57.png"></div>
					<div class="swiper-slide"><img src="/img/review-58.png"></div>
					<div class="swiper-slide"><img src="/img/review-59.png"></div>
					<div class="swiper-slide"><img src="/img/review-60.png"></div>
					<div class="swiper-slide"><img src="/img/review-61.png"></div>
					<div class="swiper-slide"><img src="/img/review-62.png"></div>
					<div class="swiper-slide"><img src="/img/review-63.png"></div>
					<div class="swiper-slide"><img src="/img/review-64.png"></div>
					<div class="swiper-slide"><img src="/img/review-65.png"></div>
					<div class="swiper-slide"><img src="/img/review-66.png"></div>
					<div class="swiper-slide"><img src="/img/review-67.png"></div>
					<div class="swiper-slide"><img src="/img/review-68.png"></div>
					<div class="swiper-slide"><img src="/img/review-69.png"></div>
					<div class="swiper-slide"><img src="/img/review-70.png"></div>
				</div>
			</div>
		</div>
	</div>
</div>




<div style="text-align: center;">
		<img src="/img/detail_200901_04mo.jpg" alt="" id="mobile-100-percent" class="mobile-show">
</div>
	 
<div style="text-align: center; ">
		<img src="/img/detail_200901_04.jpg" alt="" id="mobile-100-percent" class="mobile-hidden" style="width:100%;">
</div>






	<script>
if ($(window).width() > 768) {
	var mainReviewBestOfBest = new Swiper('#sw-main-review-bob', {
		slidesPerView : 2.25,
		pagination: { el: '#sw-main-review-bob-pagination', clickable: true, },
	});
	var mainReviewBestReply = new Swiper('#sw-main-review-reply', {
		slidesPerView : 2.35,
		pagination: { el: '#sw-main-review-reply-pagination', clickable: true, },
	});
	var mainReviewThumbnail = new Swiper('#sw-main-review-thumbnail', {
		slidesPerView : 11,
		//slidesPerColumn : 2,
		loopFillGroupWithBlank: true,
		loop: true,
		autoplay: { delay: 1000,  disableOnInteraction: false, },
	});
}else{
	var mainReviewBestOfBest = new Swiper('#sw-main-review-bob', {
		slidesPerView : 1.1,
		pagination: { el: '#sw-main-review-bob-pagination', clickable: true, },
	});
	var mainReviewBestReply = new Swiper('#sw-main-review-reply', {
		slidesPerView : 1.1,
		pagination: { el: '#sw-main-review-reply-pagination', clickable: true, },
	});
	var mainReviewThumbnail = new Swiper('#sw-main-review-thumbnail', {
		slidesPerView : 6,
		//slidesPerGroup: 2,
		loopFillGroupWithBlank: true,
		loop: true,
		autoplay: { delay: 1000,  disableOnInteraction: false, },
	});
}
</script>


	<!-- 하단링크 -->
	<%@ include file="../include/footlink.jsp"%>




<div class="container-fluid" id="page1">
	<div class="row sub2-row site-map-row mt-5 mb-4">
		<div class="col-12">
		  <div class="col-12 mb-1">
		    <h1>상담신청</h1>
		  </div>
		  <div class="col-12 py-2 line-2-black" style="width:200px; margin:0 auto;"></div>
		  <div class="col-12 font-20 my-3"></div>
		  <div class="col-12 py-2">크루팩토리의 높은 합격률은 지금까지 소수정원제 원칙으로 그룹과외 수업을 고집한 결과입니다.</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row sub2-row">
		<div class="col-12">
			<form role="form" name="specclass" method="post" action="/counsel/specclassok.do" data-toggle="validator">
			<input type="hidden" name="result" id="result" value="${ param.result }">
			<input type="hidden" name="phone" id="phone" value="">
			<input type="hidden" name="office" value="gangnam">
			<input type="hidden" name="stat" value="신규">
			<input type="hidden" name="gubun" value="특강신청">
			<input type="hidden" name="path" value="specclass.do">
			<input type="hidden" name="domain" value="<%= request.getServerName() %>">
			<input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
			<input type="hidden" name="reurl" value="/detail/new_detail03.do"/>
			<div class="col-12 my-3 line-1"></div>
			<div class="col-12">
				<div class="col-6 px-2 mobile-100-percent">
					<div class="my-2 font-bold font-18">개인정보입력</div>
						<div class="card col-12 bg-light-gray">
						<div class="card-body">
							<div class="form-group">
		                      <label for="name" class="font-bold">이름/나이</label>
		                      <div class="input-group">
		                      <input type="text" class="form-control" name="name" id="name" maxlength="20" onkeyup="onlyKorean('name')" placeholder="이름" data-error="이름을 정확히 입력하세요" required>
		                      <input type="number" class="form-control input-group-append ml-2" oninput="maxLengthCheck(this)" name="age" id="age" placeholder="나이" maxlength="2" data-error="나이를 정확히 입력하세요" required>
		                      </div>
		                      <div class="help-block with-errors text-danger"></div>
		                    </div>
					        <div class="form-group">
		                      <label for="input-gender" class="font-bold">연락처</label>
		                      <div class="input-group">
		                        <select class="form-control mr-2" id="mobile-1" name="mobile-1" style="height:3.75rem;">
		                          <option value="010">010</option>
		                        </select>
			                    <input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="mobile-2" id="mobile-2" maxlength="4" data-error="연락처를 정확히 입력하세요" required>
			                    <input type="number" class="form-control input-group-append" oninput="maxLengthCheck(this)" name="mobile-3" id="mobile-3" maxlength="4" data-error="연락처를 정확히 입력하세요" required>
			                  </div>
			                  <div class="help-block with-errors text-danger"></div>
			                </div>
			                <div class="mt-5">
		                    	<div class="custom-control custom-checkbox">
			                    	<input type="checkbox" name="agree" value="yes" id="agree" class="custom-control-input" checked>
			                        <label for="agree" class="custom-control-label">개인정보 이용방침에 동의합니다. <span class="mx-2"><a href="" data-toggle="modal" data-target="#personalInfo"><b>자세히보기</b></a></span></label>
			                	</div>
		                    </div>
						</div>
					</div>
				</div>
				<div class="col-6 px-2 mobile-100-percent">
					<div class="my-2 font-bold font-18">신청내용</div>
					<div class="col-12 card">
						<div class="card-body">
							<div class="form-group">
								<label for="memo" class="font-bold">선택항목</label>
								<div class="custom-control custom-checkbox font-16-review2">
									<input type="checkbox" name="hopse" value="항공운항과 대학입시" id="keoz" class="custom-control-input" checked>
									<label for="keoz" class="custom-control-label">항공운항과 대학입시</label>
								</div>
								<div class="custom-control custom-checkbox font-16-review2">
									<input type="checkbox" name="hopse" value="항공경영과 대학입시" id="ko" class="custom-control-input">
									<label for="ko" class="custom-control-label">항공경영과 대학입시</label>
								</div>
								<div class="custom-control custom-checkbox font-16-review2">
									<input type="checkbox" name="hopse" value="호텔경영과 대학입시" id="os" class="custom-control-input">
									<label for="os" class="custom-control-label">호텔경영과 대학입시</label>
								</div>
								
								
								<div class="help-block with-errors text-danger"></div>
							</div>
							<div class="form-group">
		               		<label for="memo" class="font-bold">신청내용</label>
		               		<textarea class="form-control" name="memo" id="memo" placeholder="궁금한사항을 적어주세요." rows="3" maxlength="300"></textarea>
		                  	<div class="help-block with-errors text-danger"></div>
		               </div>
               	</div>
               </div>
				</div>
				<div class="col-12 my-3">
				<button id="gogo" class="btn btn-primary btn-lg btn-block font-bold" style="height:3.75rem">상담신청</button>
				</div>
			</div>
			</form>
		</div>
	</div> 
</div>

<div class="containter-fluid mobile-hidden" style="margin-top:100px;"></div>

<script>

$(document).ready(function() {
 	$("#counsel").validator();	//폼발리데이터
});

$(document).ready(function() {
 	var data = $("#result").val();
 	if(data == "ok"){
 		alert("특강신청이 완료되었습니다.");
 		location.href="/detail/new_detail03.do";
 	}
});

$(document).on('click', '#gogo', function(){
	var mobile = $("#mobile-1").val() + $("#mobile-2").val() + $("#mobile-3").val();
	$("#phone").val(mobile);
	$("#specclass").submit();
});

function fnMove(seq) {
	var offset = $("#page" + seq).offset();
	$('html, body').animate({
		scrollTop : offset.top
	}, 400);
}

$(document).ready(function(){
	$('#blogpa').show();
	$('#blogre').hide();
});

function clickBlog(section){
	
	if (section == 'pa'){
		$('#blog-section-pa').addClass('activing');
		$('#blog-section-re').removeClass('activing');
		$('#blogpa').show();
		$('#blogre').hide();
	}
	else{
		filterClass = '.re';
		$('#blog-section-pa').removeClass('activing');
		$('#blog-section-re').addClass('activing');
		$('#blogpa').hide();
		$('#blogre').show();
	}
}

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

	<footer>
		<%@ include file="../include/footer.jsp"%>
	</footer>



	
	<script src="../dist/js/jquery.counterup.min.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
	<script src="../dist/js/bootstrap.min.js"></script>
	<script src="../dist/js/swiper.min.js"></script>
</body>
</html>