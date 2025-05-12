<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/site.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title><%= site_title %>-크루팩토리</title>
<meta name="description" content="<%= site_descript %>" />
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file="../include/header.jsp"%>
</head>
<body>
	<%@ include file="../include/nav.jsp"%>
	<%@ include file="../include/floating-left.jsp"%>


	<!-- 사이즈 1920로 스크롤생김 -->
<!--<div class="container-fluid" style="background:url('/img/new_derail-bg.jpg') no-repeat top;">
	<div class="row sub-row">
		<div class="col-12">
			<img src="/img/new_d01_01.png" class="mobile-100-percent">
		</div>
		<div class="col-12 py-5">
	        <div class="text-left">
	          		<p class="font-20-m" style="line-height:2rem;">코로나19 바이러스로 인해 가장 큰 타격을 받은 업계가 항공, 여행업이 아닐까 합니다.</p>
				   	<p class="font-20-m"  style="line-height:2rem;">하늘길이 모두 막히고 국가간의 입국금지 등 통제로 인해 우리에게 유일한 힐링이었던 여행마저 멈추게 되었습니다. </p><br><br>
					<p class="font-20-m" style="line-height:2rem;">신규 채용은커녕 기존 직원들의 일자리도 위협 받고 있습니다.</p>
					  <p class="font-20-m" style="line-height:2rem;">객실 승무원 취업 교육에 종사하는 일원으로서 같은 꿈을 꾸고 있는 분들에게 진심으로 위로의 말씀을 전합니다.</p>
						<p class="font-20-m" style="line-height:2rem;">하지만 바이러스는 언젠간 종식될 것이고, 항공업은 순식간에 회복될거라 예상합니다.</p><br><br>
						<p class="font-20-m" style="line-height:2rem;">이후 단언컨대 지금보다 더 많은 인재가 필요할 것이며, 우리나라 항공 산업은 한 단계 도약할 것입니다.</p><br>
						<p class="font-20-m" style="line-height:2rem;">객실 승무원 교육에 발을 들여 놓았던 15년전, 대한항공, 아시아나항공을 포함 4~5개 였던 항공사가 <br>지금은 2배를 넘어 13개의 항공사가 불과 몇 개월전 까지만 해도 활발하게 운항 중이었고,<br> 또 다른 3~4개의 신규 항공사가 취항을 준비하고 있었습니다</p><br><br>
						<p class="font-20-m" style="line-height:2rem;">이런 부분들이 우리나라 항공산업이 빠르게 성장하고 있다는 증거입니다.</p>
						<p class="font-20-m" style="line-height:2rem;">지난 15년간 취업교육은 물론 모의 면접에 직접 참여한 경험을 토대로 어려운 시기에도 <br>객실승무원의 꿈을 붙잡고 있는 여러분들에게 2개의 조언을 드리고자 합니다.</p><br><br>
						<p class="font-22-m font-bold" style="line-height:2rem;">첫째</p><br>
						<p class="font-20-m" style="line-height:2rem;">대부분의 지원자들은 단기간 내에 면접에 대한 대응력을 높이고자 하는 조급함입니다.</p>
						<p class="font-20-m" style="line-height:2rem;">우리는 알고 있습니다. 수많은 사람들이 대기업에 취업을 위해 심지어 초등학교 때부터 성적을 관리하고스펙을 쌓으며,<br>명문대를 가고자 밤낮을 가리지 않고 공부합니다.</p><br><br>
						<p class="font-20-m" style="line-height:2rem;">물론 객실승무원은 다른 직종에 비해 학력, 스펙등 에 대한 중요도가 떨어집니다. </p>
						<p class="font-20-m" style="line-height:2rem;">그러나 이것은 그만큼 대면면접의 중요도가 <span class="font-bold">“전부이다”</span> 라는 의미입니다.</p>
						<p class="font-20-m" style="line-height:2rem;">면접에서 다른 지원자들 보다 우수한 대응력은 단기간에 몇가지 지식을 습득해서 이룰 수 있는 역량이 아닙니다.</p><br><br>
						<p class="font-20-m" style="line-height:2rem;"><span class="font-bold">“면접은 버릇이다” </span> 라는 말처럼 면접의 기본을 이해하고 짧은 호흡으로 가장 기본적인 질문에도 설익은 답변이 아니라,<br>긴 호흡으로 자신의 진정성 있는 모습을 찾아서 아낌없이 발휘하시기 바랍니다.</p><br><br>
						<p class="font-20-m" style="line-height:2rem;">취업에 실패하는 이유는 자신을 알아주는 기업이 없어서가 아니라 자신의 진면목을 보여주지 못해서입니다.</p><br><br>
						<p class="font-22-m font-bold" style="line-height:2rem;">둘째</p><br>
						<p class="font-20-m" style="line-height:2rem;">불확실하고 일어나지 않는 미래에 불안해하지 맙시다.</p>
						<p class="font-20-m" style="line-height:2rem;">앞에서 언급했듯이 비행기는 반드시 다시 뜨게 될 것이며 그 숫자 또한 지금보다 많아질 것입니다.</p>
						<p class="font-20-m" style="line-height:2rem;">이런 상황이 정상화되고 채용이 다시 이루어지면 경쟁률은 더욱 심화될 것이 불 보듯 뻔합니다.</p>
						<p class="font-20-m" style="line-height:2rem;">준비한 자나 그렇지 않은 자의 차이는 더욱 뚜렷해질 것입니다. 그래서<span class="font-bold"> “위기는 기회다” </span> 라는 말이 딱 맞는 시기입니다.</p><br><br>
						<p class="font-20-m font-bold" style="line-height:2rem;">항공사 채용을 걱정하기 보단, 본인의 경쟁력을 얼마나 높일 수 있을지 가 더 중요한 시점입니다.</p><br>
						<p class="font-20-m" style="line-height:2rem;">좌고우면하지 말고, 또 뒤돌아보지 말고 뚜벅뚜벅 앞으로 나아갑시다.</p><br><br>
						<p class="font-24-m font-bold" style="line-height:2rem;">“깜깜한 암흑이 지나고 다시 밝은 날이 오면 여러분은 이미 항공승무원입니다.”</p><br><br><br><br><br>
						<p class="font-22-m text-right" style="line-height:2rem;"><img src="/img/logo.png"><br></p><br><br><br>
			   </div>
		   </div>
	</div>
</div> -->
<div class="container-fluid mobile-hidden">
	<div class="row">
		<div class="col-12"><img src="/img/realreview-bg-001.jpg"  style="width: 100%;"class="mobile-100-percent"></div>	
	</div>
	<div class="row main-row">
		<div class="col-12 text-center"><img src="/img/realreview-bg-002.jpg" class="mobile-100-percent"></div>	
	</div>
	<div class="row">
		<div class="col-12"><img src="/img/realreview-bg-003.jpg" style="width: 100%;" class="mobile-100-percent"></div>	
	</div>
	<div class="row">
		<div class="col-12 text-center"><img src="/img/realreview-bg-004.jpg"  style="width: 100%;" class="mobile-100-percent"></div>	
	</div>
	<div class="row main-row">
		<div class="col-12 text-center"><img src="/img/realreview-bg-005.jpg" class="mobile-100-percent"></div>	
	</div>
</div>

<div class="container-fluid mobile-show">
	<div class="row">
		<div class="col-12"><img src="/img/realreview-bg-001.jpg" class="mobile-100-percent"></div>	
	</div>
	<div class="row main-row">
		<div class="col-12 text-center"><img src="/img/realreview-bg-002_1.jpg" class="mobile-100-percent"></div>	
	</div>
	<div class="row">
		<div class="col-12"><img src="/img/realreview-bg-003.jpg" class="mobile-100-percent"></div>	
	</div>
	<div class="row">
		<div class="col-12 text-center"><img src="/img/realreview-bg-004_1.jpg" class="mobile-100-percent"></div>	
	</div>
	<div class="row main-row">
		<div class="col-12 text-center"><img src="/img/realreview-bg-005_1.jpg" class="mobile-100-percent"></div>	
	</div>
</div>

	


	<!-- 하단링크 -->
	<%@ include file="../include/footlink.jsp"%>

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
			<input type="hidden" name="reurl" value="/detail/new_detail01.do"/>
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
 		location.href="/detail/new_detail01.do";
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