<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>

</style>

<script>
	$(document).ready(function() {
		$("#gnb-menu").hover(function() {
			$("#snb-menu-pc").stop().slideDown(200);
		}, function() {
			$("#snb-menu-pc").stop().slideUp(200);
		});
		$("#snb-menu-pc").hover(function() {
			$("#snb-menu-pc").stop().slideDown(200);
		}, function() {
			$("#snb-menu-pc").stop().slideUp(200);
		});
	});

	//$(document).ready( function() {
	//	var navOffset = $('#navi').offset();
	//	$(window).scroll( function() {
	//		if ($(document).scrollTop() > navOffset.top) {
	//	    	$('#navi').addClass('active');
	//	    }else{
	//	    	$('#navi').removeClass('active');
	//	    }
	//	});
	//});

	function body_zoomin() {
		zoomx = zoomx + 10;
		$("body").css("zoom", zoomx + "%");
	}
	function body_zoomout() {
		zoomx = zoomx - 10;
		$("body").css("zoom", zoomx + "%");
	}
	function body_zoomdef() {
		zoomx = 100;
		$("body").css("zoom", zoomx + "%");
	}
	function newWin(url, w, h) {
		window.open(url, 'new_win', 'width=' + w + ',height=' + h
				+ ',toolbars=no,menubars=no,scrollbars=auto');
	}
</script>

<!-- <div class="container-fluid bg-yellow top-banner" id="containter-body">
	<div class="row main-row bg-yellow">
		<div class="col-12 text-center" id="top-banner-img-cont">
			<div class="col-12" id="mobile-100-percent">
				<a href="" data-toggle="modal" data-target="#coronaModal"><img src="/img/corona_top_banner_01.png" alt="코로나배너" class="mobile-100-percent"></a>
			</div>
			
			<div class="top-banner-btn-x">
				<a href="javascript:hideTopBanner();"><img src="/img/corona_top_banner_03.png"></a>
			</div>
		</div>
	</div>
</div> -->

<script>
	function hideTopBanner(){
		$(".top-banner").hide();
	}
</script>

<!-- Common Top Menu Start -->
<header id="head">
	<div class="head-row">
		<div class="col-6 align-middle">
			<div class="logo" style="padding-top: 10px;">
				<a href="/"><img src="/img/logo.png"></a>
				<h1 class="hide">ANC승무원학원</h1>
			</div>
		</div>
		<div class="col-6 text-right">
			<div class="campus py-2 line-1-gray">
				<ul>
					<li><a href="/">강남캠퍼스</a></li>
					<li><a href="http://www.crewfa.com/" target="_blank">인천캠퍼스</a></li>
					<li><a href="http://www.crewgo3.com/" target="_blank">항공운항과</a></li>
					<li><a href="http://www.crew-gs.com/" target="_blank">지상직승무원</a></li>
					<li><a href="http://www.factoryop.com/" target="_blank">여행사취업</a></li>
				</ul>
			</div>
			<div class="outlink py-2">
				<ul>
					<li style="width: 320px;">
						<div class="col-4">
							<label class="sm-label font-10">개강일정</label>
						</div>
						<div class="col-8 text-left pl-3 pt-1 off-hide" style="height:30px;">
							<div class="swiper-container sw-open-class">
								<div class="swiper-wrapper">
								    								    
								    
								    									
									<div class="swiper-slide font-14" style="height:30px;"><span class="font-pink">대한항공</span>&nbsp;&nbsp;평일반&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<b>10월 21일</b></div>
									<div class="swiper-slide font-14" style="height:30px;"><span class="font-pink">국내항공사</span>&nbsp;&nbsp;평일반&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<b>10월 31일</b></div>
									<div class="swiper-slide font-14" style="height:30px;"><span class="font-pink">외국항공사</span>&nbsp;&nbsp;평일반&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<b>11월 7일</b></div>
									<div class="swiper-slide font-14" style="height:30px;"><span class="font-pink">국내항공사</span>&nbsp;&nbsp;주말반&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<b>11월 12일</b></div>
									<div class="swiper-slide font-14" style="height:30px;"><span class="font-pink">외국항공사</span>&nbsp;&nbsp;주말반&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<b>11월 12일</b></div>
									
									
								
								</div>
							</div>
						</div>
					</li>
					<li class="font-14 font-bold pt-1">
					<c:choose>
						<c:when test="${!empty sessionScope.crewfactoryMemberInfo}"><a href="/member/logout.do">로그아웃</a></c:when>
						<c:otherwise><a href="/member/login.do">로그인</a></c:otherwise>
					</c:choose>
					</li>
					<li><a href="https://www.facebook.com/profile.php?id=100086720356761" target="_blank"><img src="../img/sns-facebook-ico-bl.png"></a></li>
					<li><a href="https://www.instagram.com/ancrewfactory_fly" target="_blank"><img src="../img/sns-instagram-ico-bl.png"></a></li>
					<li><a href="https://pf.kakao.com/_zzjKxj" target="_blank"><img src="../img/sns-kakao-ico-bl.png"></a></li>
					<li><a href="https://map.naver.com/v5/entry/place/34589774?c=14140743.5947732,4510655.1054681,15,0,0,0,dh" target="_blank"><img src="../img/sns-naver-ico-bl.png"></a></li>
				</ul>
			</div>
		</div>
	</div>
</header>

<script>
    var openClassSwiper = new Swiper('.sw-open-class', {
      direction: 'vertical',
      speed : 200, 
      loop: true,
		autoplay: { delay : 2000 }
    });
</script>

<nav class="container-fluid line-1-gray mobile-hidden">
	<div class="row sub-row">
		<ul class="col-12 gnb-menu" id="gnb-menu" style="height:45px;">
			<li class="font-16"><a href="/introduce/intro.do" class=""><b>ANC승무원학원 소개</b></a></li>
			<li class="font-16"><a href="/education/ko.do" class=""><b>교육과정안내</b></a></li>
			<li class="font-16"><a href="/support/recruit.do?section=ko" class=""><b>취업연구실</b></a></li>
			<li class="font-16"><a href="/crewpeople/weare.do" class=""><b>크루피플</b></a><label class="ml-2 hot-dot"></label></li>
			<li class="font-16"><a href="/news/announce.do" class=""><b>새소식</b></a><label class="ml-2 hot-dot"></label></li>
			<li class="font-16"><a href="/counsel/online.do" class=""><b>상담센터</b></a></li>
		</ul>
	</div>
</nav>

<section id="snb-menu-pc" style="width:100%; display:none;">
	<div class="container-fluid line-1-gray bg-white">
		<div class="row sub-row">
			<div class="col-12" id="snb-wrap">
				<ul class="ml-4">
					<li class="my-3">
						<h2 class="mb-2 font-18 font-bold hide">ANC 소개</h2>
						<ul class="font-15 font-black">
							<li class="pb-2"><a href="/introduce/intro.do">교육이념</a></li>
							<li class="pb-2"><a href="/introduce/edu.do?section=to&search=to">ANC승무원학원의<br>특별혜택
							</a></li>
							<!-- li class="pb-2"><a href="/introduce/wis.do">크루팩토리가<br>특별한이유</a></li-->
							<li class="pb-2"><a href="/introduce/pro.do">전문강사진소개</a></li>
							<li class="pb-2"><a href="/introduce/facil.do">교육시설안내</a></li>
							<li class="pb-2"><a href="/introduce/corw.do">제휴업체보기</a></li>
							<li class="pb-2"><a href="/introduce/map.do">학원위치조회</a></li>
						</ul>
					</li>
					<li class="my-3">
						<h2 class="mb-2 font-18 font-bold hide">교육과정안내</h2>
						<ul class="font-15 font-black">
							<!--  <li class="pb-2"><a href="/education/keoz.do">대한항공/아시아나<br>항공취업전문</a></li>-->
							<li class="pb-2"><a href="/education/ko.do">국내항공사과정</a></li>
							<!-- <li class="pb-2"><a href="/education/os-me.do">중동항공사취업전문</a></li>-->
							<li class="pb-2"><a href="/education/os.do">외국항공사과정</a></li>
							<li class="pb-2"><a href="/education/prvlesson.do">승무원과외과정</a></li>
							<li class="pb-2"><a href="/education/steward.do">남자승무원-스튜어드</a></li>
							<li class="pb-2"><a href="/counsel/specclass.do">항공운항과 입시과정</a></li>
							<!-- <li class="pb-2"><a href="/education/univ.do">항공운항과대학입시</a></li> -->
							<!-- <li class="pb-2"><a href="/education/ground.do">항공사지상직승무원</a></li> -->
							<!-- <li class="pb-2"><a href="/education/op.do">여행사/관광통역사</a></li> -->
						</ul>
					</li>
					<li class="my-3">
						<h2 class="mb-2 font-18 font-bold hide">취업지원실</h2>
						<ul class="font-15 font-black">
							<!-- li><a href="/recruit/info.do">취업전략</a></li-->
							<li class="pb-2"><a href="/support/recruit.do?section=ko">항공사채용공고</a></li>
							<li class="pb-2"><a href="/support/alko.do?section=ko&search=ke">국내항공사정보</a></li>
							<li class="pb-2"><a href="/support/alos.do?section=os&search=em">외국항공사정보</a></li>
							<li class="pb-2"><a href="/support/interview.do">항공과 대학합격후기 </a></li>
							<!-- li class="pb-2"><a href="/support/various.do">항공사최신뉴스</a></li-->
						</ul>
					</li>
					<li class="my-3">
						<h2 class="mb-2 font-18 font-bold hide">크루피플</h2>
						<ul class="font-15 font-black">
							<li class="pb-2 font-bold"><a href="/crewpeople/weare.do?section=blog">위아크루</a>
								<div class="font-12 font-gray font-normal" style="width: 120px;">면접합격TIP</div></li>
							<!-- li class="pb-2 font-bold"><a href="/crewpeople/wave.do">크루웨이브</a><div class="font-12 font-gray font-normal" style="width:120px;">수업영상/항공사 실제영상</div></li-->
							<li class="pb-2 font-bold"><a href="/crewpeople/moment.do?section=moment">크루모먼트</a>
								<div class="font-12 font-gray font-normal" style="width: 120px;">실제수업모습</div></li>
							<li class="pb-2 font-bold"><a href="/crewpeople/review.do?section=ko">합격생인터뷰</a></li>
							<li class="pb-2 font-bold"><a href="/crewpeople/reply.do">수강후기</a></li>
						</ul>
					</li>
					<li class="my-3">
						<h2 class="mb-2 font-18 font-bold hide">새소식</h2>
						<ul class="font-15 font-black">
							<li class="pb-2"><a href="/news/announce.do">공지사항</a></li>
							<li class="pb-2"><a href="/news/press.do">언론보도자료</a></li>
							<!-- li class="pb-2"><a href="/news/event.do?section=special">특강정보</a></li-->
							<!-- li class="pb-2"><a href="/news/lectrue.do">특강정보</a></li -->
						</ul>
					</li>
					<li class="my-3">
						<h2 class="mb-2 font-18 font-bold hide">상담센터</h2>
						<ul class="font-15 font-black">
							<!-- li class="pb-2"><a href="/counsel/faq.do?search=&section=">지주묻는질문</a></li-->
							<li class="pb-2"><a href="/counsel/online.do">온라인상담신청</a></li>
							<li class="pb-2"><a href="/counsel/online.do?cost=y&imgchk=">수강료상담</a></li>
							<li class="pb-2"><a href="/counsel/online.do?cost=&imgchk=y">승무원이미지체크</a></li>
							<li class="pb-2"><a href="https://plus.kakao.com/home/@크루팩토리">카톡상담</a></li>
							<li class="pb-2"><a href="/counsel/specclass2.do">특강신청</a></li>							
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container-fluid bg-ivory line-1-gray">
		<div class="row sub-row">
			<div class="col-12">
				<ul>
					<li class="float-left" style="padding-left: 1px; background-color: #e3e3e3;"><img src="/img/top-quick-btn-phone.png"></li>
					<li class="float-left" style="padding-left: 1px; background-color: #e3e3e3;"><a href="/counsel/online.do?cost=&imgchk=y"><img src="/img/top-quick-btn-imgchk.png"></a></li>
					<li class="float-left" style="padding-left: 1px; background-color: #e3e3e3;"><a href="/counsel/online.do?cost=y&imgchk="><img src="/img/top-quick-btn-fee.png"></a></li>
					<li class="float-left" style="padding-left: 1px; background-color: #e3e3e3;"><a href="/introduce/map.do"><img src="/img/top-quick-btn-map.png"></a></li>
					<li class="float-left" style="padding-left: 1px; background-color: #e3e3e3;"><a href="/counsel/online.do"><img src="/img/top-quick-btn-counsel.png"></a></li>
					<li class="float-left" style="padding-left: 1px; background-color: #e3e3e3; padding-right: 1px;"><a href="https://plus.kakao.com/home/@크루팩토리"><img src="/img/top-quick-btn-kko.png"></a></li>
				</ul>
			</div>
		</div>
	</div>
</section>



<div class="container border-bottom mobile-show">
	<div class="row">
		<div class="col-12 px-2 py-3">
			<div class="col-2"><img src="/imgm/nav-menu-img.png" id="flip" width="25px" class="ml-2"></div>
			<div class="col-8 text-center"><a href="/"><img src="/imgm/logo-m.png" width="160px"></a></div>
			<div class="col-2"><a href="tel:02-6959-1955"><img src="/imgm/call-img-8282.png" width="25px" class="ml-2"></a></div>
		</div>
	</div>
</div>
<div class="container mobile-show" id="mobile-menu" style="height:100%; display:none;">
	<div class="row">
		<div class="col-12 px-2 py-3 border-bottom" style="background:#1b2e5f;">
			<div class="col-6 font-12 font-white">
				<ul>
					<li class="float-left pr-2"><a href="https://www.facebook.com/profile.php?id=100086720356761" target="_blank"><img src="../img/sns-facebook-ico.png"></a></li>
					<li class="float-left px-2"><a href="https://www.instagram.com/ancrewfactory_fly/" target="_blank"><img src="../img/sns-instagram-ico.png"></a></li>
					<li class="float-left px-2"><a href="https://pf.kakao.com/_zzjKxj" target="_blank"><img src="../img/sns-kakao-ico.png"></a></li>
					<li class="float-left px-2"><a href="https://map.naver.com/v5/entry/place/34589774?c=14139407.9783763,4510985.7445218,15,0,0,0,dh" target="_blank"><img src="../img/sns-naver-ico.png"></a></li>
				</ul>
			</div>
			<div class="col-6 pr-2 text-right font-14 font-white"><a href="tel:02-6959-1955"><span class="font-white">02-6959-1955</span></a></div>
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
					<li class="py-2"><a href="/introduce/edu.do?section=to&search=to">ANC의 혜택</a></li>
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
					<li class="py-2"><a href="/support/interview.do">항공사면접정보</a></li>
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
<div class="container border-bottom mobile-show">
	<div class="row">
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
