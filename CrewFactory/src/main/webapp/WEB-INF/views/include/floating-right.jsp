<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<script>

	function hideObject(obj){
		$(obj).hide();
	}
</script>


<div class="right-floating-bar mobile-hidden">
	<div class="col-12">
		<ul>
			<li class="border bg-ivory mb-2" style="height: 90px;">
				<div class="col-12 py-3">
					<div class="col-12 px-3 py-1 font-12 font-black float-left">대표번호</div>
					<div class="col-12 px-3 py-1 font-18 font-black float-left font-bold">02-2038-0065</div>
				</div>
			</li>
			<li class="border bg-white" style="height: 200px;">
				<div class="col-12 pt-4 align-middle text-center">
					<a href="/counsel/online.do?cost=y&imgchk="><img src="/img/ico-r-floating-counsel.jpg">
					<p class="px-3 py-2 font-14 font-gray">
						나에게 맞는 <br> <span class="font-bold font-black">커리큘럼</span>과 <span class="font-bold font-black">수강료</span>를 <br>상담해보세요.
					</p>
					</a>
				</div>
			</li>
			<li class="bg-os-red" style="height: 50px;">
				<a href="" data-toggle="modal" data-target="#counselingModal">
					<div class="col-12 align-middle text-center">
						<p class="px-3 py-3 font-16 font-bold font-white">빠른상담신청</p>
					</div>
				</a>
			</li>
			<li>
				<div class="col-12 align-middle text-center py-3">
					<img src="/img/top-btn-mobile.png" style="width: 30%;" onclick="$('html').animate({scrollTop : 0}, 800)">
				</div>
			</li>
		</ul>
	</div>
</div>


<div class="container-fluid wow bounceInRight" id="showland" style="display:none; bottom:40px; right:30px; position:fixed; width:300px; height:170px; z-index:2020;"> 
	<div class="row">
		<div class="col-12 ">
			<button onclick="hideObject('#showland')" style="position:absolute; z-index:999; top:30px; right:10px; width:18px; height:18px;"><img src="/img/ico-close.png" width="18px" height="18px"></button>
			<div class="col-12" style="position:relative;"><a href="/detail/open.do"><img src="/img/landing-visual-01-txt.png"></a></div>
		</div>
	</div>
</div> 

<div class="container-fluid wow bounceInRight" id="showland-m" style="display:none; bottom:60px; right:10px; position:fixed; width:180px; height:140px; z-index:2020;"> 
	<div class="row">
		<div class="col-12 text-right">
			<button onclick="hideObject('#showland-m')" style="position:absolute; z-index:999; top:2px; right:8px; width:15px; height:15px;"><img src="/img/ico-close.png" width="13px" height="13px"></button>
			<div class="col-12" style="position:relative;"><a href="/landing.do"><img src="/img/landing-visual-01-txt-m.png" width="180px" height="140px;"></a></div>
		</div>
	</div>
</div>

<div class="container-fluid mobile-show" style="bottom:00px; right:10px; position:fixed; width:180px; height:140px; z-index:2020;"> 
	<div class="row">
		<div class="col-12 text-right">
			<div class="col-12" style="position:relative;"><a href="tel:02-2038-0065"><img src="/img/ico-tel.png" width="50%"></a></div>
		</div>
	</div>
</div>


<!-- 상담 -->

<div class="bottom-floating-bar-mobile mobile-show bg-pink text-center">
	<a href="#counselingModal" data-toggle="modal" target="_blank"><p class="font-20 font-bold font-white" style="margin-top:12px;">빠른 승무원 상담 문의</p></a>
</div>

<!-- <div class="right-floating-bar-mobile mobile-show">
	<div class="col-12 text-center" style="margin: 0 auto;">
		<a href="#counselingModal" data-toggle="modal" class="intro-banner-vdo-play-btn pinkBg" target="_blank"> <i class="glyphicon glyphicon-play whiteText" aria-hidden="true"><img src="/img/intro-sangdam.png" style="width: 70%"></i> <span class="ripple pinkBg"></span>         <span class="ripple pinkBg"></span>
        <span class="ripple pinkBg"></span>
		</a>
	</div>
</div>
<div class="right-floating-topbar-mobile hide">
	<div class="col-12 text-center" style="margin: 0 auto;">
		<a data-toggle="modal" class="intro-banner-vdo-play-btn" target="_blank"> <i class="glyphicon glyphicon-play whiteText" aria-hidden="true"><img src="/img/top-btn-mobile.png" style="width: 60%;" onclick="$('html').animate({scrollTop : 0}, 800)"></i></a>
	</div>
</div> -->



<!-- div class="right-floating-bar-mobile mobile-show">
  <div class="col-12">
   	<a href="#counselingModal" data-toggle="modal">
   	  <img src="/img/ico-r-floating-counsel-mobile.png">
   	</a>
  </div> 
</div -->


<!-- Modal -->
<form role="form" name="quick_counsel" data-toggle="validator">
<input type="hidden" name="domain" value="<%= request.getServerName() %>">
<input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
	<div class="modal fade" id="counselingModal" tabindex="-1" role="dialog" aria-hidden="true" style="z-index:9999;">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header bg-ivory">
					<p class="modal-title font-24 font-bold">
						<img src="/img/logo.png">
					</p>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="col-12 px-3">
						<p class="my-3">입력하신 전화번호는 상담목적이외의 어떠한 용도로도 사용되지 않습니다.</p>
						<div class="col-12 py-2">
							<div class="col-2 py-3">이름</div>
							<div class="col-10">
								<div class="input-group">
									<input type="text" class="form-control" name="quick_name" id="quick_name" onkeyup="onlyKorean('quick_name')" placeholder="이름" maxlength="10" data-error="이름을 정확히 입력하세요" required>
									<span class="py-3 input-group-append mx-4">나이</span> 
									<input type="text" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="quick_age" id="quick_age" data-error="나이를 정확히 입력하세요"  maxlength="2" placeholder="나이" required>
									<div class="help-block with-errors text-danger"></div>
								</div>
							</div>
						</div>
						<div class="col-12 py-2">
							<div class="col-2 py-3">전화번호</div>
							<div class="col-10">
								<div class="input-group">
									<select class="form-control mr-2" id="quick_mobile-1" style="height: 3.75rem;">
										<option value="010">010</option>
									</select> 
									<input type="text" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="quick_mobile-2" id="quick_mobile-2" required maxlength="4" placeholder="앞번호" data-error="연락처를 정확히 입력하세요" > 
									<input type="text" class="form-control input-group-append" oninput="maxLengthCheck(this)" name="quick_mobile-3" id="quick_mobile-3" required maxlength="4" placeholder="뒷번호" data-error="연락처를 정확히 입력하세요">
								</div>
								<div class="help-block with-errors text-danger"></div>
							</div>
						</div>
						<div class="col-12 py-2">
							<div class="col-2 py-3">관심분야</div>
							<div class="col-10">
								<div class="input-group">
									<select class="form-control mr-2" id="hopse" name="hopse" style="height: 3.75rem;">
										<option value="대한항공/아시아나항공">대한항공/아시아나항공</option>
										<option value="국내항공사">국내항공사</option>
										<option value="외국항공사">외국항공사</option>
										<option value="남자승무원(스튜어드)">남자승무원(스튜어드)</option>
										<option value="항공사지상직승무원">항공사지상직승무원</option>
										<option value="항공운항과대학입시">항공운항과대학입시</option>
									</select>
								</div>
							</div>
						</div>
						<div class="col-12 py-2">
							<div class="col-2 py-3"></div>
							<div class="col-10">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" name="quick_agree" value="yes" id="quick_agree" class="custom-control-input" checked> <label for="agree" class="custom-control-label">개인정보 이용방침에 동의합니다. <span class="mx-2"><a href="" data-toggle="modal" data-target="#personalInfo"><b>자세히보기</b></a></span></label>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-lg btn-block btn-primary font-white font-bold" id="btnCounsel">상담신청</button>
				</div>
			</div>
		</div>
	</div>
</form>

<div class="modal fade bd-example-modal-lg" id="personalInfo" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header bg-ivory">
				<p class="modal-title font-24 font-bold">
					<img src="/img/logo.png">
				</p>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="col-12 px-3" style="overflow: auto; width: 100%; height: 500px;">
					<p class="my-3">㈜ 백아 크루팩토리승무원학원(이하 ‘학원’이라 함) 개인정보처리방침은 다음과 같은 내용을 담고 있습니다.</p>
					<br> 1. 개인정보의 처리 목적<br>
					<p class="mx-2">
						- 학원은 다음의 목적을 위하여 개인정보를 처리하고 있으며, 다음의 목적 이외의 용도로는 이용하지 않습니다.<br> - 고객 가입의사 확인, 고객에 대한 서비스 제공에 따른 본인 식별.인증, 회원자격 유지,관리 물품 또는 서비스 공급에 따른 금액 결제, 물품 또는 서비스의 공급.배송 등
					</p>
					<br> 2. 개인정보의 처리 및 보유 기간<br>
					<p class="mx-2">
						- 학원은 정보주체로부터 개인정보를 수집할 때 동의 받은 개인정보 보유/이용기간 또는 법령에 따른 개인정보<br> - 보유/이용기간 내에서 개인정보를 처리.보유하며 구체적인 개인정보 처리 및 보유 기간은 다음과 같습니다.<br> 아래 예시를 참고하여 개인정보 처리업무와 개인정보 처리업무에 대한 보유기간 및 관련 법령, 근거 등을 기재합니다.<br> (예시)<br> - 고객 가입 및 관리 : 서비스 이용계약 또는 회원가입 해지시까지, 다만 채권.채무관계 잔존시 해당 채권.채무관계 정산까지<br>
						- 전자상거래에서의 계약.청약철회, 대금결제, 재화 등 공급기록 : 5년<br>
					</p>
					<br> 3. 개인정보 주체자의 권리와 의무<br>
					<p class="mx-2">
						정보주체와 법정대리인의 권리·의무 및 그 행사방법 이용자는 개인정보주체로써 다음과 같은 권리를 행사할 수 있습니다.<br> 정보주체는 학원에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.<br> - 개인정보 열람요구<br> - 오류 등이 있을 경우 정정 요구<br> - 삭제요구<br> - 처리정지 요구<br>
					</p>
					<br> 4. 처리하는 개인정보의 항목 작성<br>
					<p class="mx-2">
						학원은 정보주체의 온라인상담 관련(상담신청, 이미지체크, 시간표조회, 1:1이력서무료상담, 지원가능한 항공사조회, 위탁교육문의)을 위해 개인정보를 아래와 같이 수집하고 있습니다.<br> - 성명, 전화번호, 나이, 성별, 키, 몸무게, 최종학력, 외국어능력<br>
					</p>
					<br> 5. 개인정보의 파기절차 및 기한<br>
					<p class="mx-2">
						개인정보의 파기('학원')은 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체 없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.<br> - 파기절차<br> 이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.<br> - 파기기한<br> 이용자의
						개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.<br>
					</p>
					<br> 6. 개인정보 자동 수집 장치의 설치.운영 및 거부에 관한 사항<br>
					<p class="mx-2">
						학원은 개별적인 맞춤서비스를 제공하기 위해 이용정보를 저장하고 수시로 불러오는 ‘쿠기(cookie)’를 사용합니다. 쿠키는 웹사이트를 운영하는데 이용되는 서버(http)가 이용자의 컴퓨터 브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다.<br> 가. 쿠키의 사용 목적 : 이용자가 방문한 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 인기 검색어, 보안접속 여부, 등을 파악하여 이용자에게 최적화된 정보 제공을 위해 사용됩니다. <br> 나. 쿠키의
						설치.운영 및 거부 : 웹브라우저 상단의 도구>인터넷 옵션>개인정보 메뉴의 옵션 설정을 통해 쿠키 저장을 거부 할 수 있습니다<br> 다. 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.<br>
					</p>
					<br> 7. 개인정보 보호책임자 작성<br>
					<p class="mx-2">
						학원은 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.<br> 개인정보 보호책임자<br> ·성명 :백철<br> ·직책 :CEO<br> ·직급 :대표이사<br> ·연락처 :0220387273, sasoo107@hanmail.net, 025471467<br> <br> 개인정보 보호 담당부서<br> ·부서명 :온라인사업부<br>
						·담당자 :백철<br> ·연락처 :0220387273, sasoo107@hanmail.net, 025471467<br> 정보주체께서는 학원의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. 학원은 정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다.<br>
					</p>
					<br> 8. 개인정보 처리방침 변경<br>
					<p class="mx-2">
						이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.<br>
					</p>
					<br> 9. 개인정보의 안전성 확보 조치 ('크루팩토리')은(는) 개인정보보호법 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.<br>
					<p class="mx-2">
						1. 개인정보 취급 직원의 최소화 및 교육<br> 개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다.<br> 2. 개인정보에 대한 접근 제한<br> 개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여,변경,말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.<br> 3. 비인가자에 대한 출입 통제<br> 개인정보를
						보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.<br>
					</p>
					<br>
					<p class="mx-2">
						원칙적으로 ㈜백아 이용자의 개인정보를 타인 또는 타기업, 기관에 공개하지 않습니다.<br> 다만 아래의 경우에는 예외로 합니다.<br> ㈜백아를 통해 교육 도중 작성된 저작물에 대한 저작권 및 초상권 또는 컨텐츠(사진,동영상)는 합리적인 차원에서 ㈜백아에 귀속하여 활용할 수 있다.<br> 본인은 본인의 개인정보(이름, 생년월일, 전화번호, 이메일 등)를 크루팩토리에 제공하여 취업관련 서비스의 마케팅 활동(전화 통화 방식, 이메일 발송 방식, SMS방식 포함) 목적으로 제공, 활용되도록 함에 동의
						합니다.<br>
					</p>
				</div>
			</div>
		</div>
	</div>
</div>



<script>

 

$(document).ready(function() {
	var landing = "${landing}";
	if(landing == 'N'){
		if ($(window).width() > 768) {
			$("#showland").show();
		}else{
			//$("#showland-m").show();
		}	
	}
});

$(document).ready(function() {
 	$("#quick_counsel").validator();	//폼발리데이터
});

function goTop(){
	$('html').scrollTop(0);
}

$(document).on('click', '#btnCounsel', function(){
	var mobile = $("#quick_mobile-1").val() + $("#quick_mobile-2").val() + $("#quick_mobile-3").val();
	$("#quick_phone").val(mobile);
	
	if($("#quick_mobile-2").val() == '' || $("#quick_mobile-3").val() == '' || $('#quick_name').val() == '' || $('#quick_age').val() == ''){
		alert("성함과 연락처, 나이는 필수 입력항목입니다.");
		return false;
	}
	
	if($('input[name=quick_name]').val().length < 2){
		alert("이름은 두글자이상 이어야 합니다.");
		return false;
	}
	
	if($('input[name=quick_age]').val().length <= 1){
		alert("나이는 두자리이상 이어야 합니다.");
		return false;
	}
	
	if($('input[name=quick_mobile-2]').val().length < 3){
		alert("휴대전화 앞자리는 세자이상 이어야 합니다.");
		return false;
	}
	
	if($('input[name=quick_mobile-3]').val().length <= 3){
		alert("휴대전화 뒷자리는 네자이어야 합니다.");
		return false;
	}
	
	var obj = {
			"gubun" : "간편상담",
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
	        alert(errorThrown.statusText);
	    }
	});
	
});

</script>


