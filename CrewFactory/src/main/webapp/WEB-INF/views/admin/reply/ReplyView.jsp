<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<%@ include file = "../include/header.jsp" %>
<body>
  <div class="container-scroller">
    <%@ include file="../include/nav-bar.jsp" %>
    <div class="container-fluid page-body-wrapper">
      <%@ include file="../include/side-bar.jsp" %>
      <div class="main-panel">
        <div class="content-wrapper">          
		  <form action="/manager/reply/update.do" name="form" id="form" method="post" data-toggle="validator">          
          <input type="hidden" name="regid" value="${sessionScope.ManagerInfo.userid}">
          <input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
          <input type="hidden" name="idx" value="${result.idx}">
          <div class="row">
				<div class="col-md-8 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
						<div class="form-group">
							<label for="proname" class="control-label">리뷰경로</label>
	                  <div class="input-group">
		                  <select class="form-control" name="section">
		                  	<option value="인스타그램" <c:if test="${result.grade eq '인스타그램'}">selected</c:if>>인스타그램</option>
		                  	<option value="페이스북" <c:if test="${result.grade eq '페이스북'}">selected</c:if>>페이스북</option>
		                  	<option value="재학생추천" <c:if test="${result.grade eq '재학생추천'}">selected</c:if>>재학생추천</option>
		                  	<option value="지인추천" <c:if test="${result.grade eq '지인추천'}">selected</c:if>>지인추천</option>
		                  	<option value="학원홈페이지" <c:if test="${result.grade eq '학원홈페이지'}">selected</c:if>>학원홈페이지</option>
		                  </select>
	                  </div>
	                  <div class="help-block with-errors text-danger"></div>
               	</div>
               	<div class="form-group">
							<label for="subject" class="control-label">리뷰평점</label>
	                  <div class="input-group">
		                  <input type="radio" class="form-control" name="grade" value="01" <c:if test="${result.grade eq '01'}">checked</c:if>>★
		                  <input type="radio" class="form-control" name="grade" value="02" <c:if test="${result.grade eq '02'}">checked</c:if>>★★
		                  <input type="radio" class="form-control" name="grade" value="03" <c:if test="${result.grade eq '03'}">checked</c:if>>★★★
		                  <input type="radio" class="form-control" name="grade" value="04" <c:if test="${result.grade eq '04'}">checked</c:if>>★★★★
		                  <input type="radio" class="form-control" name="grade" value="05" <c:if test="${result.grade eq '05'}">checked</c:if>>★★★★★
	                  </div>
	                  <div class="help-block with-errors text-danger"></div>
               	</div>
               	<div class="form-group">
							<label for="title" class="control-label">내용 * 텍스트로만 작상하세요.</label>
	                  <div class="input-group">
		                  <textarea class="form-control" name="content" id="editor" data-error="내용을 입력하세요." required>${result.content }</textarea>
	                  </div>
	                  <div class="help-block with-errors text-danger"></div>
               	</div>
               	<div><button type="submit" class="btn btn-primary mr-2">저장</button>
                    <a href="/manager/reply/delete.do?idx=${result.idx}" class="btn btn-danger">삭제</a>
                    <a href="/manager/reply/list.do" class="btn btn-light">취소</a></div>
                </div>
              </div>
            </div>          
          </div>		
			</form>          
        </div>
        <!-- content-wrapper ends -->
		<%@ include file="../include/footer.jsp" %>
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
	 	$("#form").validator();	//폼발리데이터
	}); 	

</script>


</body>  
</html>


  


