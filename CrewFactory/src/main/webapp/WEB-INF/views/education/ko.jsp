<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%=site_title%>-국내항공사과정</title>
<meta name="description" content="<%=site_descript%>" />
<meta property="og:title" content="<%=site_title%>">
<meta property="og:description" content="<%=site_descript%>">
<%@ include file="../include/header.jsp"%>
</head>
<body>
	<%@ include file="../include/nav.jsp"%>
	<%@ include file="../include/floating-left.jsp"%>

	<div class="container-fluid edu-banner-keoz-container">
		<div class="row sub-row" style="padding-top: 7rem;">
			<div>
				<p class="font-bebas-light font-20 font-thin font-white my-2">DOMESTIC AIRLINES CABIN-CREW</p>
				<p class="font-white font-40 font-bold my-2">
					<span style="color: #fc229c">국내항공사</span> 캐빈크루 과정
				</p>
				<p class="font-white font-thin font-18 mt-6 mb-4">
					대한항공, 아시아나항공전문 프리미엄과정<br>항공사별 전략을 꿰뚫고 있는 전문 교육관의 수업과정
				</p>
				<a href="/counsel/online.do"><label class="sm-label my-2">상담신청</label></a><span class="mx-1"></span><a href="/counsel/online.do?cost=y&imgchk="><label class="sm-label my-2">수강료조회</label></a><span class="mx-1"></span>
				<!-- label class="sm-label my-2">전문강사진보기</label><span class="mx-1"></span-->
				<a href="/support/alko.do?section=ko&search=ke"><label class="sm-label my-2">국내항공사관련 정보&amp;팁</label></a>
			</div>
		</div>
	</div>

	<div class="container-fluid py-10 bg-ivory">
		<div class="row sub-row">
			<div class="col-12 py-3 text-center">
				<span class="font-30 font-bold">승무원 채용대비<span style="color: #fc229c"> 국내항공사</span></span>
			</div>
			<div class="col-12 line-1-gray line-2-black-top bg-white">
				<div class="col-12">
					<ul>
						<li class="py-3 font-20 font-bold">
						<label class="sm-label bg-navy py-3 px-3 font-16 font-bold  text-center" id="mobile-100-percent">FSC</label> 
						<a href="/support/alko.do?section=ko&search=ke"><img src="/docs/code/0a247468-5f7d-48f5-99e9-8904c75d401b.png" class="border px-1 py-1" width="120px" alt="대한항공"></a>
						<a href="/support/alko.do?section=ko&search=os"><img src="/docs/code/2f581d87-2a81-41a0-9944-d73ef905ae7c.png" class="border px-1 py-1" width="120px" alt="아시아나항공"></a></li>
						<li class="py-3 font-20 font-bold">
						<label class="sm-label bg-navy py-3 px-3 font-16 font-bold text-center" id="mobile-100-percent">LCC</label>
						<a href="/support/alko.do?section=ko&search=je"><img src="/docs/code/dcc5f664-9400-46a7-b2f0-2cb388082373.png" class="border px-2 py-2" width="120px" alt="제주항공"></a>
						<a href="/support/alko.do?section=ko&search=ji"><img src="/docs/code/1e69610f-93b3-4028-8993-d9f2e5e67982.png	" class="border px-2 py-2" width="120px" alt="진에어"></a>
						<a href="/support/alko.do?section=ko&search=tw"><img src="/docs/code/25b44d13-f2f8-42c1-8098-db585fc23975.png" class="border px-2 py-2" width="120px" alt="티웨이항공"> </a>
						<a href="/support/alko.do?section=ko&search=ea"><img  src="/docs/code/3fbe2b0b-445a-4fce-b5ad-ee4baee0339d.png" class="border px-2 py-2" width="120px" alt="이스타항공"> </a>
						<a href="/support/alko.do?section=ko&search=ap"><img src="/docs/code/24945731-bf53-4b80-b586-165aaaa89d78.png" class="border px-2 py-2" width="120px" alt="에어부산"></a> 
						<a href="/support/alko.do?section=ko&search=as"><img src="/docs/code/e652e1c9-bd3b-4622-bf72-eeb5cc4fe434.png" class="border px-2 py-2" width="120px" alt="에어서울"></li>
						<li class="py-3 font-20 font-bold">
						<label class="sm-label bg-navy py-3 px-3 font-15 font-bold text-center" id="mobile-100-percent">HSC</label> 
						<a href="/support/alko.do?section=ko&search=pre"><img src="/docs/code/c53cbf26-c71a-4ea2-bed2-07f9c66fd1ed.png" class="border px-2 py-2" width="120px" alt="에어프레미아"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid py-5">
		<div class="row sub-row">
			<div class="col-12 py-3 text-center">
				<span class="font-30 font-bold"><span style="color: #fc229c">국내항공사 </span>정규과정</span>
			</div>
			<div class="col-12 line-2-black-top edu-bg_junior bg-light-gray">
				<div class="col-4 py-4 text-center  font-lightblack-2 px-3">
					<a href="#"><button class="btn btn-primary mobile-100-percent" style="width: 150px;" onclick="fnMove('1')">
							<p class="font-18 font-bold  ">Junior</p>
						</button></a>
					<p class="mt-2">국내항공사 승무원<br>면접준비 기초과정</p>
				</div>
				<div class="col-4 py-4 text-center  font-lightblack-2 px-3">
					<a href="#"><button class="btn btn-primary mobile-100-percent" style="width: 150px;" onclick="fnMove('2')">
							<p class="font-18 font-bold  ">Senior</p>
						</button></a>
					<p class="mt-2">국내항공사 승무원<br>채용 지원을 위한 준비 과정</p>
				</div>
				<div class="col-4 py-4 text-center  font-lightblack-2 px-3">
					<a href="#"><button class="btn btn-primary mobile-100-percent" style="width: 150px;" onclick="fnMove('3')">
							<p class="font-18 font-bold  ">Top Senior</p>
						</button></a>
					<p class="mt-2">최종합격을 위한<br>채용대비 과정</p>
				</div>
			</div>
		</div>
	</div>

	<!-- 주니어클래스 -->
	<div class="container-fluid py-5" id="page1">
		<div class="row sub2-row">
			<div class="col-12 px-5 py-5 border rad-div-10 bg-white">
				<div class="col-5" id="mobile-100-percent">
					<div class="font-16 font-bold my-3">
						<img src="/img/number01.png"><span class="font-30 font-lightblack-3" style="vertical-align: text-bottom;">Junior</span>
					</div>
					<div class="font-30 font-bold my-2">주니어클래스</div>
					<div class="line-1-gray"></div>
					<p class="py-3 font-gray">국내항공사 승무원 면접준비 기초과정</p>
					<div class="col-12 py-3" style="height: 200px;">
						<img src="/img/class_txt01.png" id="mobile-100-percent">
					</div>
					<div class="col-12 py-4">
						<div class="swiper-pagination text-left" id="sw-eduos1-swiper-pagination" style="position: relative;"></div>
					</div>
				</div>
				<div class="col-7 pt-4 col-padding-sec" id="mobile-100-percent">
					<div class="swiper-container" id="sw-eduos1-swiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="col-12">
									<div class="col-12">
										<div class="col-12">
											<p class="font-18 font-bold font-pink">Part.1</p>
										</div>
										<div class="col-12 py-3">
											<p class="font-20 font-bold">승무원 / 국내항공사의 이해</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide">
											<img src="/img/edu-ko-part-01-001.png"id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- 승무원 직무/업무 이해</p>
											<p class="font-14 my-2 font-gray">- 승무원 면접 최신 트랜드</p>
											<p class="font-14 my-2 font-gray">- 항공사 최신 뉴스 포털사이트 공유</p>
											<p class="font-14 my-2 font-gray">- 항공사별 기업철학 및 인재상 파악</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="col-12">
									<div class="col-12">
										<div class="col-12">
											<p class="font-18 font-bold font-pink">Part.2</p>
										</div>
										<div class="col-12 py-3">
											<p class="font-20 font-bold">1:1맞춤 트레이닝 VCR 촬영</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide">
											<img src="/img/edu-ko-part-01-002.png" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- 1:1개별 이미지 분석 및 피드백 진행</p>
											<p class="font-14 my-2 font-gray">- 본인의 장/단점 파악</p>
											<p class="font-14 my-2 font-gray">- 녹화 파일 별도 제공</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="col-12">
									<div class="col-12">
										<div class="col-12">
											<p class="font-18 font-bold font-pink">Part.3</p>
										</div>
										<div class="col-12 py-3">
											<p class="font-20 font-bold">이미지메이킹 I - 시각적이미지</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide">
											<img src="/img/edu-ko-part-01-003.png" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- 첫 인상과 이미지의 중요성 자세/인사/워킹</p>
											<p class="font-14 my-2 font-gray">- 호감을 주는 자연스러운 미소 만들기</p>
											<p class="font-14 my-2 font-gray">- 희망항공사에 맞춘 승무원 이미지 트레이닝</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="col-12">
									<div class="col-12">
										<div class="col-12">
											<p class="font-18 font-bold font-pink">Part.4</p>
										</div>
										<div class="col-12 py-3">
											<p class="font-20 font-bold">이미지메이킹 II - 청각적이미지</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide">
											<img src="/img/edu-ko-part-01-004.png" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- 스피치의 이해 및 훈련</p>
											<p class="font-14 my-2 font-gray">- 보이스트레이닝 발음/발성/호흡</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="col-12">
									<div class="col-12">
										<div class="col-12">
											<p class="font-18 font-bold font-pink">Part.5</p>
										</div>
										<div class="col-12 py-3">
											<p class="font-20 font-bold">헤어 / 메이크업</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide">
											<img src="/img/edu-ko-part-01-005.png" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- 나랑 어울리는 헤어</p>
											<p class="font-14 my-2 font-gray">- 내 피부톤에 맞는 메이크업</p>
											<p class="font-14 my-2 font-gray">- 전문 강사님 초빙</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="col-12">
									<div class="col-12">
										<div class="col-12">
											<p class="font-18 font-bold font-pink">Part.6</p>
										</div>
										<div class="col-12 py-3">
											<p class="font-20 font-bold">서류 전형 대비</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide">
											<img src="/img/edu-ko-part-01-006.png" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- 이력서 작성 개요 및 작성법</p>
											<p class="font-14 my-2 font-gray">- 자원동기 및 자기소개 소재 구상하기</p>
											<p class="font-14 my-2 font-gray">- STAR/STOARR기법/확장법/문장압축</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- 여기부터 -->
	<!-- 시니어클래스 -->
	<div class="container-fluid py-5 bg-light-gray" id="page2">
		<div class="row sub2-row">
			<div class="col-12 px-5 py-5 border rad-div-10 bg-white">
				<div class="col-5" id="mobile-100-percent">
					<p class="font-16 font-bold my-3">
						<img src="/img/number02.png"><span class="font-30 font-lightblack-3" style="vertical-align: text-bottom;">Senior</span>
					</p>
					<p class="font-30 font-bold my-2">시니어클래스</p>
					<div class="line-1-gray"></div>
					<p class="py-3 font-gray">국내항공사 승무원 채용 지원을 위한 준비 과정</p>
					<div class="col-12 py-3" style="height: 200px;">
						<img src="/img/class_txt02.png" id="mobile-100-percent">
					</div>

					<div class="col-12 py-4">
						<div class="swiper-pagination text-left" id="sw-eduos2-swiper-pagination" style="position: relative;"></div>
					</div>
				</div>
				<div class="col-7 pt-4 col-padding-sec" id="mobile-100-percent">
					<div class="swiper-container" id="sw-eduos2-swiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="col-12">
									<div class="col-12">
										<div class="col-12">
											<p class="font-18 font-bold font-pink">Part.1</p>
										</div>
										<div class="col-12 py-3">
											<p class="font-20 font-bold">국내항공사 특징 파악</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide">
											<img src="/img/edu-ko-part-02-001.png" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- 최신 면접 트렌드/동향 파악</p>
											<p class="font-14 my-2 font-gray">- 기업분석/인재상분석</p>
											<p class="font-14 my-2 font-gray">- 최근 기출문제에 맞는 답변 작성</p>
											<p class="font-14 my-2 font-gray">- 개인별 예상질문 답변 작성</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="col-12">
									<div class="col-12">
										<div class="col-12">
											<p class="font-18 font-bold font-pink">Part.2</p>
										</div>
										<div class="col-12 py-3">
											<p class="font-20 font-bold">면접 절차별 주안점</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide">
											<img src="/img/edu-ko-part-02-002.png" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- 면접 절차별 특징파악</p>
											<p class="font-14 my-2 font-gray">- 공통/개별 질문을 바탕으로 한 실전 인터뷰 연습</p>
											<p class="font-14 my-2 font-gray">- 대한항공 유니폼 환복 수업</p>
											<p class="font-14 my-2 font-gray">- 임원/최종 면접시 유니폼 환복 후 면접 진행</p>
											<p class="font-14 my-2 font-gray">- 항공사 채용시 별도 특별 강의 진행</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="col-12">
									<div class="col-12">
										<div class="col-12">
											<p class="font-18 font-bold font-pink">Part.3</p>
										</div>
										<div class="col-12 py-3">
											<p class="font-20 font-bold">남들과 차별화된 나의 이야기</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide">
											<img src="/img/edu-ko-part-02-003.png" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- 항공사별 최신 면접 기출 질문제공</p>
											<p class="font-14 my-2 font-gray">- 본인만의 스토리텔링 구상</p>
											<p class="font-14 my-2 font-gray">- 나를 돋보일 수 있는 진정성 있는 나만의 답변 준비</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="col-12">
									<div class="col-12">
										<div class="col-12">
											<p class="font-18 font-bold font-pink">Part.4</p>
										</div>
										<div class="col-12 py-3">
											<p class="font-20 font-bold">영어로 진행하는 면접</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide">
											<img src="/img/edu-ko-part-02-004.png"  id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- 영어인터뷰/기내방송문</p>
											<p class="font-14 my-2 font-gray">- 난이도上 영어인터뷰 스킬 늘리기</p>
											<p class="font-14 my-2 font-gray">- 단어로만 말해도 합격하는 방법</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- 탑시니어클래스 -->
	<div class="container-fluid py-5" id="page3">
		<div class="row sub2-row">
			<div class="col-12 px-5 py-5 border rad-div-10">
				<div class="col-5" id="mobile-100-percent">
					<p class="font-16 font-bold my-3">
						<img src="/img/number03.png"><span class="font-30 font-lightblack-3" style="vertical-align: text-bottom;">Top Senior</span>
					</p>
					<p class="font-30 font-bold my-2">탑시니어클래스</p>
					<div class="line-1-gray"></div>
					<p class="py-3 font-gray">최종합격을 위한 채용대비 과정</p>
				<div class="col-12 py-3" style="height: 200px;">
						<img src="/img/class_txt03.png" id="mobile-100-percent">
					</div>

<div class="col-12 py-4">
						<div class="swiper-pagination text-left" id="sw-eduos3-swiper-pagination" style="position: relative;"></div>
					</div>
				</div>
				<div class="col-7 pt-4 col-padding-sec" id="mobile-100-percent">
					<div class="swiper-container" id="sw-eduos3-swiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="col-12">
									<div class="col-12">
										<div class="col-12">
											<p class="font-18 font-bold font-pink">Part.1</p>
										</div>
										<div class="col-12 py-3">
											<p class="font-20 font-bold">채용설명회</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide">
											<img src="/img/edu-ko-part-03-001.png" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- 항공사채용시 설명회 별도 진행</p>
											<p class="font-14 my-2 font-gray">- 최신 면접 트렌드 및 주안점 파악</p>
											<p class="font-14 my-2 font-gray">- 바뀐 자기소개서 항목 - 서류작성요령</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="col-12">
									<div class="col-12">
										<div class="col-12">
											<p class="font-18 font-bold font-pink">Part.2</p>
										</div>
										<div class="col-12 py-3">
											<p class="font-20 font-bold">자기소개서 첨삭</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide">
											<img src="/img/edu-ko-part-03-002.png" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- 원하는 시간 '원장실 방문 첨삭'</p>
											<p class="font-14 my-2 font-gray">- 하루 종일 집중 Care '첨삭 DAY'</p>
											<p class="font-14 my-2 font-gray">- 365日 24시간 첨삭 BOX</p>
											<p class="font-14 my-2 font-gray">- 방문이 어렵다면 'E-Mail 첨삭' (직장인/지방거주자 등)</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="col-12">
									<div class="col-12">
										<div class="col-12">
											<p class="font-18 font-bold font-pink">Part.3</p>
										</div>
										<div class="col-12 py-3">
											<p class="font-20 font-bold">채용대비반</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide">
											<img src="/img/edu-ko-part-03-003.png" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- 대한항공/아시아나항공/저비용항공사(LCC) 채용 시 채용대비반 별도 생성</p>
											<p class="font-14 my-2 font-gray">- 1차 실무/2차 임원/최종-절차별 별도 진행</p>
											<p class="font-14 my-2 font-gray">- 절차별 특장에 맞춘 모의 면접</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="col-12">
									<div class="col-12">
										<div class="col-12">
											<p class="font-18 font-bold font-pink">Part.4</p>
										</div>
										<div class="col-12 py-3">
											<p class="font-20 font-bold">스튜어드반</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide">
											<img src="/img/edu-ko-part-03-004.png" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- 남자들끼리만 면접을 보는 실전에 맞춘 '남자승무원 대비반'</p>
											<p class="font-14 my-2 font-gray">- 남자 지원자에게 원하는 요소에 맞춘 스튜어드 교육</p>
											<p class="font-14 my-2 font-gray">- 대한항공 '스튜어드 사무장' 출신 교육관 진행</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- 이미지접히기 -->
	<div class="container-fluid bg-dark-navy mobile-100-percent" id="main-pro">
		<div class="row row sub2-row">
			<ul>
				<li class="pro-menu" id="mobile-100-percent"><a><img src="/img/sid-ko-bg-but.png" alt="내용펼치기" id="mobile-100-percent"></a>
					<ul class="mproul-sid text-center" id="hide">
						<li id="mobile-100-percent"><img src="/img/sid-ko-bg-img.jpg" style="margin-bottom: 50px;" id="mobile-100-percent"></li>
					</ul></li>
			</ul>
		</div>
	</div>


	<!-- 특별프로그램 -->
	<div class="container-fluid py-5" style="background-image: url('/img/edu-banner-ko-sub2-bg.png');">
		<div class="row sub-row">
			<div class="col-12 py-3 text-center">
				<p class="font-30 font-bold">
					크루팩토리가 지원하는</p><p class="font-30 font-bold"><br><span style="color: #fff">국내항공사 특별 과정 </span>
				</p>
				<div class="py-3 text-center line-2-black" style="width: 100px; margin: 0 auto;"></div>
				<p class="py-3 font-14">정규 수업 이외 진행하는 특강</p>
			</div>
			<div class="col-12">
				<div class="col-3 px-2 py-2" id="mobile-100-percent">
					<div class="col-12 bg-light-gray rad-div px-4 py-4">
						<p class="py-3 font-20 font-bold">별도 특별강의반</p>
						<div class="line-1-gray"></div>
						<div class="col-12">
							<p class="font-14 my-2 font-gray">- 스피치&보이스 트레이닝</p>
							<p class="font-14 my-2 font-gray">- 헤어&메이크업</p>
							<p class="font-14 my-2 font-gray">- 자기소개서 가이드라인</p>
							<p class="font-14 my-2 font-gray">- 영어인터뷰</p>
						</div>
						<div class="col-12 mt-2 off-hide">
							<img src="/img/special_pht_KO_01.png" id="mobile-100-percent">
						</div>
					</div>
				</div>
				<div class="col-3 px-2 py-2" id="mobile-100-percent">
					<div class="col-12 bg-light-gray rad-div px-4 py-4">
						<p class="py-3 font-20 font-bold">스터디(모임/수업)</p>
						<div class="line-1-gray"></div>
						<div class="col-12">
							<p class="font-14 my-2 font-gray">- 목표항공사가 같은 수강생들의 스터디모임</p>
							<p class="font-14 my-2 font-gray">- 항공사 출신 선생님과 하는 스터디수업</p>
							<p class="font-14 my-2 font-gray">- 학원 내 스터디룸 무료 대여가능</p>
							<p class="font-14 my-2 font-gray">- 항공사 채용정보상시 공유</p>

						</div>
						<div class="col-12 mt-2 off-hide">
							<img src="/img/special_pht_KO_02.png" id="mobile-100-percent">
						</div>
					</div>
				</div>
				<div class="col-3 px-2 py-2" id="mobile-100-percent">
					<div class="col-12 bg-light-gray rad-div px-4 py-4">
						<p class="py-3 font-20 font-bold">합격자 간담회</p>
						<div class="line-1-gray"></div>
						<div class="col-12">
							<p class="font-14 my-2 font-gray">- 항공사별 합격자들의 이야기</p>
							<p class="font-14 my-2 font-gray">- 준비방법 및 합격자들의 기본 스펙공유</p>
							<p class="font-14 my-2 font-gray">- 동기부여 및 사기증진 충족</p>
							<p class="font-14 my-2 font-white">.</p>

						</div>
						<div class="col-12 mt-2 off-hide">
							<img src="/img/special_pht_KO_03.png" id="mobile-100-percent">
						</div>
					</div>
				</div>
				<div class="col-3 px-2 py-2" id="mobile-100-percent">
					<div class="col-12 bg-light-gray rad-div px-4 py-4">
						<p class="py-3 font-20 font-bold">스펙업 프로그램</p>
						<div class="line-1-gray"></div>
						<div class="col-12">
							<p class="font-14 my-2 font-gray">
								- 기내 특별 서비스를 위한 기내 <span>'수화'</span>수료증
							</p>
							<p class="font-14 my-2 font-gray">
								- 위급상황에 대처 능력,<br>&nbsp; &nbsp;안전관련<span> '심폐소생술'</span>수료증
							</p>
							<p class="font-14 my-2 font-white">.</p>

						</div>
						<div class="col-12 mt-2 off-hide">
							<img src="/img/special_pht_04.png" id="mobile-100-percent">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
	<!-- Initialize Swiper -->
		function fnMove(seq) {
			var offset = $("#page" + seq).offset();
			$('html, body').animate({
				scrollTop : offset.top
			}, 400);
		}

		$(".mproul-sid").css('display', 'none');
		$(document).ready(function() {
			$(".pro-menu>a").click(function() {
				var submenu = $(this).next("ul");
				if (submenu.is(":visible")) {
					submenu.slideUp();
				} else {
					submenu.slideDown();
				}
			});
		});

		var edu1swiper = new Swiper('#sw-eduos1-swiper', {
			pagination : {
				el : '#sw-eduos1-swiper-pagination',
				clickable : true,
				renderBullet : function(index, className) {
					return '<span class="' + className + '">0' + (index + 1)
							+ '</span>';
				},
			},
		});

		var edu2swiper = new Swiper('#sw-eduos2-swiper', {
			pagination : {
				el : '#sw-eduos2-swiper-pagination',
				clickable : true,
				renderBullet : function(index, className) {
					return '<span class="' + className + '">0' + (index + 1)
							+ '</span>';
				},
			},
		});

		var edu3swiper = new Swiper('#sw-eduos3-swiper', {
			pagination : {
				el : '#sw-eduos3-swiper-pagination',
				clickable : true,
				renderBullet : function(index, className) {
					return '<span class="' + className + '">0' + (index + 1)
							+ '</span>';
				},
			},
		});
	</script>


	<!-- 하단링크 -->
	<%@ include file="../include/footlink.jsp"%>

	<!-- 상담신청 -->
	<%@ include file="../include/counsel.jsp"%>

	<footer>
		<%@ include file="../include/footer.jsp"%>
	</footer>

</body>
</html>