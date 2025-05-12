<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="m-container">
	<div class="m-row">
		<div class="col-12">
			<a href="/support/interview.do" ><img src="/imgm/mid-banner-115.png" width="100%" class="mobile-100-percent"></a>
		</div>
	</div>
</div>
<div class="m-container">
	<div class="m-row bg-blue radius-div">
		<div class="col-12">
			<a href="#subscribeModal" data-toggle="modal" target="_blank"><img src="/imgm/mid-banner-001.png" width="100%"></a>
		</div>
	</div>
</div>

<!-- Modal -->
<div class="modal fade" id="subscribeModal" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header bg-ivory">
				<p class="modal-title font-24 font-bold">
					상담신청
				</p>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="col-12 px-3">
					<div class="col-12 py-2">
						<div class="col-12">
							<div class="input-group">
								<input type="text" class="form-control mr-2" name="msubsname" id="msubsname" onkeyup="onlyKorean('quick_name')" placeholder="이름" maxlength="10">
								<input type="number" class="form-control input-group-append" name="msubsage" id="msubsage" placeholder="나이" maxlength="10">
							</div>
						</div>
					</div>
					<div class="col-12 py-2">
						<div class="col-12">
							<div class="input-group">
								<select class="form-control mr-2" id="msubsmobile1">
									<option value="010">010</option>
								</select>
								<input type="number" class="form-control input-group-append mr-2" id="msubsmobile2" oninput="maxLengthCheck(this)" maxlength="4" placeholder="앞번호">
								<input type="number" class="form-control input-group-append" id="msubsmobile3" oninput="maxLengthCheck(this)" maxlength="4" placeholder="뒷번호">
							</div>
						</div>
					</div>
					<!-- <div class="col-12 py-2">
						<div class="col-12">
							<div class="input-group">
								<input type="email" class="form-control" name="msubsemail" id="msubsemail" placeholder="이메일" maxlength="40" required>
							</div>
						</div>
					</div>  -->
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-lg btn-block btn-primary font-white font-bold" onclick="goSubscribeM();">신청하기</button>
			</div>
		</div>
	</div>
</div>

<script>
	function goSubscribeM(){
		
		var mobile = $("#msubsmobile1").val() + $("#msubsmobile2").val() + $("#msubsmobile3").val();
		
		if($("#msubsmobile2").val() == '' || $("#msubsmobile3").val() == '' || $('#msubsname').val() == '' || $('#msubsage').val() == ''){
			alert("이름, 나이, 연락처는 필수 입력항목입니다.");
			return false;
		}
		
		var obj = {
				"gubun": "구독신청",
				"stat": "신규",
				"name": $('#msubsname').val(),
				"email": '',
				//"email": $('#msubsemail').val(),
				"phone": mobile,
				"age": $('#msubsage').val(),
				"hopse": "",
				"domain": "<%= request.getServerName() %>",
				"regip": "<%=request.getRemoteAddr()%>"
		}
		
		$.ajax({
		    url: "/quick/subscribe.do",
		    type: "post",
		    data: JSON.stringify(obj),
		    contentType: "application/json",
		    success: function(data) {
		        alert("신청이 완료되었습니다.");
		        window.location.reload();
		    },
		    error: function(errorThrown) {
		        alert(errorThrown.statusText);
		    }
		});
		
	}
	
</script>
