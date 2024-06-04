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
          
		  <form action="/manager/ipblock/update.do" name="form" id="form" method="post" data-toggle="validator">          
          <input type="hidden" name="idx" value="${param.idx}">
          <input type="hidden" name="regid" value="${sessionScope.ManagerInfo.userid}">
          <input type="hidden" name="regip" value="<%= request.getRemoteAddr() %>">
          <div class="row">
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    <div class="form-group">
                      <label for="title" class="control-label">아이피주소</label>
                      <input type="text" class="form-control" value="${result.ipaddr}" name="ipaddr" id="title" placeholder="예) 192.168.2.456" data-error="제목을 입력하세요." required>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="description" class="control-label">차단사유</label>
                      <textarea class="form-control" name="memo" id="memo" rows="3">${result.memo}</textarea>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <div class="form-group">
                      <label for="blockyn" class="control-label">차단여부</label>
                      <select name="blockyn" class="form-control">
                      	<option value="Y" <c:if test="${result.blockyn eq 'Y'}">selected</c:if>>차단</option>
                      	<option value="N" <c:if test="${result.blockyn eq 'N'}">selected</c:if>>해제</option>
                      </select>
                      <div class="help-block with-errors text-danger"></div>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">저장</button>
                    <button type="button" onclick="deleteRow('${result.idx}')" class="btn btn-danger mr-2">삭제</button>
                    <a href="/manager/ipblock.do" class="btn btn-light">취소</a>
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
<script> 

	function deleteRow(idx){
		if(confirm("정말로 삭제하시겠습니까?") == true){
			location.href="/manager/ipblock/delete.do?idx="+idx;	
		}else{
			return;
		}		
	}
 
 	$(document).ready(function() {
	 	$("#form").validator();	//폼발리데이터
	}); 	

</script>

</body>  
</html>


  


