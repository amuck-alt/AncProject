<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%=site_title%>-외국항공사과정</title>
<meta name="description" content="<%=site_descript%>" />
<meta property="og:title" content="<%=site_title%>">
<meta property="og:description" content="<%=site_descript%>">
<%@ include file="../include/header.jsp"%>

</head>

</head>
<body>
	<%@ include file="../include/nav.jsp"%>
	<%@ include file="../include/floating-left.jsp"%>

	<div class="container-fluid edu-banner-os-container">
		<div class="row sub-row" style="padding-top: 8rem;">
			<div>
				<p class="font-bebas-light font-20 font-thin font-white my-2">OVERSEAS AIRLINES CABIN-CREW</p>
				<p class="font-white font-40 font-bold my-2">
					<span style="color: #fc229c">외국항공사</span> 캐빈크루 과정
				</p>
				<p class="font-white font-thin font-14 my-2">
					남들과 다른 내면의 차별적 가치를 만들어 개인의 이미지 진단 및 분석을 통해<br>품격있고 인정받는 인재 양성을 목표로 합니다.
				</p>
				<a href="/counsel/online.do"><label class="sm-label my-2">상담신청</label></a><span class="mx-1"></span><a href="/counsel/online.do?cost=y&imgchk="><label class="sm-label my-2">수강료조회</label></a><span class="mx-1"></span>
				<!-- label class="sm-label my-2">전문강사진보기</label><span class="mx-1"></span-->
				<a href="/support/alos.do?section=os&search=em"><label class="sm-label my-2">외국항공사관련 정보&amp;팁</label></a>
			</div>
		</div>
	</div>

	<div class="container-fluid py-10 bg-ivory">
		<div class="row sub-row">
			<div class="col-12 py-3 text-center">
				<span class="font-30 font-bold">한국인 승무원을 채용하는<span style="color: #fc229c"> 외국항공사</span></span>
			</div>
			<div class="col-12 line-1-gray line-2-black-top bg-white">
				<div class="col-12">
					<ul>
						<li class="py-3 font-20 font-bold"><label class="sm-label bg-navy py-3 px-3 font-16 font-bold mobile-100-percent text-center">중동</label><a href="/support/alos.do?section=os&search=em"><img src="/docs/code/243ba2ff-5b01-4d59-8daf-95845f9e54b7.png" class="border px-2 py-2" width="120px" alt="에미레이트항공"></a><a href="/support/alos.do?section=os&search=ca"><img
							src="/docs/code/1abddc20-4e63-4c5e-b943-c349e00ec895.png" class="border px-2 py-2" width="120px" alt="카타르항공"></a><a href="/support/alos.do?section=os&search=eh"><img src="/docs/code/9bf36b62-729f-4da6-adff-3a3453b49e76.png" class="border px-2 py-2" width="120px" alt="에띠하드항공"></a><a href="/support/alos.do?section=os&search=sa"><img src="/docs/code/d26463f1-1d06-4685-b7c5-4ac096fe4268.png" class="border px-2 py-2 " width="120px" alt="사우디아"></a><a href="/support/alos.do?section=os&search=guf"><img src="/docs/code/74463650-f85f-42c2-840d-a5a886c1b6e2.png" class="border px-2 py-2" width="120px" alt="걸프에어"></a><a href="/support/alos.do?section=os&search=kua"><img src="/docs/code/947a7860-b5e6-4617-816f-8857637e2b73.png" class="border px-2 py-2 " width="120px" alt="쿠웨이트항공"></a><a href="/support/alos.do?section=os&search=om"><img src="/docs/code/6d960655-de58-41b1-914a-caf3cf799224.png" class="border px-2 py-2 " width="120px" alt="오만항공"></a><a href="/support/alos.do?section=os&search=fdb"><img src="/docs/code/f885f18d-4cd6-4305-be03-1df2c8c93998.png" class="border px-2 py-2 " width="120px" alt="플라이두바이"></a><a href="/support/alos.do?section=os&search=arb"><img src="/docs/code/42d01ecd-a6d9-429d-84d4-0c8128400079.png" class="border px-2 py-2 " width="120px" alt="에어아라비아"></a>
							</li>
						<li class="py-3 font-20 font-bold"><label class="sm-label bg-navy py-3 px-3 font-16 font-bold mobile-100-percent text-center">유럽</label><a href="/support/alos.do?section=ko&search=klm"><img src="/docs/code/1bad55da-6b39-42c2-8ffc-db952e952871.png" class="border px-2 py-2" width="120px" alt="KLM네덜란드항공"></a><a href="/support/alos.do?section=ko&search=lu"><img
							src="/docs/code/e70ca4a5-ddc3-4b39-89e4-1099e06d27a0.png	" class="border px-2 py-2" width="120px" alt="루프트한자"></a><a href="/support/alos.do?section=ko&search=pin"><img src="/docs/code/b385f331-833b-47e2-9f11-7406d85c36eb.png" class="border px-2 py-2" width="120px" alt="핀에어"></a><a href="/support/alos.do?section=ko&search=akal"><img
							src="/docs/code/091948ea-8cac-47bf-bd0d-a00c956520d1.png" class="border px-2 py-2" width="120px" alt="에어프랑스(기내통역원)"></a></li>
						<li class="py-3 font-20 font-bold"><label class="sm-label bg-navy py-3 px-2 font-16 font-bold mobile-100-percent text-center">아시아</label><a href="/support/alos.do?section=ko&search=sg"><img src="/docs/code/279273fb-73d5-4ce3-a362-0df9cc85afc9.png" class="border px-2 py-2" width="120px" alt="싱가포르항공"></a><a href="/support/alos.do?section=os&search=ce"><img
							src="/docs/code/246e763a-2a35-4cbb-9ae0-b26f7e029c24.png" class="border px-2 py-2" width="120px" alt="케세이퍼시픽항공"></a><a href="/support/alos.do?section=os&search=hk"><img src="/docs/code/48c55331-6eb3-44f9-8d08-0a8e56268783.png" class="border px-2 py-2" width="120px" alt="홍콩항공"></a><a href="/support/alos.do?section=ko&search=fil"><img
							src="/docs/code/13c5e347-f48d-499d-a283-7487eed3fd13.png" class="border px-2 py-2" width="120px" alt="필리핀항공"></a><a href="/support/alos.do?section=ko&search=aa"><img src="/docs/code/eec998b4-a5d4-4f14-9b63-59579cd7a07a.png" class="border px-2 py-2" width="120px" alt="에어아시아항공"></a><a href="/support/alos.do?section=os&search=am"><img src="/docs/code/f8651842-afcc-4d28-b667-a8c10353e3a0.png" class="border px-2 py-2 " width="120px" alt="에어마카오"></a></li>
						<li class="py-3 font-20 font-bold"><label class="sm-label bg-navy py-3 px-3 font-16 font-bold mobile-100-percent text-center">중국</label><a href="/support/alos.do?section=os&search=db"><img src="/docs/code/8c0e1183-0a50-440b-b23f-6fe5fa59b96e.png" class="border px-2 py-2" width="120px" alt="동방항공"></a><a href="/support/alos.do?section=os&search=ac"><img
							src="/docs/code/b2923e0f-33cc-421e-a1a2-8f2c6671ac43.png" class="border px-2 py-2" width="120px" alt="에어차이나"></a><a href="/support/alos.do?section=os&search=tnj"><img src="/docs/code/c0108810-680b-47f7-aab5-e163c598937c.png" class="border px-2 py-2 " width="120px" alt="천진항공"></a><a href="/support/alos.do?section=os&search=hain"><img src="/docs/code/86cb2c40-cedb-4acf-824f-e6767de42e3b.png" class="border px-2 py-2" width="120px" alt="하이난항공"></a></li>
						<li class="py-3 font-20 font-bold"><label class="sm-label bg-navy py-3 px-3 font-16 font-bold mobile-100-percent text-center">일본</label><a href="/support/alos.do?section=ko&search=ana"><img src="/docs/code/48f2f756-f7ef-4d67-b645-fdd4fac9d45b.png" class="border px-2 py-2" width="120px" alt="ANA항공"></a><a href="/support/alos.do?section=ko&search=jal"><img src="/docs/code/5ccef7fd-79d6-4085-a0da-3fa45a56b091.png" class="border px-2 py-2" width="120px" alt="JAL항공(기내통역원)"></a><a href="/support/alos.do?section=os&search=pich"><img src="/docs/code/c7c3dc05-7cb5-4f99-b4d6-81e6d331e581.png" class="border px-2 py-2" width="120px" alt="피치항공"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid py-5">
		<div class="row sub-row">
			<div class="col-12 py-3 text-center">
				<span class="font-30 font-bold"><span style="color: #fc229c">외국항공사 </span>정규과정</span>
			</div>
			<div class="col-12 line-2-black-top edu-bg_junior bg-light-gray">
				<div class="col-4 py-4 text-center  font-lightblack-2 px-3">
					<a href="#"><button class="btn btn-primary mobile-100-percent" style="width: 150px;" onclick="fnMove('1')">
							<p class="font-18 font-bold  ">Junior</p>
						</button></a>
					<p class="mt-2">외국항공사 승무원<br>면접준비 기초과정</p>
				</div>
				<div class="col-4 py-4 text-center  font-lightblack-2 px-3">
					<a href="#"><button class="btn btn-primary mobile-100-percent" style="width: 150px;" onclick="fnMove('2')">
							<p class="font-18 font-bold  ">Senior</p>
						</button></a>
					<p class="mt-2">외국항공사 승무원<br>채용 지원을 위한 준비 과정</p>
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
						<img src="/img/number01.png">
					</div>
					<div class="font-30 font-bold my-2">주니어클래스</div>
					<div class="line-1-gray"></div>
					<p class="py-3 font-gray">외항사 승무원 면접준비 기초과정</p>
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
											<p class="font-20 font-bold">승무원 . 외국항공사의 이해</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide" >
											<img src="/img/edu-os-part-01-001.jpg" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- OverSeas Airline Company</p>
											<p class="font-14 my-2 font-gray">- 승무원면접 최신 트렌드</p>
											<p class="font-14 my-2 font-gray">- 외국항공사 국가별 주안점 파악</p>
											<p class="font-14 my-2 font-gray">- 항공사 별 기업철학 및 인재상 파악</p>
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
											<p class="font-20 font-bold">Image making / Voice Training</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide" >
											<img src="/img/01junior_02.png" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- Personal Image Making</p>
											<p class="font-14 my-2 font-gray">- Interview Manner</p>
											<p class="font-14 my-2 font-gray">- 첫인상과 이미지의 중요성</p>
											<p class="font-14 my-2 font-gray">- 승무원표정 트레이닝</p>
											<p class="font-14 my-2 font-gray">- 발음/발성/호흡-항공사별 기업철학 및 인재상 파악</p>
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
											<p class="font-20 font-bold">헤어 & 메이크업</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide" >
											<img src="/img/edu-os-part-03-001.jpg" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- 나랑 어울리는 헤어</p>
											<p class="font-14 my-2 font-gray">- 내 피부톤에 맞는 메이크업</p>
											<p class="font-14 my-2 font-gray">- 외국항공사 선호하는 어피어런스,그루밍체크</p>
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
											<p class="font-20 font-bold">Resume / Cover letter & CV</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide">
											<img src="/img/edu-os-part-04-001.jpg" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- Write Resume/Cover Letter Check</p>
											<p class="font-14 my-2 font-gray">- 합격하는 영문레쥬메 커버레터 완성</p>
											<p class="font-14 my-2 font-gray">- 파이널에서 중요하게 작용하는 CV체크</p>
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
											<p class="font-20 font-bold">Video Interview</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide" >
											<img src="/img/edu-os-part-05-001.jpg" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- Practice for video Interview</p>
											<p class="font-14 my-2 font-gray">- Suitable voice tone</p>
											<p class="font-14 my-2 font-gray">- Eye-contact and Effective expressions</p>
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
						<img src="/img/number02.png">
					</p>
					<p class="font-30 font-bold my-2">시니어클래스</p>
					<div class="line-1-gray"></div>
					<p class="py-3 font-gray">외항사 승무원 채용 지원을 위한 준비 과정</p>
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
											<p class="font-20 font-bold">면접유형별 주안점파악</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide" >
											<img src="/img/edu-os-part-06-001.jpg" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- 어세스먼트데이/ 오픈데이 특성 파악</p>
											<p class="font-14 my-2 font-gray">- CV-Drop / Small Talk</p>
											<p class="font-14 my-2 font-gray">- What if / Role play</p>
											<p class="font-14 my-2 font-gray">- Overseas Experience / Culture Shock</p>
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
											<p class="font-20 font-bold">Group Activities</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide" >
											<img src="/img/edu-os-part-07-001.jpg" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- 남들과 차별화 나만의 면접</p>
											<p class="font-14 my-2 font-gray">- Group Discussion / Debate</p>
											<p class="font-14 my-2 font-gray">- 타당성 있는 결론 도출하기, 분위기 및 팀워크 훈련</p>
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
											<p class="font-20 font-bold">나만의 스토리텔링 구상</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide">
											<img src="/img/edu-os-part-08-001.jpg" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- Sentence or Word Shooting</p>
											<p class="font-14 my-2 font-gray">- Public Speech</p>
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
											<p class="font-20 font-bold">Resume/ Coverletter / CV</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide" >
											<img src="/img/edu-os-part-09-001.jpg" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- Write Resume / Cover Letter Check</p>
											<p class="font-14 my-2 font-gray">- 합격하는 영문레쥬메, 커버레터 완성</p>
											<p class="font-14 my-2 font-gray">- 파이널에서 중요하게 작용하는 CV체크</p>
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


	<div class="container-fluid py-5" id="page3">
		<div class="row sub2-row">
			<div class="col-12 px-5 py-5 border rad-div-10">
				<div class="col-5" id="mobile-100-percent">
					<p class="font-16 font-bold my-3">
						<img src="/img/number03.png">
					</p>
					<p class="font-30 font-bold my-2">탑시니어클래스</p>
					<div class="line-1-gray"></div>
					<p class="py-3 font-gray">최종합격을 위한 채용대비 과정</p>
					<div class="col-12 py-3" style="height: 200px;">
						<img src="/img/class_txt03.png" id="mobile-100-percent">
					</div>
					<div class="col-12 py-4">
						<div class="swiper-pagination text-left" id="sw-eduos3-swiper-pagination"></div>
					</div>
				</div>
				<div class="col-7 pt-4 col-padding-sec" id="mobile-100-percent">
					<div class="swiper-container" id="sw-eduos3-swiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="col-12">
									<div class="col-12">
										<div class="col-12" style="margin-top: 75px;">
											<p class="font-18 font-bold font-pink">Part.1</p>
										</div>
										<div class="col-12 py-3">
											<p class="font-20 font-bold">합격생 간담회</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide">
											<img src="/img/edu-os-part-10-001.jpg"  id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- 최근 합격생이 알려주는 면접장 분위기 파악</p>
											<p class="font-14 my-2 font-gray">- 최신 면접 트렌드 및 주안점 파악</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="col-12">
									<div class="col-12">
										<div class="col-12" style="margin-top: 75px;">
											<p class="font-18 font-bold font-pink">Part.2</p>
										</div>
										<div class="col-12 py-3">
											<p class="font-20 font-bold">CV 및 최종 답변 첨삭</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide" >
											<img src="/img/edu-os-part-11-001.jpg" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- 원하는 시간 "원장실 방문 첨삭"</p>
											<p class="font-14 my-2 font-gray">- 하루 종일 집중 Care "첨삭Day"</p>
											<p class="font-14 my-2 font-gray">- 365일 24시간 "첨삭Box"</p>
											<p class="font-14 my-2 font-gray">- 방문이 어렵다면 "E-Mail"첨삭(직장인, 지방거주자 등)</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="col-12">
									<div class="col-12">
										<div class="col-12" style="margin-top: 75px;">
											<p class="font-18 font-bold font-pink">Part.3</p>
										</div>
										<div class="col-12 py-3">
											<p class="font-20 font-bold">채용대비반</p>
										</div>
										<div class="col-12 my-2 rad-div off-hide">
											<img src="/img/edu-os-part-12-001.jpg" id="mobile-100-percent">
										</div>
										<div class="col-12">
											<p class="font-14 my-2 font-gray">- 외항사 채용시 채용대비반 별도 생성</p>
											<p class="font-14 my-2 font-gray">- 서류부터 파이널 까지 완벽대비</p>
											<p class="font-14 my-2 font-gray">- 국가별, 항공사별 주안점 / 실전 대비 모의면접</p>
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


	<div class="container-fluid py-5" style="background-image: url('/img/bg_special.png');">
		<div class="row sub-row">
			<div class="col-12 py-3 text-center">
				<p class="font-30 font-bold">
					크루팩토리가 지원하는<p class="font-30 font-bold"><br><span style="color: #fff">외국항공사 특별 과정 </span>
				</p>
				<div class="py-3 text-center line-2-black" style="width: 100px; margin: 0 auto;"></div>
				<p class="py-3 font-14">정규 수업 이외 진행하는 특강</p>
			</div>
			<div class="col-12">
				<div class="col-3 px-2 py-2" id="mobile-100-percent">
					<div class="col-12 bg-light-gray rad-div px-4 py-4">
						<p class="py-3 font-20 font-bold">별도 특별강의반</p>
						<div class="line-1-gray"></div>
						<div class="col-12 ">
							<p class="font-14 my-2 font-gray">- 스피치 / 보이스 트레이닝</p>
							<p class="font-14 my-2 font-gray">- 헤어 / 메이크업</p>
							<p class="font-14 my-2 font-gray">- 자기소개서 가이드라인</p>
							<p class="font-14 my-2 font-gray">- 영어인터뷰</p>
						</div>
						<div class="col-12 mt-2 off-hide">
							<img src="/img/special_pht_01.png" id="mobile-100-percent">
						</div>
					</div>
				</div>
				<div class="col-3 px-2 py-2" id="mobile-100-percent">
					<div class="col-12 bg-light-gray rad-div px-4 py-4">
						<p class="py-3 font-20 font-bold">스터디(모임/수업)</p>
						<div class="line-1-gray"></div>
						<div class="col-12">
							<p class="font-14 my-2 font-gray">- 외항사 승무원을 준비하는 수강생들 모임</p>
							<p class="font-14 my-2 font-gray">- 외항사 출신 선생님이 함께하는 수업</p>
							<p class="font-14 my-2 font-gray">- 학원 내 스터디룸 무료 대여가능</p>
							<p class="font-14 my-2 font-gray">- 항공사 채용정보</p>

						</div>
						<div class="col-12 mt-2 off-hide">
							<img src="/img/special_pht_02.png" id="mobile-100-percent">
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
							<img src="/img/special_pht_03.png" id="mobile-100-percent">
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