<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%=site_title%>-승무원과외과정</title>
<meta name="description" content="<%=site_descript%>" />
<meta property="og:title" content="<%=site_title%>">
<meta property="og:description" content="<%=site_descript%>">
<%@ include file="../include/header.jsp"%>

</head>

<style>
.pro-menu a {
  padding-top: 180px;
}
.pro-menu a span {
  position: absolute;
  width: 24px;
  height: 24px;
  border-left: 1px solid #323232;
  border-bottom: 1px solid #323232;
  -webkit-transform: rotate(-45deg);
  transform: rotate(-45deg);
  -webkit-animation: sdb 2s infinite;
  animation: sdb 2s infinite;
  opacity: 0;
  box-sizing: border-box;
}
.pro-menu a span:nth-of-type(1) {
  -webkit-animation-delay: 0s;
  animation-delay: 0s;
}
.pro-menu a span:nth-of-type(2) {
margin-top: 16px;
  -webkit-animation-delay: .15s;
  animation-delay: .15s;
}
.pro-menu a span:nth-of-type(3) {
margin-top: 32px;
  -webkit-animation-delay: .3s;
  animation-delay: .3s;
}
@-webkit-keyframes sdb {
  0% {
    opacity: 0;
  }
  50% {
    opacity: 1;
  }
  100% {
    opacity: 0;
  }
}
@keyframes sdb {
  0% {
    opacity: 0;
  }
  50% {
    opacity: 1;
  }
  100% {
    opacity: 0;
  }
}
</style>

<body>
	<%@ include file="../include/nav.jsp"%>
	<%@ include file="../include/floating-left.jsp"%>

	<div class="container-fluid edu-banner-pv-container">
		<div class="row edu-banner-row" style="padding-top: 8rem;">
			<div>
				<p class="font-bebas-light font-20 font-thin font-white my-2">PRIVATE LESSON</p>
				<p class="font-white font-40 font-bold my-2">
					<span style="color: #fc229c">승무원과외</span> 과정
				</p>
				<p class="font-white font-thin font-14 my-2">
					개별 성향에 맞춰 최고의 결과를 끌어낼 수 있도록 함과 동시에 <br>안정적인 면접과 스킬을 구사할 수 있게 지원하는 교육 프로그램
				</p>
				<a href="/counsel/online.do"><label class="sm-label my-2">상담신청</label></a><span class="mx-1"></span><a href="/counsel/online.do?cost=y&imgchk="><label class="sm-label my-2">수강료조회</label></a><span class="mx-1"></span> <a href="/introduce/pro.do"><label class="sm-label my-2">전문강사진 보기</label></a>
			</div>
		</div>
	</div>
	<div class="container-fluid edu-banner-pv-main-container" style="margin: 0 auto; text-align: center;">
		<div class="row cf-row">
			<div class="col-12 my-3 py-3">
				<div class="col-12 px-2">
					<img src="../img/edu-pv-img-01.png" alt="구분선">
					<div class="col-12 my-4"></div>
					<p class="font-black font-40 font-bold my-2 px-2 ">&nbsp;&nbsp;&nbsp;&nbsp;크루팩토리가 제안하는</p>
					<p class="font-black font-95-m font-bold my-2 px-2 ">
						<span class="sky-95 counter2" style="color: #fc229c">1,200</span><span style="color: #fc229c">분</span>
					</p>
					<div class="col-12 my-5"></div>
					<p class="font-black font-thin-bold font-30 my-4 px-5 ">탈락을 합격으로 바꾸는</p>
					<p class="font-black font-thin-bold font-35 my-4 px-5 ">
						<span style="color: #fc229c">승무원 과외 과정</span>
					</p>
					<div class="col-12 my-8 mobile-hidden"></div>
				</div>
			</div>
			<div class="row cf-row">
				<div class="col-12 my-4 py-3">
					<div class="col-12"></div>
					<div class="col-1"></div>
					<div class="col-5" id="mobile-col-6">
						<img src="../img/edu-pv-img-02.png" alt="면접의 방향성" id="moimg">
					</div>
					<div class="col-6 my-3" style="text-align: left;" id="mobile-100-percent">
						<p class="font-45 font-thin font-black my-3 px-5 ">면접의 방향성을</p>
						<p class="font-50 font-thin-light font-bold font-black my-3 px-5 ">
							바꾸는 <span style="color: #fc229c">1,200분</span>
						</p>
						<p class="font-20 font-thin font-gray my-3 px-5" style="line-height: 30px;">
							이미 늦었다고 생각하고 있나요?<br>주어진 시간동안 개인의 성향을 파악<br>항공분야에 적합한 체계적인 이론/실습교육<br>승무원 출신 교관 및 전문 강사진의<br>전문적이고 실용적인 교육<br> 개인 needs에 맞는 객실승무원 양성<br> <span style="color: #000000">1,200분은 많은 것을 바꿀 수 있습니다.</span>
						</p>
						<br>
					</div>
				</div>
			</div>
			<div class="row cf-row">
				<div class="col-3"></div>
				<div class="col-6 mobile-show text-center" id="mobile-50-percent" style="margin-bottom: -100px;">
					<img src="/img/line-img-pv.png">
				</div>
				<div class="col-3"></div>
			</div>
			<div class="row cf-row">
				<div class="col-12 my-4">
					<div class="col-12 my-8"></div>
					<div class="col-5 my-3" style="text-align: right;" id="mobile-col-6">
						<p class="font-45 font-thin font-black my-3 px-5 ">결과의 차이를</p>
						<p class="font-50 font-thin-light font-bold font-black my-3 px-5 ">
							만드는 <span style="color: #fc229c">1,200분</span>
						</p>
						<p class="font-20 font-thin font-gray my-3 px-5" style="line-height: 30px;">
							언제까지 똑같은 학원패턴?<br>학생 개개인별 성향에 맞는 1:1 맞춤 교육<br>합격의 결과는 어떻게 하느냐에 따라<br>매우 다양한 패턴으로 다가옵니다<br> <span style="color: #000000">1,200분은 많은 경험을 가지게 됩니다.</span>
						</p>
					</div>
					<div class="col-7" id="mobile-col-6">
						<img src="../img/edu-pv-img-03.png" alt="결과의차이" id="moimg">
					</div>
					<div class="col-1 my-5"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="row cf-row3 my-6 edu-sub-pv-bg" style="height: 100%;">
		<div class="col-12 py-5">
			<div class="col-2"></div>
			<div class="col-4 px-5 py-6" id="mobile-100-percent">
				<p class="font-20 font-thin font-gray my-3 px-4 ">면접의 기초 개념형성에서</p>
				<p class="font-20 font-thin font-gray my-3 px-4 ">면접 실전 심화과정까지의 교육으로</p>
				<p class="font-20 font-thin-light font-gray my-3 px-4">단기간 서류부터 최종합격까지 이끌어 내는</p>
				<p class="font-45-m font-thin font-bold  font-black mt-5 my-3 px-4" style="line-height: 50px;">크루팩토리만의<br>
					<span style="color: #fc229c">올바른 과외 Solution</span>
				</p>
			</div>
			<div class="col-3 my-5" style="text-align: center;" id="mobile-100-percent">
				<img src="/img/edu-pv-new-img-002.png" id="mobile-75-percent">
			</div>
			<div class="col-3"></div>
		</div>
	</div>
	<div class="row edu-pv-con" id="mobile-100-percent">
		<div class="col-12 my-5">
			<div class="col-12"></div>
			<div class="col-12">
				<img src="/img/edu-pv-new-img-001.png" id="mobile-100-percent">
			</div>
		</div>
	</div>

<!--  FACT1 -->
	<div class="container-fluid" style="margin: 0 auto; text-align: center;">
		<div class="row cf-row">
			<div class="col-12">
				<div class="col-12 px-2">
					<img src="../img/edu-pv-img-01.png" alt="구분선">
					<div class="col-12 my-4"></div>
					<p class="font-black font-50 font-bold my-2 px-2 ">
						<span class="sky-95 counter2" style="color: #fc229c">FACT 01</span>
					</p>
					<p class="font-black font-thin-bold font-26-m my-4 px-5 ">나랑 맞는스타일의 과외 선택</p>
					<div class="col-12 my-5"></div>
					<div class="col-1"></div>
					<div class="col-5 px-1 mt-3" style="text-align: center;" id="mobile-100-percent">
						<p class="font-pink font-30-m font-bold">
							<span class="font-30-m">01</span>
						</p>
						<div class="line-2 my-2" style="width: 120px; margin: 0 auto;"></div>
						<p class="font-gray font-24-m">Choice 1:1</p>
						<br>
						<p class="font-16-m font-thin font-gray my-3 px-2" style="line-height: 30px;">
							100% 나의 스케줄에 맞춘 1:1과외<br>1:1 진행으로 면접 준비 단기간 가능<br> <span style="color: #000000">[1:1]선호자유형 - 호텔/병원/지상직 및 스케줄 근무하는 이직 준비자</span>
						</p>
						<img src="../img/edu-pv-new-img-003.png" alt="면접의 방향성" id="moimg" class="mobile-100-percent">
					</div>
					<div class="col-5 px-1 mt-3" style="text-align: center;" id="mobile-100-percent">
						<p class="font-pink font-30-m font-bold">
							<span class="font-30-m">02</span>
						</p>
						<div class="line-2 my-2" style="width: 120px; margin: 0 auto;"></div>
						<p class="font-gray font-24-m">Choice 1:8</p>
						<br>
						<p class="font-16-m font-thin font-gray my-3 px-2" style="line-height: 30px;">
							평일(오전/오후/저녁) / 주말(오전/오후) 다양한 1:8 과외<br>실제 항공사 면접 인원 '8명'에 맞춘 소수정예 그룹 과외<br> <span style="color: #000000">[1:8]선호자유형 - 대다수가 선호하는 가장 인기있는 과외 프로그램</span>
						</p>
						<img src="../img/edu-pv-new-img-004.png" alt="면접의 방향성" id="moimg" class="mobile-100-percent">
					</div>
					<div class="col-1"></div>
				</div>
			</div>

<!--  FACT2 -->
			<div class="row cf-row py-2">
				<div class="col-12 px-2">
					<div class="col-1"></div>
					<div class="col-5 mobile-100-percent">
						<img src="../img/edu-pv-new-img-005.png" alt="면접의 방향성" id="moimg" class="mobile-100-percent">
					</div>
					<div class="col-6 my-3" style="text-align: left;" id="mobile-100-percent">
						<p class="font-black font-50-m font-bold my-2 px-5 ">
							<span class="sky-95 counter2" style="color: #fc229c">FACT 02</span>
						</p>
						<p class="font-black font-thin-bold font-26-m my-4 px-5 ">분절된 면접방식 No! 연관성 있는 면접 교육</p>
						<p class="font-20-m font-thin font-gray my-3 px-5" style="line-height: 30px;">
							면접에서는 이미지 혹은 대처능력/답변 등<br>낱개로 분절된 면접 방법은 힘이 없습니다<br> <span style="color: #000000">기본개념과 체계적인 기본과정들이 서로 연결될 때<br>탄탄한 면접의 기초를 만들며 최종 합격으로 연결됩니다
							</span><br> 승무원 과외에서 처음 마음가짐 즉 방향을 어떻게 잡고<br>시작하느냐에 따라 내가 배우는 면접 개념의 흐름과<br>앞서 배운 기초과정들의 연관성, 앞으로 배울 면접 실전을<br>위한 심화 과정까지 제대로 파악할 수 있습니다
						</p>
						<br>
					</div>
				</div>
			</div>
			<div class="row cf-row">
				<div class="col-3"></div>
				<div class="col-6 mobile-show text-center" id="mobile-50-percent" style="margin-bottom: -100px;">
					<img src="/img/line-img-pv.png">
				</div>
				<div class="col-3"></div>
			</div>
		</div>
	</div>
	<div class="row cf-row my-8">
		<div class="col-6"></div>
		<div class="col-6"></div>
	</div>

<!--  FACT3 -->
	<div class="container-fluid bg-light-gray py-5" style="margin: 0 auto; text-align: center;">
		<div class="row cf-row">
			<div class="col-12 my-4">
				<div class="col-5 my-3" style="text-align: right;" id="mobile-100-percent">
					<p class="font-black font-50-m font-bold my-2">
						<span class="sky-95 counter2" style="color: #fc229c">FACT 03</span>
					</p>
					<p class="font-black font-thin-bold font-26-m my-4">개인 맞춤형 커리큘럼</p>
					<p class="font-20-m font-thin font-gray my-3" style="line-height: 30px;">
						개인의 장·단점 파악 후 부족한 부분을 채우는 교육을 진행<br>체계적인 커리큘럼으로단기간에 최종합격까지의<br>가능성을 끌어내 줍니다
					</p>
					<br>
					<p class="font-20-m font-light-thin font-pink my-3" style="line-height: 30px;">※ 1:1 / 1:8 두 과외수업 모두 1:1 첨삭을 필수 조건</p>
				</div>
				<div class="col-6" id="mobile-col-6">
					<img src="../img/edu-pv-new-img-006.png" alt="결과의차이" id="moimg">
				</div>
				<div class="col-1 my-5"></div>
			</div>
		</div>
	</div>
	<div class="container-fluid" style="margin: 0 auto; text-align: center;">
		<div class="row cf-row my-8">
			<div class="col-6"></div>
			<div class="col-6"></div>
		</div>

<!--  FACT4 -->
		<div class="row cf-row py-2">
			<div class="col-12 px-2">
				<div class="col-1"></div>
				<div class="col-5 mobile-100-percent">
					<img src="../img/edu-pv-new-img-007.png" alt="면접의 방향성" id="moimg" class="mobile-100-percent">
				</div>
				<div class="col-6 my-3" style="text-align: left;" id="mobile-100-percent">
					<p class="font-black font-50-m font-bold my-2 px-5 ">
						<span class="sky-95 counter2" style="color: #fc229c">FACT 04</span>
					</p>
					<p class="font-black font-thin-bold font-26-m my-4 px-5 ">단기간에 가능한 면접매너 + 이미지메이킹</p>
					<p class="font-20-m font-thin font-gray my-3 px-5" style="line-height: 30px;">
						이미지메이킹(시각적+청각적) + 승무원의 기본 자질 교육<br> <span style="color: #000000">원장/부원장진의 15년 이상 비행경력과<br>기본 5년 이상의 탄탄한 강의 경력으로
						</span><br> 승무원 이미지 만들기부터 면접 매너까지 교육
					</p>
					<p class="font-20-m font-light-thin font-pink my-3 px-5" style="line-height: 30px;">※ 보이스트레이닝은 스피치 전문 강사가 직접 진행</p>
					<br> <br>
				</div>
			</div>
		</div>
		<div class="row cf-row">
			<div class="col-3"></div>
			<div class="col-6 mobile-show text-center" id="mobile-50-percent" style="margin-bottom: -100px;">
				<img src="/img/line-img-pv.png">
			</div>
			<div class="col-3"></div>
		</div>

<!--  FACT5 -->
		<div class="row cf-row">
			<div class="col-12 my-4">
				<div class="col-12 my-8"></div>
				<div class="col-5 my-3" style="text-align: right;" id="mobile-100-percent">
					<p class="font-black font-50-m font-bold my-2">
						<span class="sky-95 counter2" style="color: #fc229c">FACT 05</span>
					</p>
					<p class="font-black font-thin-bold font-26-m my-4">
						나만의 이야기<br>합격의 단락을 결정 짓는 스토리텔링
					</p>
					<p class="font-20-m font-thin font-gray my-3" style="line-height: 30px;">
						항공사 기업분석 및 채용 이해는 당연!<br>매번 바뀌는 자기소개서 항목과 <br>남들과 차별화 된 나만의 답변을 할 수 있도록<br>개별 피드백 및 면담 상시 진행
					</p>
					<p class="font-20-m font-light-thin font-pink my-3" style="line-height: 30px;">※ 자기소개서 및 답변 1:1 첨삭 상시 진행</p>
				</div>
				<div class="col-6" id="mobile-col-6">
					<img src="../img/edu-pv-new-img-009.png" alt="" id="moimg">
				</div>
				<div class="col-1 my-5"></div>
			</div>
		</div>
	</div>
	<div class="row cf-row my-8">
		<div class="col-6"></div>
		<div class="col-6"></div>
	</div>

<!--  FACT6 -->
	<div class="container-fluid bg-light-gray py-5" style="margin: 0 auto; text-align: center;">
		<div class="row cf-row py-2">
			<div class="col-12 px-2">
				<div class="col-1"></div>
				<div class="col-5 mobile-100-percent">
					<img src="../img/edu-pv-new-img-010.png" alt="" id="moimg" class="mobile-100-percent">
				</div>
				<div class="col-6 my-3" style="text-align: left;" id="mobile-100-percent">
					<p class="font-black font-50-m font-bold my-2 px-5 ">
						<span class="sky-95 counter2" style="color: #fc229c">FACT 06</span>
					</p>
					<p class="font-black font-thin-bold font-26-m my-4 px-5 ">면접 절차별 다른점 파악 훈련</p>
					<p class="font-20-m font-thin font-gray my-3 px-5" style="line-height: 30px;">
						수강생 개별 분석없이 당장의 피드백에 <br>급급해 하는 것이 아닌 1:1 상시면접을 통하여<br> 꼼꼼하게 분석 후 수강생 본인의 능력을<br>실제 면접에 적응시킬 수 있도록 하는 실전 훈련
					</p>
					<p class="font-20-m font-light-thin font-pink my-3 px-5" style="line-height: 30px;">
						※ 1차 실무면접 > 2차 임원면접 > 최종면접<br>※ 절차별로 주안점이 다르기에 모의면접도 실전처럼 진행
					</p>
					<br> <br>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid" style="margin: 0 auto; text-align: center;">
		<div class="row cf-row" style="margin-bottom: -100px;">
			<div class="col-3"></div>
			<div class="col-3 my-8"></div>
		</div>

<!--  FACT7 -->
		<div class="col-12">
			<div class="col-12 px-2">
				<img src="../img/edu-pv-img-01.png" alt="구분선">
				<div class="col-12 my-4"></div>
				<p class="font-black font-50 font-bold my-2 px-2 ">
					<span class="sky-95 counter2" style="color: #fc229c">FACT 07</span>
				</p>
				<p class="font-black font-thin-bold font-26-m my-4 px-5 ">차별화 된 남다른 관리</p>
				<div class="col-12">
					<p class="font-20-m font-light-thin font-pink my-3 px-5" style="line-height: 30px;">※ 3인 관리 체계</p>
					<p class="font-20-m font-thin font-gray my-3 px-5" style="line-height: 30px;">1:1 개별담당 + 1:8 그룹별 담임배정 + 교수부 1인 담당배정</p>
					<img src="../img/edu-pv-new-img-013.png" alt="" id="moimg" class="mobile-100-percent">
				</div>
			</div>
		</div>
		<div class="row cf-row" style="margin-bottom: -100px;">
			<div class="col-3"></div>
			<div class="col-3 my-8"></div>
		</div>
		
<!--  FACT8 -->
		<div class="col-12">
			<div class="col-12 px-2">
				<img src="../img/edu-pv-img-01.png" alt="구분선">
				<div class="col-12 my-4"></div>
				<p class="font-black font-50 font-bold my-2 px-2 ">
					<span class="sky-95 counter2" style="color: #fc229c">FACT 08</span>
				</p>
				<p class="font-black font-thin-bold font-26-m my-4 px-5 ">면접 선발대회 특별 프로그램</p>
				<div class="col-12">
					<p class="font-20-m font-light-thin font-pink my-3 px-5" style="line-height: 30px;">
						※ 1차 실무면접 > 2차 임원면접 > 최종면접<br>※ 절차별로 주안점이 다르기에 모의면접도 실전처럼 진행
					</p>
					<p class="font-20-m font-thin font-gray my-3 px-5" style="line-height: 30px;">대한항공데이 / 아시아나항공데이 / 스카이팀선발대회</p>
					<img src="../img/edu-pv-new-img-014.png" alt="" id="moimg" class="mobile-100-percent">
				</div>
			</div>
		</div>
	</div>
	<div class="row cf-row">
		<div class="col-3"></div>
		<div class="col-3 my-8"></div>
	</div>

<!-- 컨텐츠 종료 -->
	<div class="container-fluid edu-banner-pv2-container">
		<div class="row cf-row">
			<div class="col-12">
				<div class="col-12 my-7"></div>
				<div class="col-12" style="text-align: center;">
					<p class="font-50-m font-thin-light font-white px-5 my-3">꿈을 위한 1,200분</p>
					<p class="font-50-m font-thin-light font-bold font-white px-5 ">지금이 시작입니다.</p>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row cf-row2 mobile-100-percent">
			<div class="col-12"></div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row cf-row2 mobile-100-percent">
			<div class="col-12 my-5">
				<img src="../img/edu-pv-img-05.png" id="mobile-100-percent">
			</div>
		</div>
	</div>

	<%@ include file="../include/footlink.jsp"%>

	<!-- 상담신청 -->
	<%@ include file="../include/counsel.jsp"%>

	<footer>
		<%@ include file="../include/footer.jsp"%>
	</footer>
	<script>
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

		$(document).ready(function($) {
			$('.counter').counterUp({
				delay : 10,
				time : 3000
			});
		});

		$(document).ready(function($) {
			$('.counter2').counterUp({
				delay : 10,
				time : 2000
			});
		});

		var wow = new WOW({
			animateClass : 'animated',
			offset : 100
		});

		wow.init();
	</script>
	<script src="../dist/js/jquery.counterup.min.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
	<script src="../dist/js/bootstrap.min.js"></script>
	<script src="../dist/js/swiper.min.js"></script>
</body>
</html>