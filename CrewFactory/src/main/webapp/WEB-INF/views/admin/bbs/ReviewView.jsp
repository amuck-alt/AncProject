<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<%@ include file="../include/header.jsp"%>
<body>
	<div class="container-scroller">
		<%@ include file="../include/nav-bar.jsp"%>
		<div class="container-fluid page-body-wrapper">
			<%@ include file="../include/side-bar.jsp"%>
			<div class="main-panel">
				<div class="content-wrapper">
					<form action="/manager/review/update.do" name="form" method="post" data-toggle="validator" enctype="multipart/form-data">          
		          <input type="hidden" name="idx" value="${result.idx }"/>
		          <input type="hidden" name="thumb" value="${ result.thumbnail }"/>
		          <input type="hidden" name="reurl" value="/manager/review.do">
		          <input type="hidden" name="regid" value="${sessionScope.ManagerInfo.userid}">
		          <input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
						<div class="row">
							<div class="col-md-4 grid-margin stretch-card">
								<div class="card">
									<div class="card-body">
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label for="userid" class="control-label">썸네일 (가로 : 250px, 세로 : 250px)</label>
													<div class="my-3">
														<img src="${result.thumbnail}" class="wrapper-tn"	id="wrapper-tn" width="250px" height="250px" style="border-radius: 50%;">
													</div>
													<div class="my-2 mb-5">
														<input type="file" name="thumbnail" id="thumbnail"
															style="display: none;">
														<button type="button" class="btn btn-primary"
															id="upload-tn">업로드</button>
														<button type="button" class="btn btn-danger" id="init-tn"
															onclick="deleteImageAction()">지우기</button>
													</div>
												</div>
											</div>
											<div class="col-12">
												<div class="form-group">
													<label for="userid" class="control-label">대분류 / 항공사분류 / 항공사아이콘</label>
													<div class="input-group">
														<select class="form-control mr-2" name="section"
															id="section" required>
															<option value="ko" <c:if test="${result.section eq 'ko'}">selected</c:if>>국내항공사</option>
															<option value="os" <c:if test="${result.section eq 'os'}">selected</c:if>>외국항공사</option>
														</select>
														<select class="form-control mr-2 input-group-append"
															name="gubun" id="gubun" required>
															<option value="ke" <c:if test="${result.gubun eq 'ke'}">selected</c:if>>대한항공</option>
															<option value="oz" <c:if test="${result.gubun eq 'oz'}">selected</c:if>>아시아나항공</option>
															<option value="lcc" <c:if test="${result.gubun eq 'lcc'}">selected</c:if>>국내항공사</option>
															<option value="ea" <c:if test="${result.gubun eq 'ea'}">selected</c:if>>중동항공사</option>
															<option value="eu" <c:if test="${result.gubun eq 'eu'}">selected</c:if>>유럽항공사</option>
															<option value="as" <c:if test="${result.gubun eq 'as'}">selected</c:if>>아시아항공사</option>
														</select>
														<select class="form-control mr-2 input-group-append"
															name="alcd" id="alcd" required>
															<c:forEach items="${airline}" var="list">
																<option value="${list.code}" <c:if test="${list.code eq result.alcd}">selected</c:if>>${list.name}</option>
															</c:forEach>
														</select>
													</div>
													<div class="help-block with-errors text-danger"></div>
												</div>
											</div>
											<div class="col-12">
												<div class="form-group">
													<label for="userid" class="control-label">나이 / 스펙</label>
													<div class="input-group">
														<input
															type="text" name="age" id="age" value="${result.age}"
															class="form-control mr-2" placeholder="27세" required>
														<input
															type="text" name="spec" id="spec" value="${result.spec}"
															class="form-control input-group-append" placeholder="키 : 168cm / 몸무게 : 49kg"
															required>
														<div class="help-block with-errors text-danger"></div>
													</div>
												</div>
											</div>
											<div class="col-12">
												<div class="form-group">
													<label for="userid" class="control-label">학력 / 전공</label>
													<div class="input-group">
														<input type="text" name="gradlv" id="gradlv" value="${result.gradlv}" class="form-control mr-2" placeholder="서울소재 4년제대학교" required>
														<input type="text" name="major" id="major" value="${result.major}" class="form-control input-group-append" placeholder="항공서비스학과" required>
													</div>
													<div class="help-block with-errors text-danger"></div>
												</div>
											</div>
											<div class="col-12">
												<div class="form-group">
													<label for="userid" class="control-label">어학점수</label> <input
														type="text" name="langlv" id="langlv" value="${result.langlv}"
														class="form-control" placeholder="토익 850점" required>
													<div class="help-block with-errors text-danger"></div>
												</div>
											</div>
											<div class="col-12">
												<div class="form-group">
													<label for="userid" class="control-label">지원경험</label> <input
														type="text" name="reference" id="reference" value="${result.reference}"
														class="form-control" placeholder="카타르 부산채용 CV탈락" required>
													<div class="help-block with-errors text-danger"></div>
												</div>
											</div>
											<div class="col-12">
												<div class="form-group">
													<label for="class" class="control-label">졸업기수</label> <input
														type="text" name="classnm" id="classnm" value="${result.classnm }"
														class="form-control" placeholder="크루팩토리 외항사정규반 231기" required>
													<div class="help-block with-errors text-danger"></div>
												</div>
											</div>
										</div>
										<!-- end row -->
									</div>
								</div>
							</div>
							<div class="col-md-8 grid-margin stretch-card">
								<div class="card">
									<div class="card-body">
										<div class="row">
											<div class="col-12 form-group">
												<label for="editor" class="control-label">제목</label> <input value="${result.title}"
													type="text" class="form-control" name="title" id="title" placeholder="2019 하반기 대한항공 최종합격 최★★"
													required>
												<div class="help-block with-errors text-danger"></div>
											</div>
											<div class="col-12 form-group">
												<label for="editor" class="control-label">한줄코멘트</label>
												<input type="text" class="form-control" value="${result.comment}" name="comment" id="comment" required placeholder="나에게 크루팩토리는 &quot;새로운시작&quot;이다.">
												<div class="help-block with-errors text-danger"></div>
											</div>
											<div class="col-12 form-group">
												<label for="editor" class="control-label">설명글</label>
												<textarea class="form-control" name="description" id="description"
													rows="2" maxlength="120">${result.description}</textarea>
												<div class="help-block with-errors text-danger"></div>
											</div>
											<div class="col-12 form-group">
												<label for="editor" class="control-label">내용</label>
												<textarea class="form-control" name="content" id="editor"
													rows="10">${result.content}</textarea>
												<div class="help-block with-errors text-danger"></div>
											</div>
											<div class="col-12 form-group">
												<button type="submit" class="btn btn-primary mr-2" id="blogSave">저장</button>
												<button type="button" class="btn btn-danger mr-2" onclick="delPost(${ result.idx });">삭제</button>
												<a href="/manager/review.do" class="btn btn-light">취소</a>
											</div>
										</div>
										<!-- end row -->
									</div>
									<!-- end card body -->
								</div>
								<!-- end card -->
							</div>
							<!-- end grid -->
						</div>
						<!-- end row -->
					</form>

				</div>
				<!-- content-wrapper ends -->
				<%@ include file="../include/footer.jsp"%>
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	
<script src="/editor/build/ckeditor.js"></script>
<script src="/editor/src/cke-config.js"></script>
<script>  
 	$(document).ready(function() {
	 	$("#blog").validator();	//폼발리데이터
	});
	
	$("#upload-tn").click(function (e) {
  		e.preventDefault();
 		$("#thumbnail").click();
 	});	
	
	$(document).ready(function(){
		$("#thumbnail").on("change", handleImageFileSelect);
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
	
	function deleteImageAction(){
		$("#wrapper-tn").attr("src", "/admin/images/no-image.png");
		$("#thumbnail").val("");
	}
	
	function delPost(idx){
		if(confirm("정말로 삭제하시겠습니까?") == true){
			location.href = "/manager/review/delete.do?idx="+idx;
		}else{
			return;
		}		
	}
	
</script>

</body>
</html>





  


