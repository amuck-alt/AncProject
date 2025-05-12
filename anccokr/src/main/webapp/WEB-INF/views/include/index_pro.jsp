<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style>
.swiper-slide-pro {
	height: calc(( 100% - 0px)/2); @media only screen and (max-width: 768px) { .swiper-slide-pro {
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
}
</style>

<!-- 강사메인 PC -->
<div class="container-fluid" id="containter-body">
	<div class="row cf-row">
		<div class="col-12 text-center py-5">
			<img src="img/main-sign-txt-7.png" class="mobile-75-percent">
		</div>
		<div class="main-pro3-row bg-navy" id="mobile-100-percent">
			<a href="/introduce/pro.do"> <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop" width="1080px;" style="margin: 0 auto;">
					<source src="/img/2020-introduce-professor.mov" type="video/mp4">
				</video>
			</a>
		</div>
		<div class="col-12 py-5 mb-5">
			<div class="swiper-container" id="main-office-front" style="height: 100%; max-height: 620px;">
				<div class="swiper-wrapper">
					<div class="swiper-slide swiper-slide-pro px-1">
					<div>
						<a href="javascript:viewModal('/img/pro-img-d-k-002.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-2020-001.png" class="main-pro-mobile">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-ke.png" class="py-1 mobile-100-percent" style="width: 40%">
									<p class="mx-2 font-22-m">
										15년 비행경력<br>객실승무원 부사무장
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">홍은지</span><span class="mx-2 font-gray">원장</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#유형별성공전략</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#이미지메이킹</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#서비스매너</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
						<div class="col-12 py-1"></div>
						<div class="">
						<a href="javascript:viewModal('/img/pro-img-d-u-001.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-os-2020-001.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-klm.png" class="py-1 mobile-100-percent" style="width: 30%"> <img src="/img/pro-img-2020-qat.png" class="py-1 mobile-100-percent" style="width: 30%"> <img src="/img/pro-img-2020-bn.png" class="py-1 mobile-100-percent" style="width: 30%">
									<p class="mx-2 font-22-m">
										3개부분 외항사<br>객실승무원
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">이혜림</span><span class="mx-2 font-gray">부원장</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#심층면접전략</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#면접성공전략</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#영어인터뷰</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
					</div>
					<div class="swiper-slide swiper-slide-pro px-1">
					<div>
						<a href="javascript:viewModal('/img/pro-img-d-k-001.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-2020-002.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-as.png" class="py-1 mobile-100-percent" style="width: 50%">
									<p class="mx-2 font-22-m">
										12년 비행경력<br>객실승무원 부사무장
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">성은주</span><span class="mx-2 font-gray">부원장</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#이론실기교육</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#스토리텔링</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#이미지컨설팅</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						
						
						</div>
						<div class="col-12 py-1"></div>
						<div>
						<a href="javascript:viewModal('/img/pro-img-d-u-002.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-os-2020-002.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-cs.png" class="py-1 mobile-100-percent" style="width: 60%">
									<p class="mx-2 font-22-m">
										외항사 16년 인터뷰<br>12개 면접관출신
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">최성희</span><span class="mx-2 font-gray">원장</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#실전모의면접</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#외항사패키지</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#차별화된강점</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
					</div>
					<div class="swiper-slide swiper-slide-pro px-1">
					<div>
						<a href="javascript:viewModal('/img/pro-img-d-k-004.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-2020-004.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-as.png" class="py-1 mobile-100-percent" style="width: 50%">
									<p class="mx-2 font-22-m">
										7년 비행경력<br>객실승무원 사장 표창

									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">이하정</span><span class="mx-2 font-gray">부원장</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#준비된 자기소개</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#철저한 이미지메이킹</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#실전 대비 전문
</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
						<div class="col-12 py-1"></div>
						<div>
						<a href="javascript:viewModal('/img/pro-img-d-u-003.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-os-2020-003.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-eed.png" class="py-1 mobile-100-percent" style="width: 30%"><img src="/img/pro-img-2020-klm.png" class="py-1 mobile-100-percent" style="width: 30%">
									<p class="mx-2 font-22-m">
										퍼스트 클래스<br>객실승무원
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">강민정</span><span class="mx-2 font-gray">교육관</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#면접유형별전략</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#영어인터뷰</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#기내방송통역</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
					</div>
					<div class="swiper-slide swiper-slide-pro px-1">
					<div>
						<a href="javascript:viewModal('/img/pro-img-d-k-005.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-2020-005.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-as.png" class="py-1 mobile-100-percent" style="width: 50%">
									<p class="mx-2 font-22-m">
										10년 비행경력<br>객실승무원 부사무장
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">김지연</span><span class="mx-2 font-gray">교육관</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#항공사별분석</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#시각적이미지</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#서비스매너</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
						<div class="col-12 py-1"></div>
						<div>
						<a href="javascript:viewModal('/img/pro-img-d-u-004.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-os-2020-004.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-sing.png" class="py-1 mobile-100-percent" style="width: 40%">
									<p class="mx-2 font-22-m">
										객실승무원<br>기내방송전담
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">김슬기</span><span class="mx-2 font-gray">교육관</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#REUME작성법</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#상황별롤플레잉</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#영어인터뷰</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
					</div>
					<div class="swiper-slide swiper-slide-pro px-1">
					<div>
						<a href="javascript:viewModal('/img/pro-img-d-k-006.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-2020-006.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-as.png" class="py-1 mobile-100-percent" style="width: 50%">
									<p class="mx-2 font-22-m">
										6년 비행경력<br>객실승무원
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">정진아</span><span class="mx-2 font-gray">부원장</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#비지니스매너</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#롤플레잉</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#서비스매너</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
						<div class="col-12 py-1"></div>
						<div>
						<a href="javascript:viewModal('/img/pro-img-d-u-005.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-os-2020-005.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-em.png" class="py-1 mobile-100-percent" style="width: 30%"> <img src="/img/pro-img-2020-bu.png" class="py-1 mobile-100-percent" style="width: 30%">
									<p class="mx-2 font-22-m">
										객실승무원<br>객실사무장
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">김현지</span><span class="mx-2 font-gray">교육관</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#기내방송훈련</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#기내영어방송</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#영어인터뷰</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
						<div class="col-12 py-1"></div>
					</div>
					<div class="swiper-slide swiper-slide-pro px-1">
						<div>
						<a href="javascript:viewModal('/img/pro-img-d-k-013.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-2020-013.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-ke.png" class="py-1 mobile-100-percent" style="width: 40%">
									<p class="mx-2 font-22-m">
										객실승무원 부사무장<br>최우수 승무원표창
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">이은주</span><span class="mx-2 font-gray">교육관</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#이미지메이킹</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#실전롤플레잉</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#심층모의면접</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
					
						<div class="col-12 py-1"></div>
						<div>
						<a href="javascript:viewModal('/img/pro-img-d-u-006.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-os-2020-006.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-sau.png" class="py-1 mobile-100-percent" style="width: 40%">
									<p class="mx-2 font-22-m">
										한국인 1기<br>객실승무원
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">이다혜</span><span class="mx-2 font-gray">교육관</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#모의면접전략</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#방향성제시</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#롤플레잉</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
					</div>
					<div class="swiper-slide swiper-slide-pro px-1">
					<div>
						<a href="javascript:viewModal('/img/pro-img-d-k-003.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-2020-003.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-je.png" class="py-1 mobile-100-percent" style="width: 40%">
									<p class="mx-2 font-22-m">
										게임팀FUN방송전담<br>객실승무원
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">정은주</span><span class="mx-2 font-gray">교육관</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#스피치전문</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#이미지메이킹</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#비지니스매너</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
						<div class="col-12 py-1"></div>
						<div>
						<a href="javascript:viewModal('/img/pro-img-d-u-007.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-os-2020-007.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-em.png" class="py-1 mobile-100-percent" style="width: 30%"> <img src="/img/pro-img-2020-qat.png" class="py-1 mobile-100-percent" style="width: 30%">
									<p class="mx-2 font-22-m">
										객실승무원<br>1차 인터뷰면접관
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">최자영</span><span class="mx-2 font-gray">교육관</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#단계별전략</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#심층분석</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#항공사맞춤답변</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
						<div class="col-12 py-1"></div>
					</div>
					<div class="swiper-slide swiper-slide-pro px-1">
					<div>
						<a href="javascript:viewModal('/img/pro-img-d-k-008.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-2020-008.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-as.png" class="py-1 mobile-100-percent" style="width: 50%">
									<p class="mx-2 font-22-m">
										국내선/국제선<br>객실승무원
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">최정연</span><span class="mx-2 font-gray">교육관</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#이미지메이킹</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#실전롤플레잉</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#심층모의면접</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
						<div class="col-12 py-1"></div>
						<div>
						<a href="javascript:viewModal('/img/pro-img-d-u-008.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-os-2020-008.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-eed.png" class="py-1 mobile-100-percent" style="width: 30%"> <img src="/img/pro-img-2020-al.png" class="py-1 mobile-100-percent" style="width: 30%">
									<p class="mx-2 font-22-m">
										객실승무원 부사무장<br>기내방송통역
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">송미나</span><span class="mx-2 font-gray">교육관</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#영문이력서작성</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#영어인터뷰</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#이력서기반분석</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
					</div>
					<div class="swiper-slide swiper-slide-pro px-1">
					<div>
						<a href="javascript:viewModal('/img/pro-img-d-k-009.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-2020-009.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-cf.png" class="py-1 mobile-100-percent" style="width: 40%">
									<p class="mx-2 font-22-m">
										석채학 석사출신<br>퍼스널컬러
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">한현희</span><span class="mx-2 font-gray">교육관</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#헤어스타일링</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#면접메이크업</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#퍼스널컬러컨설팅</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
						<div class="col-12 py-1"></div>
						<div>
						<a href="javascript:viewModal('/img/pro-img-d-k-010.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-2020-010.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-ke.png" class="py-1 mobile-100-percent" style="width: 40%"> <img src="/img/pro-img-2020-bn.png" class="py-1 mobile-100-percent" style="width: 30%">
									<p class="mx-2 font-22-m">
										국제선 객실승무원<br>최연소 합격자
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">권지은</span><span class="mx-2 font-gray">교육관</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#심층면접</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#이미지메이킹</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#롤플레잉</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
					</div>
					<div class="swiper-slide swiper-slide-pro px-1">
					<div>
						<a href="javascript:viewModal('/img/pro-img-d-k-011.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-2020-011.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-ke.png" class="py-1 mobile-100-percent" style="width: 40%">
									<p class="mx-2 font-22-m">
										객실승무원 부사무장<br>신입승무원 멘토수행
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">나거필</span><span class="mx-2 font-gray">교육관</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#대한항공대비</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#모의면접</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#비지니스매너</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
						<div class="col-12 py-1"></div>
						<div>
						<a href="javascript:viewModal('/img/pro-img-d-k-012.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-2020-012.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-ke.png" class="py-1 mobile-100-percent" style="width: 40%"> <img src="/img/pro-img-2020-as.png" class="py-1 mobile-100-percent" style="width: 40%">
									<p class="mx-2 font-22-m">
										객실/케빈승무원<br>다수 대학교특강
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">이혜원</span><span class="mx-2 font-gray">원장</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#스토리텔링</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#답변방향성제시</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#항공과입시교육</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
					</div>
					<div class="swiper-slide swiper-slide-pro px-1">
						<div>
						<a href="javascript:viewModal('/img/pro-img-d-k-007.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-2020-007.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-je.png" class="py-1 mobile-100-percent" style="width: 40%">
									<p class="mx-2 font-22-m">
										객실승무원<br>헤어/메이크업자격
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">장서진</span><span class="mx-2 font-gray">교육관</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#메이크업</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#이미지제안</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#기내상황훈련</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						
						</div>
						<div class="col-12 py-1"></div>
						
						<div>
						<a href="javascript:viewModal('/img/pro-img-d-k-016.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-2020-016.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-eas.png" class="py-1 mobile-100-percent" style="width: 40%">
									<p class="mx-2 font-22-m">
										7년 비행경력<br>객실승무원
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">허민지</span><span class="mx-2 font-gray">교육관</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#항공과입시교육</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#이미지메이킹</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#모의면접</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
					</div>
					<div class="swiper-slide swiper-slide-pro px-1">
					<div>
						<a href="javascript:viewModal('/img/pro-img-d-k-015.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-2020-015.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-cf.png" class="py-1 mobile-100-percent" style="width: 40%">
									<p class="mx-2 font-22-m">
										현직 아나운서<br>메이크업 아티스트
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">이소희</span><span class="mx-2 font-gray">교육관</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#면접메이크업</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#헤어스타일링</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#이미지메이킹</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						</div>
						<div class="col-12 py-1"></div>
						<a href="javascript:viewModal('/img/pro-img-d-k-014.png')">
							<div class="col-12 border overlay-container">
								<div class="col-5 off-hide">
									<img src="/img/pro-img-2020-014.png" class="mobile-100-percent">
								</div>
								<div class="col-7 px-4 py-2">
									<img src="/img/pro-img-2020-cf.png" class="py-1 mobile-100-percent" style="width: 40%">
									<p class="mx-2 font-22-m">
										기업체 관공서<br>CS 양성과정 강사
									</p>
									<p class="mx-2 my-3">
										<span class="font-30 font-24-m font-bold">윤나경</span><span class="mx-2 font-gray">교육관</span>
									</p>
									<br>
									<p class="mx-2 mt-1 font-16-m font-gray">#스피치</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#보이스</p>
									<p class="mx-2 mt-1 font-16-m font-gray">#서비스마인드</p>
								</div>
								<div class="overlay">
									<div class="overlay-text">
										<img src="/img/pro-more-btn.png">
									</div>
								</div>
							</div>
						</a>
						
					</div>
					
				
			</div>
			<div class="swiper-pagination text-center" id="main-pro-swiper-pagination"></div>
		</div>
	</div>
</div>

<!-- 강사진 Modal -->
<div class="custom-modal" id="proModalCenter" style="display: none; width: 100%; height: 100%; background-color: rgba(0, 0, 0, 0.7)">
	<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header bg-ivory">
				<p class="modal-title font-24 font-bold"></p>
				<button type="button" class="close" onclick="javascript:closeModal('proModalCenter');">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<img src="/img/pro-img-d-k-001.png" id="img-view-modal" class="mobile-100-percent">
			</div>
		</div>
	</div>
</div>



<script>
if( $(window).width() > 768 ){
	var main_office_swiper = new Swiper('#main-office-front', {
		slidesPerView: 3,
		slidesPerColumn: 1,
		loop: true,
		loopAdditionalSlides: 1,
		autoplay: { delay: 3000, disableOnInteraction: false, },
		spaceBetween: 0,
		pagination: {
      el: '#main-pro-swiper-pagination', clickable: true,
    },
		/* navigation: {
			prevEl: '.main-office-front-prev',
			nextEl: '.main-office-front-next',
		} */
	});

} else {
	var main_office_swiper = new Swiper('#main-office-front', {
		slidesPerView: 1.3,
		loop: true,
		slidesPerColumn: 1,
		autoplay: { delay: 3000, disableOnInteraction: false, },
		centeredSlides: true,
		spaceBetween: 0,
		pagination: {
		      el: '#main-pro-swiper-pagination', clickable: true,
		},
		/* navigation: {
			prevEl: '.main-office-front-prev',
			nextEl: '.main-office-front-next',
		} */
	});
	
}
</script>