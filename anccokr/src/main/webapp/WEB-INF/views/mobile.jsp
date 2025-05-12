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

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

<script src="/vendor/vticker/jquery.vticker-min.js?v=1.14"></script>

<link href="/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="/vendor/swiper/css/swiper.css">
<script src="/vendor/swiper/js/swiper.js"></script>

<script src="/vendor/validator/validator.js"></script>

<script src="/js/cfw-common.js?version=20201027"></script>
<link href="/css/mobile-font.css" rel="stylesheet">
<link href="/css/mobile-style.css?version=20201027" rel="stylesheet">


</head>
<body>

<div class="m-container border-bottom">
	<div class="m-row">
		<div class="col-12 px-2 py-3">
			<div class="col-2"><img src="/imgm/nav-menu-img.png" id="flip" width="25px" class="ml-2"></div>
			<!--  <div class="col-1"><img src="/imgm/log_222.png" width="25px" class="ml-2"></div> -->
			
			<div class="col-7 text-center"><a href="/"><img src="/imgm/logo-m.png" width="160px"></a></div>
			<div class="col-2"><a href="tel:02-6959-1955"><img src="/imgm/call-img-8282.png" width="25px" class="ml-2"></a></div>
		</div>
	</div>
</div>
<div class="m-container" id="mobile-menu" style="height:100%; display:none;">
	<div class="m-row">
		<div class="col-12 px-2 py-3 border-bottom" style="background:#1b2e5f;">
			<div class="col-6 font-12 font-white">
				<ul>
					<li class="float-left pr-2"><a href="https://www.facebook.com/crewseoul" target="_blank"><img src="../img/sns-facebook-ico.png"></a></li>
					<li class="float-left px-2"><a href="https://www.instagram.com/crewfactory_fly/" target="_blank"><img src="../img/sns-instagram-ico.png"></a></li>
					<li class="float-left px-2"><a href="https://pf.kakao.com/_QWAEl" target="_blank"><img src="../img/sns-kakao-ico.png"></a></li>
					<li class="float-left px-2"><a href="https://map.naver.com/v5/entry/place/34589774?c=14140743.5947732,4510655.1054681,15,0,0,0,dh" target="_blank"><img src="../img/sns-naver-ico.png"></a></li>
				</ul>
			</div>
			<div class="col-6 pr-2 text-right font-14 font-white"><a href="tel:02-6959-1955">02-6959-1955</a></div>
		</div>
		<div class="col-12 px-3 py-3 border-bottom" style="background:#ededed;">
			<div class="col-5 font-14">
				<ul>
					<li class="font-bold py-2" onclick="showSubMenu('#introduce');">학원소개</li>
					<li class="font-bold py-2" onclick="showSubMenu('#education');">커리큘럼</li>
					<li class="font-bold py-2" onclick="showSubMenu('#lab');">취업자료</li>
					<li class="font-bold py-2" onclick="showSubMenu('#people');">크루피플</li>
					<li class="font-bold py-2" onclick="showSubMenu('#counsel');">상담센터</li>
				</ul>
				<div class="col-12 pt-2"><a href="/counsel/online.do?cost=y&imgchk="><button class="btn bg-navy font-12 font-white">수강료조회</button></a></div>
				<div class="col-12 pt-2"><a href="/introduce/map.do"><button class="btn bg-navy font-12 font-white">위치안내</button></a></div>
				<div class="col-12 pt-2"><a href="/introduce/map.do"><button class="btn bg-navy font-12 font-white">상담예약</button></a></div>
			</div>
			<div class="col-7 font-14">
				<ul class="col-12" id="introduce" style="display:none;">
					<li class="pt-2 pb-3 border-bottom font-bold">학원소개</li>
					<li class="pt-3 pb-2"><a href="/introduce/intro.do">교육이념</a></li>
					<li class="py-2"><a href="/introduce/edu.do?section=to&search=to">ANC승무원학원혜택</a></li>
					<li class="py-2"><a href="/introduce/pro.do">전문강사진소개</a></li>
					<li class="py-2"><a href="/introduce/facil.do">교육시설안내</a></li>
					<li class="py-2"><a href="/introduce/corw.do">제휴업체보기</a></li>
					<li class="py-2"><a href="/introduce/map.do">학원위치안내</a></li>
				</ul>
				<ul class="col-12" id="education" style="display:none;">
					<li class="pt-2 pb-3 border-bottom font-bold">커리큘럼</li>
					<li class="pt-3 pb-2"><a href="/education/ko.do">국내항공사교육</a></li>
					<li class="py-2"><a href="/education/os.do">외국항공사교육</a></li>
					<li class="py-2"><a href="/education/prvlesson.do">승무원과외</a></li>
					<li class="py-2"><a href="/education/steward.do">남자승무원</a></li>
					<li class="py-2"><a href="/counsel/specclass.do">항공운항과입시</a></li>
				</ul>
				<ul class="col-12" id="lab" style="display:none;">
					<li class="pt-2 pb-3 border-bottom font-bold">취업자료</li>
					<li class="pt-3 pb-2"><a href="/support/recruit.do?section=ko">항공사채용공고</a></li>
					<li class="py-2"><a href="/support/alko.do?section=ko&search=ke">국내항공사정보</a></li>
					<li class="py-2"><a href="/support/alos.do?section=os&search=em">외국항공사정보</a></li>
					<li class="py-2"><a href="/support/interview.do">항공과 대학합격후기</a></li>
				</ul>
				<ul class="col-12" id="people" style="display:none;">
					<li class="pt-2 pb-3 border-bottom font-bold">크루피플</li>
					<li class="pt-3 pb-2"><a href="/crewpeople/weare.do?section=blog">위아크루</a></li>
					<li class="py-2"><a href="/crewpeople/moment.do?section=moment">크루모먼트</a></li>
					<li class="py-2"><a href="/crewpeople/review.do?section=ko">합격생인터뷰</a></li>
					<li class="py-2"><a href="/crewpeople/reply.do">수강후기</a></li>
					<li class="py-2"><a href="/news/announce.do">공지사항</a></li>
					<li class="py-2"><a href="/news/press.do">언론보도자료</a></li>
				</ul>
				<ul class="col-12" id="counsel" style="display:none;">
					<li class="pt-2 pb-3 border-bottom font-bold">상담센터</li>
					<li class="pt-3 pb-2"><a href="/counsel/online.do">온라인상담신청</a></li>
					<li class="py-2"><a href="/counsel/online.do?cost=y&imgchk=">수강료조회</a></li>
					<li class="py-2"><a href="/counsel/online.do?cost=&imgchk=y">승무원이미지체크</a></li>
					<li class="py-2"><a href="https://plus.kakao.com/home/@크루팩토리">카톡상담</a></li>
					<li class="py-2"><a href="/counsel/specclass2.do">특강신청</a></li>
				</ul>
			</div>
		</div>
		<div class="col-12 px-2 py-2 border-bottom" style="background:#fff;">
			<ul>
				<li class="float-left px-2 bg-white font-12">강남캠퍼스</li>
				<li class="float-left border-left px-2 bg-white font-12">인천캠퍼스</li>
				<li class="float-left border-left px-2 bg-white font-12">항공운항과입시</li>
				<li class="float-left border-left px-2 bg-white font-12">지상직학원</li>
				<!-- <li class="float-left px-2 bg-white font-12">여행사취업</li> -->
			</ul>
		</div>
	</div>
</div>
<div class="m-container border-bottom">
	<div class="m-row">
		<div class="col-12 px-2 py-3 text-center">
			<ul class="col-12 text-center font-14">
				<li class="float-left font-bold px-2"><a href="/introduce/intro.do">학원소개</a></li>
				<li class="float-left font-bold px-2"><a href="/education/ko.do">커리큘럼</a></li>
				<li class="float-left font-bold px-2"><a href="/support/recruit.do?section=ko">취업자료</a></li>
				<li class="float-left font-bold px-2"><a href="/crewpeople/weare.do?section=blog">크루피플</a></li>
				<li class="float-left font-bold px-2"><a href="/counsel/online.do">상담센터</a></li>
			</ul>
		</div>
	</div>
</div>



<div class="m-container">
	<div class="m-row">
		<div class="col-12">
			<div class="swiper-container sw-main-visual">
				<div class="swiper-wrapper">
				
				
				
				
				
					
					<!-- 대한항공 6회 퍼펙트 과정 --><div class="swiper-slide"><a href="/counsel/specclass2.do"><img src="/imgm/221014_banner_mo.png" width="100%"></a></div>
					<!-- 대한항공 공채 설명회 --><div class="swiper-slide"><a href="/detail/detail08.do"><img src="/imgm/221018_d8_banner_mo.png" width="100%"></a></div>
					<!-- 외국항공사 정규회원 모집 --><div class="swiper-slide"><a href="/detail/detail07.do"><img src="/imgm/220908_d7_banner_mo.png" width="100%"></a></div>
					<!-- 대한항공 정규과정 --><div class="swiper-slide"><a href="/detail/open.do"><img src="/imgm/banner-img-001.png" width="100%"></a></div>
					<!-- 고1·고2 정규과정 / 고3 입시과정 --><div class="swiper-slide"><a href="/counsel/specclass.do"><img src="/imgm/banner-img-210629.png" width="100%"></a></div>
					<!-- 크루팩토리 유니버시티 --><div class="swiper-slide"><a href="/detail/detail10.do"><img src="/imgm/220406_d10_banner_mo.png" width="100%"></a></div>
					
					
					<!-- ANC - 싱가포르 스쿠트항공 최종합격 --><div class="swiper-slide"><a href="/counsel/online.do"><img src="/imgm/ANC_01_banner_mo.png" width="100%"></a></div>
					<!-- ANC - 걸프항공 최종합격 --><div class="swiper-slide"><a href="/counsel/online.do"><img src="/imgm/ANC_02_banner_mo.png" width="100%"></a></div>


					<!-- 대한항공 2022년 채용동향 --><div class="swiper-slide"><a href="/detail/detail01.do"><img src="/imgm/banner-img-003.png" width="100%"></a></div>						 
					<!-- 한국인 승무원 채용 외국항공사 --><div class="swiper-slide"><a href="/support/alos.do?section=os&search=em"><img src="/imgm/banner-img-210706.png" width="100%"></a></div>

					

					
					
					
				</div>				
			</div>
			<div class="swiper-pagination sw-main-visual-pagination mt-3 mx-2"></div>			
		</div>
	</div>
</div>

<div class="col-12" style="height:100px;"></div>
<div class="m-container">
	<div class="m-row">
		<div class="col-12 px-2 border-top border-bottom">
			<div class="col-3 py-3 float-left font-bold font-navy">개강일정</div>
			<div class="col-8 py-3 float-left">
				<div class="scheduler-container">
					<ul>
						
						
						
				
				
						<li>국내항공사 평일반<span class="mx-2">:</span>8월 8일</li>
						<li>외국항공사 평일반<span class="mx-2">:</span>8월 8일</li>
						<li>외국항공사 주말반<span class="mx-2">:</span>8월 13일</li>
						<li>국내항공사 주말반<span class="mx-2">:</span>8월 27일</li>
						<li>외국항공사 주말반<span class="mx-2">:</span>8월 27일</li>
					
					
					
					
					</ul>
				</div>
			</div>
			<div class="col-1 float-left font-bold px-2">
				<button class="col-12 px-2" id="scheduler-next"><img src="/imgm/ico-up-arrow.png" width="10px"></button>
				<button class="col-12 px-2" id="scheduler-prev"><img src="/imgm/ico-down-arrow.png" width="10px"></button>
			</div>
		</div>
	</div>
</div>
<div class="m-container">
	<div class="m-row">
		<div class="col-12 px-2 border-bottom">
			<div class="col-3 py-3 float-left font-bold font-navy">공지사항</div>
			<div class="col-8 py-3 float-left">
				<div class="announce-container">
					<ul>
						<c:forEach items="${announce}" var="announce"  varStatus="status">
							<li>
								<a href="/news/annview.do?idx=${announce.idx}">
								<c:choose>
										<c:when test="${fn:length(announce.title) gt 30 }">${fn:substring(announce.title, 0, 30)}...</c:when>
										<c:otherwise>${announce.title }</c:otherwise>
								</c:choose>
								</a>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="col-1 float-left font-bold pt-1 px-2">
				<button class="col-12 px-2" id="announce-next"><img src="/imgm/ico-up-arrow.png" width="10px"></button>
				<button class="col-12 px-2" id="announce-prev"><img src="/imgm/ico-down-arrow.png" width="10px"></button>
			</div>
		</div>
	</div>
</div>

<!-- <div class="m-container">
	<div class="m-row">
		<div class="col-12">
			<a href="/counsel/online.do"><img src="/imgm/mid-banner-004.png" width="100%"></a>
		</div>
	</div>
</div> -->

<div class="m-container py-5" style="background:url('/img/main-sign-txt-bg.jpg') no-repeat center;">
	<div class="m-row py-5">
		<div class="col-12 py-5 text-center">
			<img src="/img/main-sign-txt-n.png" width="100%">
		</div>
	</div>
</div>

<div class="m-container">
	<div class="m-row">
		<div class="col-12">
			<a href="/detail/detail08.do"><img src="/imgm/221017_mid_banner_mo.jpg" width="100%"></a>
		</div>
	</div>
</div>



<div class="m-container pt-5 bg-navy2">
	<div class="m-row">
		<div class="col-12 py-2 text-center">
			<img src="/imgm/review-img-title.png" width="100%">
		</div>
	</div>
</div>
<div class="m-container bg-navy2">
	<div class="m-row">
		<div class="col-12 text-center">
			<div class="text-center mb-2" style="width:50px; height:2px; background:#fff; margin:0 auto;"></div>
			<div class="text-center mb-4 font-white" id="ko-tit"><span class="font-blue">대한항공</span> 합격자인터뷰</div>
			<div class="text-center mb-4">
				<button class="radius-button bg-blue font-white font-12 mx-1" id="ke">대한항공</button>
				<button class="radius-button bg-navy font-white font-12 mx-1" id="oz">아시아나</button>
				<button class="radius-button bg-navy font-white font-12 mx-1" id="lcc">국내항공</button>
			</div>
			<div class="col-12 my-2">
				<div class="swiper-container sw-review-ko">
					<div class="swiper-wrapper"></div>
				</div>
				<div class="col-12 text-center my-3 sw-review-ko-pagination"></div>
			</div>
		</div>
	</div>
</div>

<div class="m-container bg-navy2" style="height:40px;"></div>

<div class="m-container bg-navy2 py-4">
	<div class="m-row">
		<div class="col-12 text-center">
			<div class="text-center mb-2" style="width:50px; height:2px; background:#fff; margin:0 auto;"></div>
			<div class="text-center mb-4 font-white" id="os-tit"><span class="font-blue">중동항공사</span> 합격자인터뷰</div>
			<div class="text-center mb-4">
				<button class="radius-button bg-blue font-white font-12 mx-1" id="ea">중동</button>
				<button class="radius-button bg-navy font-white font-12 mx-1" id="eu">유럽</button>
				<button class="radius-button bg-navy font-white font-12 mx-1" id="as">아시아</button>
			</div>
			<div class="swiper-container sw-review-os">
				<div class="swiper-wrapper"></div>
			</div>
			<div class="col-12 text-center my-3 sw-review-os-pagination"></div>
		</div>
	</div>
</div>

<div class="m-container bg-navy2" style="height:70px;"></div>

<div class="m-container py-4 bg-navy2">
	<div class="m-row">
		<div class="col-12 text-center">
			<div class="text-center mb-4 font-20 font-white"><b>합격생들이 전하는</b>&nbsp;리얼후기</div>
			<div class="swiper-container sw-review-best">
				<div class="swiper-wrapper">
					<div class="swiper-slide"><img src="/img/main-review-1.png" class="radius-div" width="100%"></div>
					<div class="swiper-slide"><img src="/img/main-review-2.png" class="radius-div" width="100%"></div>
					<div class="swiper-slide"><img src="/img/main-review-3.png" class="radius-div" width="100%"></div>
					<div class="swiper-slide"><img src="/img/main-review-4.png" class="radius-div" width="100%"></div>
					<div class="swiper-slide"><img src="/img/main-review-5.png" class="radius-div" width="100%"></div>
					<div class="swiper-slide"><img src="/img/main-review-6.png" class="radius-div" width="100%"></div>
				</div>
			</div>
			<div class="col-12 sw-review-best-pagination mt-3 px-2 text-center"></div>
		</div>
	</div>
</div>
<div class="m-container bg-navy2" style="height:60px;"></div>


<%@ include file = "mobile_subscribe.jsp" %>


<!-- 수강료 조회하기 
<div class="m-container">
	<div class="m-row">
		<div class="col-12">
			<a href="/counsel/online.do"><img src="/imgm/mid-banner-003.png" width="100%"></a>
		</div>
	</div>
</div>  -->

<div class="m-container col-12" style="height:60px;"></div>


<div class="m-container">
	<div class="m-row">
		<div class="col-12 text-center">
			<img src="/imgm/pro-title-img.png" width="100%">
		</div>
		<div class="col-12 swiper-container sw-pro-thumb-m border-bottom border-top" style="background:url('/img/pro-sign-bg.jpg') no-repeat left bottom;">
			<div class="swiper-wrapper">
				<c:forEach items="${professor}" var="pro" varStatus="status">
					<div class="swiper-slide">
						<div class="col-12" style="position:relative; height:220px;">
							<img src="${pro.thumbnail}" style="position:absolute; z-index:500; width:170px; bottom:0px; right:0px;">
							<div class="col-7 my-4 pt-3 ml-4 font-white" style="position:relative; z-index:600;">
								<p class="font-20 font-700" style="word-break:keep-all;">${pro.subject}</p>
								<p class="mt-3"><span class="font-500 font-blue">${pro.proname}</span><span class="ml-2 font-16">${pro.ranks }</span>
								<a href="/introduce/pro.do"><img src="/img/landing/btn-more.png" width="45px;" class="ml-4" style="margin-top:-3px;"></a></p>
								<div class="col-12 mt-3 font-14" style="font-weight:500; word-break:keep-all;">${pro.sentence}</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="col-12 swiper-container sw-pro-list-m my-3">
			<ul class="swiper-wrapper">
			<c:forEach items="${professor}" var="pro" varStatus="status">
				<li class="swiper-slide border">
					<div class="col-12 text-right" style="overflow:hidden; height:120px;" >
						<img src="${pro.thumbnail}" width="100px" style="margin-right:-10px;">
						<div class="col-8 text-left" style="position:absolute; top:30px; left:10px;">
							<p class="font-16 font-bold" style="color:#00285a;"><strong>${pro.proname}</strong></p>
							<p><span class="font-12">${pro.ranks}</span></p>
						</div>
					</div>
				</li>
			</c:forEach>
			</ul>			
		</div>
		<div class="col-12 text-center mt-3 pb-5"><a href="/introduce/pro.do"><button class="radius-button bg-navy font-white font-12 mx-1" id="oz">더보기</button></a></div>
	</div>
</div>


<div class="m-container" style="height:auto; background:url('/img/main-go3-banner-bg-m.jpg') no-repeat center;">
	<div class="m-row">
		<div class="col-12 text-center my-5 pt-2">
			<img src="/img/main-go3-banner-img-001-m.png" width="100%" style="max-width:500px;">
		</div>
		<div class="col-12 text-center">
			<div class="col-12 text-center">
				<span class="counter" style="font-size:50px; font-weight:900; color:#eaff0a;">2008</span>
				<img src="/img/main-go3-banner-img-003.png" style="margin:0 auto; width:100px; margin-top:-10px;"></div>
			</div>			
		<div class="col-12 text-center"><img src="/img/main-go3-banner-img-002.png" width="100%" style="max-width:400px;"></div>
		<div class="col-12 text-center mb-5">
			<a href="/counsel/specclass.do"><button class="radius-button bg-navy font-white font-12 mx-1">자세히보기</button></a>
		</div>
	</div>
</div>


<div class="m-container col-12" style="height:60px;"></div>


<div class="m-container">
	<div class="m-row">
		<div class="col-12">
			<div class="col-12 text-center">
				<img src="/imgm/curli-title-img.png" width="100%">
				<!-- <p class="mb-2">ANC승무원학원<b>커리큘럼</b></p>
				<p class="mb-4 font-20">원하는 항공사는 어디인가요?</p> -->
			</div>
			<div class="col-12 px-3 py-3 border-bottom border-top">
				<div class="col-4"><img src="/img/m/img-curri-ko.png" width="100%" style="max-width:230px;"></div>
				<div class="col-8 px-3">
					<div class="col-12 mt-2 py-1 font-12 font-gray">대한항공·아시아나항공 전문</div>
					<div class="col-12 mt-1 py-1 font-18 ">국내항공사 취업반 1:6</div>
					<a href="/education/ko.do"><button class="radius-button-sm bg-sky mt-3 float-right font-8">자세히</button></a>
				</div>
			</div>
			<div class="col-12" style="height:5px; background:#e6e5e5"></div>
			<div class="col-12 px-3 py-3 border-bottom border-top">
				<div class="col-4"><img src="/img/m/img-curri-os.png" width="100%" style="max-width:230px;"></div>
				<div class="col-8 px-3">
					<div class="col-12 mt-2 py-1 font-gray font-12">에미레이트·카타르항공 전문</div>
					<div class="col-12 mt-1 py-1 font-18">외국항공사 취업반 1:6</div>
					<a href="/education/os.do"><button class="radius-button-sm bg-sky mt-3 float-right font-8">자세히</button></a>
				</div>
			</div>
			<div class="col-12" style="height:5px; background:#e6e5e5"></div>
			<div class="col-12 px-3 py-3 border-top border-bottom">
				<div class="col-4"><img src="/img/m/img-curri-ipsi.png" width="100%" style="max-width:230px;"></div>
				<div class="col-8 px-3">
					<div class="col-12 mt-2 py-1 font-gray font-12">인하공전·한서대 전문 </div>
					<div class="col-12 mt-1 py-1 font-18">항공운항과 입시반</div>
					<a href="http://www.crewgo3.com/index.do"><button class="radius-button-sm bg-sky mt-3 float-right font-8">자세히</button></a>
				</div>
			</div>
			
			<div class="col-12" style="height:5px; background:#e6e5e5"></div>
			<div class="col-12 px-3 py-3 border-top border-bottom">
				<div class="col-4"><img src="/img/m/img-curri-std.png" width="100%" style="max-width:230px;"></div>
				<div class="col-8 px-3">
					<div class="col-12 mt-2 py-1 font-gray font-12">스튜어드 면접 전문</div>
					<div class="col-12 mt-1 py-1 font-18">남자승무원 취업반</div>
					<a href="/education/steward.do"><button class="radius-button-sm bg-sky mt-3 float-right font-8">자세히</button></a>
				</div>
			</div>
			<div class="col-12" style="height:5px; background:#e6e5e5"></div>
			<div class="col-12 px-3 py-3 border-top border-bottom">
				<div class="col-4"><img src="/img/m/img-curri-gs.png" width="100%" style="max-width:230px;"></div>
				<div class="col-8 px-3">
					<div class="col-12 mt-2 py-1 font-gray font-12">공항서비스·대졸공채 전문</div>
					<div class="col-12 mt-1 py-1 font-18">항공사 지상직 취업반</div>
					<a href="/detail/detail08.do"><button class="radius-button-sm bg-sky mt-3 float-right font-8">자세히</button></a>
				</div>
			</div>
			<div class="col-12" style="height:5px; background:#e6e5e5"></div>
			<div class="col-12 px-3 py-3 border-top border-bottom">
				<div class="col-4"><img src="/img/m/img-curri-prv.png" width="100%" style="max-width:230px;"></div>
				<div class="col-8 px-3">
					<div class="col-12 py-1 font-14 font-gray font-lh-16">전공자·스케줄근무자 전문</div>
					<div class="col-12 mt-1 py-1 font-18">퍼스널 과외 1:1</div>
					<a href="/education/prvlesson.do"><button class="radius-button-sm bg-sky mt-3 float-right font-8">자세히</button></a>
				</div>
			</div>						
		</div>
	</div>
</div>

<div class="m-container col-12" style="height:60px;"></div>

<div class="m-container">
	<div class="m-row">
		<div class="col-12">
			<div class="col-12 text-center">
				<img src="/imgm/moment-title-img.png" width="100%">
				<!-- <p class="mb-2"><b>크루모먼트</b></p>
				<p class="mb-4 font-20">오늘도 우리는 열공 중</p> -->
			</div>
			<div class="col-12 moment-container">
				<ul>
					<c:forEach items="${moment}" var="moment"  varStatus="status">
						<li class="px-1 py-1">
							<a href="/crewpeople/momentv.do?idx=${moment.idx}"><img src="${moment.thumbnail}" width="100%" class="radius-div"></a>
							<div class="font-14 my-2 px-2" style="height:35px;">
								<c:choose>
									<c:when test="${fn:length(moment.title) gt 28 }">${fn:substring(moment.title, 0, 28)}...</c:when>
									<c:otherwise>${moment.title }</c:otherwise>
								</c:choose>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="col-12 text-center pb-5 mt-5">
    		<a href="/crewpeople/moment.do"><button class="radius-button bg-navy font-white font-12 mx-1">더보기</button></a>
    	</div>		
	</div>
</div>

<div class="m-container col-12" style="height:10px;"></div>

<div class="m-container">
	<div class="m-row">
		<div class="col-12 pb-1 border-top" style="background-color:#272727;">
			<a href="/detail/open.do"><img src="/imgm/event-img-001.png" width="100%"></a>
		</div>
		<div class="col-12 pb-1" style="background-color:#272727;">
			<a href="/detail/detail06.do"><img src="/imgm/event-img-002.png" width="100%"></a>
		</div>
		<div class="col-12 border-bottom" style="background-color:#272727;">
			<a href="/detail/detail07.do"><img src="/imgm/event-img-003.png" width="100%"></a>
		</div>
		<div class="col-12 my-3">
			<div class="col-12 text-center"><strong>이달의 스케쥴</strong></div>
		</div>
		<div class="col-12 px-2">
			<div class="swiper-container sw-scheduler">
				<div class="swiper-wrapper">
					
					
					<div class="swiper-slide">
						<div class="col-12 border rad-div-10 px-3 py-3">
							<div class="col-4"><img src="/img/m/img-schedule-001.png"></div>
							<div class="col-8">
								<p class="py-1 font-12">7월 25일</p>
								<p class="py-1 font-16"><strong>대한항공 취업준비반</strong></p>
								<p class="py-1 font-12 font-gray">2022년 승무원 면접대비</p>
							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<div class="col-12 border rad-div-10 px-3 py-3">
							<div class="col-4"><img src="/img/m/img-schedule-009.png"></div>
							<div class="col-8">
								<p class="py-1 font-12">8월 8일</p>
								<p class="py-1 font-16"><strong>외국항공사 취업준비반</strong></p>
								<p class="py-1 font-12 font-gray">2022년 승무원 면접대비</p>							
							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<div class="col-12 border rad-div-10 px-3 py-3">
							<div class="col-4"><img src="/img/m/img-schedule-007.png"></div>
							<div class="col-8">
								<p class="py-1 font-12">8월 6일</p>
								<p class="py-1 font-16"><strong>CRS,DCS자격증</strong></p>
								<p class="py-1 font-12 font-gray">공항 예약,발권 자격증</p>
							</div>
						</div>
					</div>
					
					
				</div>
				<div class="mt-3 sw-scheduler-pagination text-center"></div>
			</div>
		</div>
	</div>
</div>

<div class="m-container" style="height:30px;"></div>


<div class="m-container">
	<div class="m-row">
		<div class="col-12">
			<a href="/education/prvlesson.do"><img src="/imgm/mid-banner-002.png" width="100%"></a>
		</div>
	</div>
</div>

<div class="m-container pt-5">
	<div class="m-row">
		<div class="col-12">
			<div class="col-12 mt-4 mb-3 text-center">
				<img src="/imgm/reply-title-img.png" width="100%">
			</div>
			<div class="col-12 bg-navy" style="height:2px;"></div>
			<div class="col-12 live-reply-container">
				<ul>
				<c:forEach items="${reply}" var="reply">
					<li class="col-12 border-bottom">
						<div class="col-12 py-3 px-2">
							<div class="col-12 pb-2 font-lightgray">
								<c:choose>
									<c:when test="${reply.section eq '인스타그램'}"><img src="/img/ico-instagram.png" width="20px"><span class="mx-2">인스타그램</span></c:when>
									<c:when test="${reply.section eq '페이스북'}"><img src="/img/ico-facebook.png" width="20px"><span class="mx-2">페이스북</span></c:when>
									<c:when test="${reply.section eq '지인추천'}"><img src="/img/ico-recommend.png" width="20px"><span class="mx-2">지인추천</span></c:when>
									<c:otherwise><img src="/img/ico-website.png" width="20px"><span class="mx-2">홈페이지방문</span></c:otherwise>
								</c:choose>								
								<span class="mx-2 font-blue">★★★★★</span></div>
							<div class="col-12 font-14 txt_post" style="line-height:20px;">
								<c:choose>
									<c:when test="${fn:length(reply.content) gt 100 }">${fn:substring(reply.content, 0, 100)}...</c:when>
									<c:otherwise>${reply.content }</c:otherwise>
								</c:choose>
							</div>
						</div>
					</li>
				</c:forEach>
				</ul>
			</div>
			<div class="col-12 bg-navy" style="height:2px;"></div>
		</div>
		 <div class="col-12 text-center pb-5 mt-4">
    		<a href="/crewpeople/reply.do"><button class="radius-button bg-navy font-white font-12 mx-1">더보기</button></a>
    	</div>		
	</div>
</div>


<div class="m-container border-top" style="height:20px;"></div>

<div class="m-container mt-5">
	<div class="m-row">
		<div class="col-12">
			<div class="col-12 text-center">
				<img src="/imgm/weare-title-img.png" width="100%">
				<!-- <p class="mb-2">ANC승무원학원 <b>We Are Crew</b></p>
				<p class="mb-4 font-20">슬기로운 크루생활</p> -->
			</div>
			
			<div class="col-12 my-3">
				<div class="col-12 px-2 py-3 bg-sky mb-2 border-top border-bottom">
					<div class="col-6 font-bold">외국항공사</div>
					<div class="col-6 text-right"><a href="/crewpeople/weare.do?section=blog"><button class="radius-button-sm bg-navy font-white font-10 mx-1">더보기</button></a></div>
				</div>
				<div class="col-12">
					<ul>		
						<c:forEach items="${blogos}" var="blogos">
							<li class="float-left px-1 py-2" style="width:50%;">
			            	<a href="/crewpeople/wearev.do?idx=${blogos.idx}&init=N&startPage=&visiblePages=&search=" class=""><img src="${blogos.thumbnail}" style="width:100%;" class="radius-div"></a>
			            	<div class="px-1 mt-2 font-12" style="height:40px;">
			            		<c:choose>
										<c:when test="${fn:length(blogos.title) gt 28 }">${fn:substring(blogos.title, 0, 28)}...</c:when>
										<c:otherwise>${blogos.title }</c:otherwise>
									</c:choose>
								</div>
			          	</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			
			<div class="col-12 my-3">
				<div class="col-12 px-2 py-3 bg-sky mb-2 border-top border-bottom">
					<div class="col-6 font-bold">국내항공사</div>
					<div class="col-6 text-right"><a href="/crewpeople/weare.do?section=blog"><button class="radius-button-sm bg-navy font-white font-10 mx-1">더보기</button></a></div>
				</div>
				<div class="col-12">
					<ul>		
						<c:forEach items="${blogko}" var="blogko">
							<li class="float-left px-1 py-2" style="width:50%;">
			            	<a href="/crewpeople/wearev.do?idx=${blogko.idx}&init=N&startPage=&visiblePages=&search=" class=""><img src="${blogko.thumbnail}" style="width:100%;" class="radius-div"></a>
			            	<div class="px-2 mt-2 font-12" style="height:40px;">
			            		<c:choose>
										<c:when test="${fn:length(blogko.title) gt 28 }">${fn:substring(blogko.title, 0, 28)}...</c:when>
										<c:otherwise>${blogko.title }</c:otherwise>
									</c:choose>
								</div>
			          	</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			
			
			
			
		</div>		
	</div>
</div>

<div class="m-container mt-5" style="background:url('/img/main-teacherbanner-bg-01.jpg') no-repeat center; background-size:170%;">
	<div class="m-row">
		<div class="col-12 text-center my-5 py-3">
			<img src="/img/main-teacherbanner-01-01.png" width="100%">
		</div>
	</div>
</div>

<div class="m-container py-5 bg-navy border-bottom">
	<div class="m-row text-center">
		<div class="col-6" style="border-right: 1px solid #474747">
			<p class="font-14 font-white px-2">전화상담</p>
			<p class="font-bold font-white font-16 py-1 pb-2 px-4 ">02-6959-1955</p>
			<p class="font-10 font-gray px-1">주말/공휴일에도 상담이 가능합니다</p>
			<a href="tel:02-6959-1955"><button class="btn btn-primary" style="width: 100px;margin-top:25px; font-size:12px;">전화걸기</button></a>
		</div>
		<div class="col-6" style="border-right: 1px solid #474747">
			<p class="font-14 font-white px-2">카톡상담</p>
			<p class="font-bold font-white font-16 py-1 pb-2 px-4 "><img src="../img/sns-kakao-ico-5.png">ANC승무원학원</p>
			<p class="font-10 font-gray px-1">카카오톡 상담 바로가기</p>
			<a href="https://pf.kakao.com/_QWAEl"><button class="btn btn-primary" style="width: 100px;margin-top:25px; font-size:12px;">친구추가</button></a>
		</div>
	</div>
</div>

<form role="form" name="quick_counsel" data-toggle="validator">
<input type="hidden" name="domain" value="<%= request.getServerName() %>">
<input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">

<div class="col-12 bg-hotpink2" id="bottomMenu" style="margin:0 auto; position:fixed; z-index:2039; bottom:0px; width:100%;">
	<div class="col-12" style="position:absolute; bottom:0px; width:100%;">
		<div class="col-12 my-3 pr-3 text-right float-right">
			<a href="tel:02-6959-1955"><img src="/imgm/phone-icon.png" width="100px"></a>
		</div>
		<div class="col-12 py-2 bg-hotpink2">
			<div class="col-12 px-2" id="openQuickCounsel">
				<div class="col-12 text-center font-white font-14 py-2" style="margin-top:0px;">빠른상담신청</div>
				<button id="closeQuickCounsel" style="position:absolute; display:none; right:10px; top:3px;">
					<img src="/imgm/nav-close-white-img.png" width="20px">
				</button>
			</div>
		</div>
		<div class="col-12" id="quickCounsel" style="display:none;">
			<div class="col-12 bg-white">
				<div class="col-12 px-2 border-bottom text-center">
					<p class="my-3 font-12">입력하신 전화번호는 상담목적이외의 어떠한 용도로도 사용되지 않습니다.</p>
				</div>
				<div class="col-12 px-3 py-2 border-bottom">
					<div class="col-2 py-2 font-12">이름</div>
					<div class="col-10">
						<div class="input-group">
							<input type="text" class="form-control font-12" name="quick_name" id="quick_name" placeholder="이름" onkeyup="onlyKorean('quick_name')" maxlength="10" data-error="이름을 정확히 입력하세요" required>
							<div class="help-block with-errors text-danger font-10"></div>
						</div>
					</div>
				</div>
				<div class="col-12 px-3 py-2 border-bottom">
					<div class="col-2 py-2 font-12">나이</div>
					<div class="col-10">
						<div class="input-group">
							<input type="number" class="form-control input-group-append font-12" name="quick_age" id="quick_age" data-error="나이를 정확히 입력하세요" oninput="maxLengthCheck(this)" maxlength="2" placeholder="나이" required style="width:200px;">
							<div class="help-block with-errors text-danger font-10"></div>
						</div>
					</div>
				</div>
				<div class="col-12 px-3 py-2">
					<div class="col-2 py-2 font-12">연락처</div>
					<div class="col-10">
						<div class="input-group">
							<select class="form-control mr-2 font-12" id="quick_mobile-1">
								<option value="010">010</option>
							</select>
							<input type="number" class="form-control input-group-append mr-2 font-12" id="quick_mobile-2" required oninput="maxLengthCheck(this)" maxlength="4" placeholder="앞번호" data-error="연락처를 정확히 입력하세요" >
							<input type="number" class="form-control input-group-append font-12" id="quick_mobile-3" required oninput="maxLengthCheck(this)" maxlength="4" placeholder="뒷번호" data-error="연락처를 정확히 입력하세요">
						</div>
						<div class="help-block with-errors text-danger font-10"></div>
					</div>
				</div>
				<div class="col-12 px-3 py-2 border-bottom">
					<div class="col-2 py-2 font-12">관심분야</div>
					<div class="col-10 font-12">
						<div class="input-group">
							<select class="form-control font-12" id="hopse">
								<option value="대한항공/아시아나항공">대한항공/아시아나항공</option>
								<option value="국내항공사">국내항공사</option>
								<option value="외국항공사">외국항공사</option>
								<option value="항공운항과대학입시">항공운항과대학입시</option>
								<option value="항공사지상직승무원">항공사지상직</option>							
							</select>
						</div>
					</div>
				</div>
				<div class="col-12 px-3 py-2 border-bottom">
					<div class=""></div>
					<div class="form-check">
						<input type="checkbox" name="quick_agree" value="yes" id="quick_agree" class="form-check-input" checked style="margin-top:7px;">
						<label class="form-check-label font-12" for="quick_agree">개인정보이용방침에 동의합니다.<span class="ml-3">이용약관보기</span></label>
					</div>
				</div>
				<div class="col-12 px-3 py-2"><button type="submit" class="col-12 btn btn-primary btn-block font-14" id="btnCounsel">상담신청하기</button></div>
			</div>
		</div>
	</div>
</div>

</form>







<script>

$("#openQuickCounsel").click(function() {
	if($('#quickCounsel').first().is( ":hidden" ) ){
		$("#bottomMenu").css({ height: "100%", background: "rgba(0, 0, 0, 0.8)" });
		$('#quickCounsel').slideDown( 300 );
		$("#closeQuickCounsel").show();
	}
	else{
		$("#bottomMenu").css({ height: "auto", background: "" });
		$('#quickCounsel').slideUp( 300 );
		$("#closeQuickCounsel").hide();
	}
});		

$(document).on('click', '#closeQuickCounsel', function(){
	$('#quickCounsel').slideUp( 300 );
	$("#closeQuickCounsel").hide();
});

$(document).on('click', '#btnCounsel', function(){
	var mobile = $("#quick_mobile-1").val() + $("#quick_mobile-2").val() + $("#quick_mobile-3").val();
	$("#quick_phone").val(mobile);
	
	if($("#quick_mobile-2").val() == '' || $("#quick_mobile-3").val() == '' || $('#quick_name').val() == '' || $('#quick_age').val() == ''){
		alert("성함과 연락처, 나이는 필수 입력항목입니다.");
		return false;
	}
	
	var obj = {
			"gubun" : "빠른상담",
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
	    	alert("상담신청이 완료되었습니다.");
			window.location.reload();
	    }
	});
	
});

</script>

<footer>
<%@ include file="include/mfooter.jsp"%>
</footer>

<script>
$(document).ready(function() {
	var mainVisualSwiper = new Swiper('.sw-main-visual', {
		speed: 1000,
		autoplay: {
			delay: 4000,
	        disableOnInteraction: false,
	      },
		loop: true,
		pagination: {
	        el: '.sw-main-visual-pagination',
	      },
	});
	
	
	var proListMobileSwiper = new Swiper('.sw-pro-list-m', {
		slidesPerView : 2.7,
		spaceBetween: 10,
		loop: true,
	});
	var proThumbMobileSwiper = new Swiper('.sw-pro-thumb-m', {
		slidesPerView : 1,
		thumbs: {
	        swiper: proListMobileSwiper
	      }
	});
	
	var go3BannerSwiper = new Swiper('.sw-go3-banner', {
		loop: true,
		slidesPerView: 1,
		/* autoplay: {
			delay: 3000,
	      disableOnInteraction: false,
	      }, */
		pagination: {
	        el: '.sw-go3-banner-pagination',
	      },
	});
	
	var crewMomentSwiper = new Swiper('.sw-crew-moment', {
		loop: true,
		slidesPerView: 1.2,
		spaceBetween: 10,
		/* autoplay: {
			delay: 3000,
	      disableOnInteraction: false,
	      }, */
		pagination: {
	        el: '.sw-crew-moment-pagination',
	      },
	});
	
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
	
	var blogKoSwiper = new Swiper('.sw-blog-ko', {
		loop: true,
		slidesPerView: 1.5,
		spaceBetween: 20,
		pagination: {
	        el: '.sw-blog-ko-pagination',
	      },
	});
	
	var blogOsSwiper = new Swiper('.sw-blog-os', {
		loop: true,
		slidesPerView: 1.5,
		spaceBetween: 20,
		pagination: {
	        el: '.sw-blog-os-pagination',
	      },
	});	
	
});

</script>
<script>	
	$(document).ready(function() {
		$("#flip").click(function() {
			if($('#mobile-menu').first().is( ":hidden" ) ){
				$('#mobile-menu').slideDown( 300 );
				$("#flip").attr("src", "/imgm/nav-close-img.png");
			}
			else{
				$('#mobile-menu').slideUp( 300 );
				$("#flip").attr("src", "/imgm/nav-menu-img.png");
			}
		});		
	});
	
	function initSubMenu(){
		$("#introduce").hide();
		$("#education").hide();
		$("#lab").hide();
		$("#people").hide();
		$("#counsel").hide();
	}
	
	function showSubMenu(arg){
		initSubMenu();
		$(arg).show();
	}
	
	
</script>

<script>

var appendNumber = 600;
var prependNumber = 1;


var reviewKoSwiper = new Swiper('.sw-review-ko', {
	spaceBetween: 5,
	slidesPerView: 1.1,
	speed: 1000,
	autoplay: {
		delay: 4000,
        disableOnInteraction: false,
      }, 
	//loop: true,
	centeredSlides: true,
	pagination: {
		el: '.sw-review-ko-pagination', clickable: true,
	},
	virtual: {
		slides: (function () {
		var slides = [];
		var gubun = "ke";
		var idx = [543, 544, 484, 482, 527, 526, 525, 524, 545, 546, 548, 547];
      for (var i = 0; i < 12; i += 1) {
    	  if(i < 4){ gubun = "ke"; }else if(i >= 4 && i < 8){	gubun = "oz"; }else{	gubun = "lcc"; }
    	  slides.push('<a href="/crewpeople/review.do?&section=ko&gubun=' + gubun + '"><img src="/img/main-review-ko-' + (i+1) + '.png" width="100%"></a>');
		}
      return slides;
		}()),
	},
});

var reviewOsSwiper = new Swiper('.sw-review-os', {
	slidesPerView: 1.1,
	spaceBetween: 5,
	speed: 1000,
	//loop: true,
	centeredSlides: true,
	autoplay: {
		delay: 4000,
        disableOnInteraction: false,
      },
	pagination: {
		el: '.sw-review-os-pagination', clickable: true,
	},
	virtual: {
		slides: (function () {
		var slides = [];
		var gubun2 = "ea";
		var idx = [69, 21, 60, 539, 78, 27, 28, 79, 66, 65, 61, 59];
      for (var i = 0; i < 20; i += 1) {
			if(i <= 4){ gubun2 = "ea"; }else if(i > 4 && i <= 8){	gubun2 = "eu"; }else{ gubun2 = "as"; }
			slides.push('<a href="/crewpeople/review.do?&section=os&gubun=' + gubun2 + '"><img src="/img/main-review-os-' + i + '.png" width="100%"></a>');
		}
      return slides;
		}()),
	},
});

var reviewBestSwiper = new Swiper('.sw-review-best', {
	slidesPerView: 1.1,
	spaceBetween: 5,
	loop: true,
	centeredSlides: true,
	pagination: {
		el: '.sw-review-best-pagination', clickable: true,
	},
});

document.querySelector('#ke').addEventListener('click', function (e) {
	e.preventDefault();
	$("#oz").removeClass("bg-blue");
	$("#lcc").removeClass("bg-blue");
	$("#ke").removeClass("bg-blue");
	$("#oz").addClass("bg-navy");
	$("#lcc").addClass("bg-navy");
	$("#ke").addClass("bg-blue");
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
	reviewOsSwiper.slideTo(4, 0);
});
document.querySelector('#as').addEventListener('click', function (e) {
	e.preventDefault();
	$("#ea").removeClass("btn-sky");
	$("#eu").removeClass("btn-sky");
	$("#as").addClass("btn-sky");
	$("#os-tit").attr("src", "/img/main-review-as-tit.png");
	reviewOsSwiper.slideTo(8, 0);
});

</script>

<script>
	$(".scheduler-container").vTicker({showItems: 1, pause: 4000});
	
	$("#scheduler-next").click(function(){
		$('.scheduler-container').vTicker('next', {animate:true});
	});
	
	$("#scheduler-prev").click(function(){
		$('.scheduler-container').vTicker('prev', {animate:true});
	});
	
	$(".announce-container").vTicker({showItems: 1, pause: 4000});
	
	$("#announce-next").click(function(){
		$('.announce-container').vTicker('next', {animate:true});
	});
	
	$("#announce-prev").click(function(){
		$('.announce-container').vTicker('prev', {animate:true});
	});
	
	
	$(".live-reply-container").vTicker({showItems: 4, pause: 2500});
	
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
<script>
	$('.counter').counterUp({ delay: 10,	time: 2500, });
</script>
</body>
</html>