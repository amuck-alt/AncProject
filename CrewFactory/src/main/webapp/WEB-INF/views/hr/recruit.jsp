<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
<meta http-equiv="x-ua-compatible" content="IE=edge">
<meta name="robots" content="index, follow">
<meta name="subject" content="항공사지상직채용정보"/>
<meta name="author" content="크루팩토리">
<meta name="keywords" content="항공사지상직채용정보"/>
<meta name="description" content="항공사지상직채용정보" />
<title>항공사지상직채용정보</title>
<link rel="stylesheet" href="/dist/css/hover.css">
<link rel="stylesheet" href="/dist/css/bootstrap.css">
<link rel="stylesheet" href="/vendor/swiper/css/swiper.css">
<link rel="stylesheet" href="/vendor/swiper/css/swiper.min.css">
<link rel="stylesheet" href="/vendor/wow/animate.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.css">
<link rel="stylesheet" href="/css/cfw-sub-style.css">
<link rel="stylesheet" href="/css/cfw-fonts.css">
<link rel="stylesheet" href="/css/cfw-min-style.css">
<link rel="stylesheet" href="/css/cfw-sub-style-mobile.css">
<link rel="stylesheet" href="/dist/css/pagination.css"><!-- Pagination -->
<link rel="stylesheet" href="/editor/src/content-styles.css" type="text/css"><!-- 웹에디터용 CSS -->

<script src="/js/cfw-common.js"></script>
<script src="/dist/js/jquery.min.js"></script>
<script src="/dist/js/jquery-ui.min.js"></script>
<script src="/dist/js/bootstrap.min.js"></script>
<script src="/vendor/swiper/js/swiper.js"></script>
<script src="/vendor/swiper/js/swiper.min.js"></script>
<script src="/vendor/slick/slick.min.js" type="text/javascript"></script>
<script src="/vendor/wow/wow.min.js"></script>
</head>
<body>
<%@ include file="../include/nav.jsp"%>
<%--@ include file="../include/floating-left.jsp"--%>
<form role="form" name="propose" id="propose" method="post" enctype="multipart/form-data" action="/hr/propose.do" onsubmit="return onFormSbmt()">
<div class="container-fluid bg-light-gray">
	<div class="row sm-row">
		<div class="col-12 mt-5 mb-4">
			<div class="col-12 font-26 mb-1 " id="mobile-100-percent">지원서류접수</div>
			<div class="col-12 py-2 line-2-black" style="width:140px; margin:0 auto; margin-bottom: 10px;"></div>
		</div>
		<div class="col-12 my-2 font-bold font-20">채용공고선택</div>
		<div class="input-group my-3">
			<select class="form-control mr-2" name="catenum" id="catenum" style="height:3.75rem;" required>
				<option value="">진행중인 채용공고를 선택하세요.</option>
				<option value="1">중동항공사 객실 승무원 해외 취업 연수생 2~3기 추가모집</option>
			</select>
		</div>
		<div class="help-block with-errors text-danger"></div>
		<!-- 개인프로필입력 시작 -->
		<div class="col-12 my-2 font-bold font-20">개인프로필</div>
		<div class="col-6 my-2" id="mobile-100-percent">
			<div class="card">
				<div class="card-body">
					<div class="form-group">
						<label for="photo" class="font-bold">사진첨부</label>
						<div class="text-center mx-5">
               				<img src="/admin/images/photo-sample.jpg" class="wrapper-tn" id="wrapper-tn" width="67%">
               			</div>
               			<div class="my-3 text-center">
               				<input type="file" name="photo" id="photo" style="display:none;">
               				<button type="button" class="btn mx-2 btn-primary" id="upload-tn">업로드</button>
               				<button type="button" class="btn mx-2 btn-danger" id="init-tn" onclick="deleteImageAction()">지우기</button>
               			</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-6 col-padding my-2" id="mobile-100-percent">
			<div class="card col-md-12">
				<div class="card-body">
					<div class="form-group">
						<label for="korname" class="form-label font-bold">국문이름</label>
						<div class="input-group">
							<input type="text" class="form-control" name="korname" id="korname" placeholder="국문이름" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="engname" class="font-bold">영문이름</label>
						<div class="input-group">
							<input type="text" class="form-control" name="engname" id="engname" placeholder="예 : KIM, YEO WON" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="phoneagency" class="font-bold">휴대폰번호</label>
						<div class="input-group">
							<select class="form-control mr-2" name="phoneagency" id="phoneagency" style="height:3.75rem;">
								<option value="010">010</option>
							</select>
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="phonefirst" id="phonefirst" maxlength="4" placeholder="" required>
							<input type="number" class="form-control input-group-append" oninput="maxLengthCheck(this)" name="phonesecond" id="phonesecond" maxlength="4" placeholder="" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="engname" class="font-bold">이메일</label>
						<div class="input-group">
							<input type="email" class="form-control" name="email" id="email" placeholder="이메일을 잘못기입시 합격여부를 이메일로 받을 수 없습니다" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- 개인프로필입력 끝 -->
		<!-- 상세정보입력 시작 -->
		<div class="col-12 my-2">
			<div class="col-12 my-2 font-bold font-20">상세정보</div>
			<div class="card my-2 col-12">
				<div class="card-body">
					<div class="form-group">
						<label for="input-gender">생년월일</label>
						<div class="input-group">
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="birthyear" id="birthyear" maxlength="4" placeholder="년도" required>
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="birthmonth" id="birthmonth" maxlength="2" placeholder="월" required>
							<input type="number" class="form-control input-group-append" oninput="maxLengthCheck(this)" name="birthday" id="birthday" maxlength="2" placeholder="일" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="input-gender">키 / 몸무게</label>
						<div class="input-group">
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="height" id="height" maxlength="3" placeholder="cm" required>
							<input type="number" class="form-control input-group-append mr-2" oninput="maxLengthCheck(this)" name="weight" id="weight" maxlength="2" placeholder="kg" required>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<label for="gender">성별 / 국적</label>
						<div class="input-group">
							<select class="form-control mr-2" id="gender" name="gender" style="height:3.75rem;" required>
								<option value="여">여</option>
								<option value="남">남</option>
							</select>
							<input type="text" class="form-control input-group-append" name="nation" id="nation" maxlength="30" placeholder="예 : 대한민국" required>
						</div>
					</div>
					<div class="form-group">
						<label for="edulv">주소</label>
						<div class="input-group">
						<input type="text" class="form-control" name="address" id="address" style="height:3.75rem;" placeholder="예 : 서울, 경기, 충남" required>
						</div>
					</div> 
					<div class="form-group">
						<label for="edulv">최종학력</label>
						<div class="input-group">
						<input type="text" class="form-control mr-2" name="edulv" id="edulv" style="height:3.75rem;" placeholder="학교명" required>
						<select class="form-control input-group-append mr-2" name="edugb" id="edugb" style="height:3.75rem;" required>
							<option value="고등학교">고등학교</option>
							<option value="2년제">2년제</option>
							<option value="3년제">3년제</option>
							<option value="4년제" selected>4년제</option>
							<option value="대학원">대학원</option>
						</select>
						<select class="form-control input-group-append" name="gradlv" id="gradlv" style="height:3.75rem;" required>
							<option value="졸업" selected>졸업</option>
							<option value="졸업예정" >졸업예정</option>
							<option value="휴학중" >휴학중</option>
							<option value="중퇴" >중퇴</option>
						</select>
						</div>
					</div>
					<div class="form-group">
						<label for="langlv">어학점수</label>                      
						<div class="input-group">
							<input type="text" class="form-control mr-2" name="langlv" id="langlv" maxlength="30"  placeholder="예 : TOEIC 850, HSK 6, JLPT 1" required>  
							<select class="col-3 form-control input-group-append" name="skilllv" id="skilllv" style="height:3.75rem;" required>
								<option value="상" >상</option>
								<option value="중" >중</option>
								<option value="하" >하</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="introduce">항공사근무이력</label>                      
						<div class="input-group">
							<textarea class="form-control" name="reference" id="reference" placeholder="항공사 근무이력이 있을 경우 간략하게 기재해주세요" rows="4"></textarea>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div> 
					<div class="form-group">
						<label for="introduce">자기소개</label>                      
						<div class="input-group">
							<textarea class="form-control" name="introduce" id="introduce" placeholder="100자이내로 작성하세요." rows="8" required></textarea>
						</div>
						<div class="help-block with-errors text-danger"></div>
					</div>  
				</div>
			</div>
		</div>
		<!-- 상세정보입력 끝 -->
		<div class="col-12 mb-5 my-1 pb-5">
			<button type="submit" id="gopropose" class="btn btn-primary btn-lg btn-block font-bold" style="height:4.00rem;">제출 (제출 후 수정이 불가능합니다.)</button>
		</div>
		<div class="col-12 py-4"></div>
	</div>
</div>
</form>

<script>

	$("#upload-tn").click(function (e) {
			e.preventDefault();
			$("#photo").click();
		});	
	
	$(document).ready(function(){
		$("#photo").on("change", handleImageFileSelect);
	});
	
	function handleImageFileSelect(e){
		var files = e.target.files;
		var fileArr = Array.prototype.slice.call(files);
		fileArr.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("이미지파일만 업로드 가능합니다.");
				return;
			}
			var reader = new FileReader();
			reader.onload = function(e){
				$("#wrapper-tn").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
	
	function deleteImageAction() {
		$("#wrapper-tn").attr("src", "/admin/images/photo-sample.jpg");
		$("#photo").val("");
	}
	
	function onFormSbmt() {
	
		if($('input[name=photo]').val() == "") {
			alert("프로필사진을 첨부하세요");
			return false;
		} else {
			return true;
		}
	}

</script>

<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>
</body>