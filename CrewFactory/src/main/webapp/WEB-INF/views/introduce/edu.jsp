<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%=site_title%>-크루팩토리특별혜택</title>
<meta name="description" content="<%=site_descript%>" />
<meta property="og:title" content="<%=site_title%>">
<meta property="og:description" content="<%=site_descript%>">
<%@ include file="../include/header.jsp"%>


</head>
<body>
	<%@ include file="../include/nav.jsp"%>
	<%@ include file="../include/floating-left.jsp"%>

	<div class="container-fluid " style="background-color: #eef4f4; height: 43.35rem; ">
		<div class="row sub-row">
			<div class="col-12">
			<div class="col-6 py-5 px-3 mobile-100-percent">
				<div class="font-50-m my-3 font-bold">소수정예 개인과외식의</div>
				<div class="font-50-m my-3 font-bold">
					<span class="font-pink">높은수업만족도</span>를 자랑하는
				</div>
				<div class="font-50-m my-3 pb-2 font-bold">크루팩토리입니다.</div>
				<p class="font-16-m my-4">
					크루팩토리가 <b>합격률이 높은이유</b>는 가장 중요한 <span class="font-pink font-bold">원칙 3가지</span>를 고집하고 있습니다.
				</p>
				<div style="width: 600px;" id="mobile-100-percent">
					<div class="col-12 py-2">
						<div class="col-1">
							<label class="med-label font-14-m font-white bg-pink mr-2 text-center">1</label>
						</div>
						<div class="col-11 pt-1">
							<span class="font-14-m">국내항공사전문과정, 외국항공사전문과정으로 각기 다른 <b>맞춤교육</b>을 실시합니다.
							</span>
						</div>
					</div>
					<div class="col-12 py-1">
						<div class="col-1">
							<label class="med-label font-14-m font-white bg-pink mr-2">2</label>
						</div>
						<div class="col-11 pt-1">
							<span class="font-14-m">8명미만의 소수정예 또는 1:1과외식수업으로 <b>개인관리</b>가 철저하고 체계적입니다.
							</span>
						</div>
					</div>
					<div class="col-12 py-1">
						<div class="col-1">
							<label class="med-label font-14-m font-white bg-pink mr-2">3</label>
						</div>
						<div class="col-11 pt-1">
							<span class="font-14-m">10년이상의 항공업계 및 교육을 담당해온 <b>"5Star"</b>강사진으로 이루어져 있습니다.
							</span>
						</div>
					</div>
					<div class="col-12 py-3">
						<a href="/introduce/pro.do"><button class="btn btn-lg btn-primary mr-2" style="width: 150px;">전문강사진</button></a>
						<a href="/introduce/facil.do"><button class="btn btn-lg btn-primary" style="width: 150px;">교육시설</button></a>
					</div>
				</div>
			</div>
			<div class="col-6  px-3 mobile-100-percent">
			 <img src="/img/edu_main_img.png" class="mobile-hidden">
			</div>
		</div>
		</div>
	</div>

	<div class="container-fluid pb-3 bg-navy" >
		<div class="row cf-row">
			<div class="col-12 text-center" id="mobile-100-percent">
				<div class="col-6 text-center pt-3 py-5" id="mobile-100-percent">
					<div class="col-12 py-1"><img src="/img/intro-edu-01-0001.png" id="mobile-100-percent"></div>
				</div>
				
				<div class="col-6 py-5" id="mobile-100-percent" style="text-align:left;">
					<img src="/img/edu_title_01_01.png" id="mobile-100-percent">
					<p class="font-light font-16 font-white">강사의 능력과 자질도 중요하지만</p>
					<p class="font-light font-16 font-white">승무원면접교육은 한명 한명 <span class="font-pink font-bold">피드백</span>과  <span class="font-pink font-bold">개인별코칭</span>이 절대적으로 중요합니다.</p>
					<p class="font-light font-16 font-white">그래서 과외식으로 운영을 하지 않으면<span class="font-pink font-bold"> 나만의 면접전략</span>을 만들 수 없습니다.</p>
				</div>
			
		</div>
	</div>
</div>

	<div class="container-fluid pb-5" style="text-align: center;">
		<div class="row sub-row">
			<div class="col-12 my-5">
				<div class="py-5">
					<div class="col-12">
						<!-- label class="h-line font-14 bg-pink mr-2"></label -->
						 <img src="/img/edu_title_01.png" id="mobile-100-percent">
						 <img src="/img/edu_img_01.jpg" id="mobile-100-percent">
					</div>
					<div class="col-12 my-3">
						<p class="font-gray">
							기존의 승무원학원들은 10명이 넘는 수업인원으로 시간에 대비해서 소홀해 질 수 밖에 없는 커리큘럼으로 이루어져 있습니다. <br>그래서 크루팩토리의 모든 커리큘럼은 <span class="font-bold font-black">8명미만</span>의 클래스와 <span class="font-bold font-black">1:1과외</span>의 <span class="font-bold font-black">소수정예수업</span>으로만 이루어져 있습니다.
						</p>
					</div>
					<div class="col-12 pt-4">
						<img src="${myContextPath}/img/intro-edu-01-0002.png" id="mobile-100-percent">
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid py-5 bg-ivory text-center" style="height: 100%;  ">
		<div class="row sub-row" >
			<div class="col-12 my-3" >
				<img src="/img/edu_title_02.png" id="mobile-100-percent">
			</div>
			<div class="col-2"></div>
			<div class="col-8 my-3" id="mobile-100-percent" >
				<div class="swiper-container" id="spc-gallery-thumbs" >
					<div class="swiper-wrapper">
						<div class="swiper-slide text-center" id="">채용설명회</div>
						<div class="swiper-slide text-center" id="">자소서첨삭</div>
						<div class="swiper-slide text-center" id="">채용대비반</div>
						<div class="swiper-slide text-center" id="">전문가특강</div>
						<div class="swiper-slide text-center" id="">스터디</div>
						<div class="swiper-slide text-center" id="">합격자간담회</div>
					</div>
				</div>
			</div>
			<div class="col-2"></div>
			<div class="col-2"></div>
			<div class="col-8 bg-white border px-5 py-5" id="mobile-100-percent" >
				<div class="swiper-container" id="spc-gallery-top" >
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<div class="col-12 px-4">
								<p class="font-30 font-bold my-2 px-5 text-left"><img src="/img/number01.png" > 채용설명회</p>
								<p class="my-1 font-gray px-5 text-left">- 항공사채용시 설명회 별도진행</p>
								<p class="my-1 font-gray px-5 text-left">- 최신면접 트렌드 및 주안점 파악</p>
								<p class="my-1 font-gray px-5 text-left">- 바뀐 자기소개서항목, 서류작성요령 교육</p>
							</div>
							<div class="col-2"></div>
							<div class="col-12">
								<img src="/img/intro-edu-p-01-01.png" class="py-3" id="mobile-45-percent"> <img src="/img/intro-edu-p-01-02.png" class="py-3" id="mobile-45-percent">
							</div>
						</div>
						<div class="swiper-slide">
							<div class="col-12 px-4">
								<p class="font-30 font-bold my-2 px-5 text-left"><img src="/img/number02.png" > 자기소개서 첨삭</p>
								<p class="my-1 font-gray px-5 text-left">- 직장인,지방 거주자를 위한 'E-mail' 첨삭</p>
								<p class="my-1 font-gray px-5 text-left">- 항상 변경되는 항목을 위한 '공채 첨삭 Day'</p>
								<p class="my-1 font-gray px-5 text-left">- 해당항공사 원장님과 함께하는 '대면 첨삭'</p>
							</div>
							<div class="col-12">
								<img src="/img/intro-edu-p-02-01.png" class="py-3" id="mobile-45-percent"> <img src="/img/intro-edu-p-02-02.png" class="py-3" id="mobile-45-percent">
							</div>
						</div>
						<div class="swiper-slide">
							<div class="col-12 px-4">
								<p class="font-30  font-bold my-2 px-5 text-left"><img src="/img/number03.png" > 채용대비반</p>
								<p class="my-1 font-gray px-5 text-left">- 국내/국외 항공사별 채용대비반 형성</p>
								<p class="my-1 font-gray px-5 text-left">- 1차/2차/최종 절차별 별도 진행</p>
								<p class="my-1 font-gray px-5 text-left">- 절차별 주안점/모의면접</p>
							</div>
							<div class="col-12">
								<img src="/img/intro-edu-p-03-01.png" class="py-3" id="mobile-45-percent"> <img src="/img/intro-edu-p-03-02.png" class="py-3" id="mobile-45-percent">
							</div>
						</div>
						<div class="swiper-slide">
							<div class="col-12 px-4">
								<p class="font-30  font-bold my-2 px-5 text-left"><img src="/img/number04.png" > 별도특강</p>
								<p class="my-1 font-gray px-5 text-left">- 스피치/보이스트레이닝</p>
								<p class="my-1 font-gray px-5 text-left">- 헤어/메이크업/영어인터뷰</p>
								<p class="my-1 font-gray px-5 text-left">- 자기소개서 가이드라인</p>
							</div>
							<div class="col-12">
								<img src="/img/intro-edu-p-04-01.png" class="py-3" id="mobile-45-percent"> <img src="/img/intro-edu-p-04-02.png" class="py-3" id="mobile-45-percent">
							</div>
						</div>
						<div class="swiper-slide">
							<div class="col-12 px-4">
								<p class="font-30  font-bold my-2 px-5 text-left"><img src="/img/number05.png" > 스터디</p>
								<p class="my-1 font-gray px-5 text-left">- 학원 내 스터디룸 대여</p>
								<p class="my-1 font-gray px-5 text-left">- 한국어/영어인터뷰 스터디</p>
								<p class="my-1 font-gray px-5 text-left">- 항공사 채용정보</p>
							</div>
							<div class="col-12">
								<img src="/img/intro-edu-p-05-01.png" class="py-3" id="mobile-45-percent"> <img src="/img/intro-edu-p-05-02.png" class="py-3" id="mobile-45-percent">
							</div>
						</div>
						<div class="swiper-slide">
							<div class="col-12 px-4">
								<p class="font-30  font-bold my-2 px-5 text-left"><img src="/img/number06.png" > 합격자간담회</p>
								<p class="my-1 font-gray px-5 text-left">- 항공사별 합격자들의 이야기</p>
								<p class="my-1 font-gray px-5 text-left">- 준비방법 및 합격생 기본 스펙공유</p>
								<p class="my-1 font-gray px-5 text-left">- 동기부여 및 사기증진 충족</p>
							</div>
							<div class="col-12">
								<img src="/img/intro-edu-p-06-01.png" class="py-3" id="mobile-45-percent"> <img src="/img/intro-edu-p-06-02.png" class="py-3" id="mobile-45-percent">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid py-5 text-center" style="height: 100%;">
		<div class="row sub-row" >
			<div class="col-12 my-3" >
				<img src="/img/edu_title_03.png" id="mobile-100-percent">
			</div>
			<div class="col-2"></div>
			<div class="col-8 my-3" id="mobile-100-percent" >
				<div class="swiper-container text-center" id="spc-gallery-thumbs1" >
					<div class="swiper-wrapper">
						<div class="swiper-slide text-center" id="">토익점수 취득</div>
						<div class="swiper-slide text-center" id="">기내수화 자격증</div>
						<div class="swiper-slide text-center" id="">CPR(심폐소생술)자격증</div>
					</div>
				</div>
			</div>
			<div class="col-2"></div>
			<div class="col-2"></div>
			<div class="col-8 bg-white border px-5 py-5" id="mobile-100-percent" >
				<div class="swiper-container" id="spc-gallery-top1" >
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<div class="col-12 px-4">
								<p class="font-30 font-bold my-2 px-5 text-left"><img src="/img/number01.png" >토익 점수 취득</p>
								<p class="my-1 font-gray px-5 text-left"> 지원조건을 충족하기 위한</p>
								<p class="my-1 font-gray px-5 text-left"> 어학 자격취득</p>
							
							</div>
							<div class="col-2"></div>
							<div class="col-12">
								<img src="/img/intro-edu-s-01-01.png" class="py-3" id="mobile-45-percent"> <img src="/img/intro-edu-s-01-02.png" class="py-3" id="mobile-45-percent">
							</div>
						</div>
						<div class="swiper-slide">
							<div class="col-12 px-4">
								<p class="font-30 font-bold my-2 px-5 text-left"><img src="/img/number02.png" >기내수화 자격증</p>
								<p class="my-1 font-gray px-5 text-left"> 기내안에서의 비상상황, 안내등을 위한 </p>
								<p class="my-1 font-gray px-5 text-left"> 수화 수료증 취득</p>
								
							</div>
							<div class="col-12">
								<img src="/img/intro-edu-s-02-01.png" class="py-3" id="mobile-45-percent"> <img src="/img/intro-edu-s-03-02.png" class="py-3" id="mobile-45-percent">
							</div>
						</div>
						<div class="swiper-slide">
							<div class="col-12 px-4">
								<p class="font-30  font-bold my-2 px-5 text-left"><img src="/img/number03.png" >CPR(심폐소생술)자격증</p>
								<p class="my-1 font-gray px-5 text-left"> 기내안에서의 위급상황 대처를 위한</p>
								<p class="my-1 font-gray px-5 text-left"> CPR수료증 취득</p>
								
							</div>
							<div class="col-12">
								<img src="/img/intro-edu-s-03-01.png" class="py-3" id="mobile-45-percent"> <img src="/img/intro-edu-s-03-02.png" class="py-3" id="mobile-45-percent">
							</div>
						</div>
					</div>
				</div>
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

</body>
</html>