<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="now" class="java.util.Date" />
<%@ include file = "../include/header.jsp" %>

<body>   
  <div class="container-scroller">
    <%@ include file="../include/nav-bar.jsp" %>
    <div class="container-fluid page-body-wrapper">
      <%@ include file="../include/side-bar.jsp" %>
      <div class="main-panel">
        <div class="content-wrapper">         
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="d-flex justify-content-between flex-wrap">
                <div class="d-flex align-items-end flex-wrap">
                  <div class="mr-md-3 mr-xl-5">
                    <h3 class="under-line mx-1">채용정보관리@</h3>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <form name="search" id="search" method="get">
					<div class="row">
						<div class="col-6">
							<div class="form-group">
			                  	<select name="catenum" class="form-control" style="height:3.00rem; width:30.00rem;" onchange="searchCategory()">
			                  		<option value="">채용공고선책</option>
			                  		<option value="1" <c:if test="${param.catenum eq '1'}">selected</c:if>>중동항공사 객실 승무원 해외 취업 연수생 2~3기 추가모집</option>
			                  	</select>
		                  	</div>
						</div>
						<div class="col-6 text-right">
							<button class="btn btn-primary btn-lg" onclick="downloadExcel()">엑셀저장</button>
						</div>
					</div>
                  </form>
                  <div class="table-responsive">
                    <table id="tabler" class="table table-striped table-bordered" style="width:100%;">
                      <thead>
                        <tr>
                            <th>한글이름</th>
                            <th>영문이름</th>
                            <th>사진</th>
                            <th>연락처</th>
                            <th>이메일</th>
                            <th>성별</th>
                            <th>키/몸무게</th>
                            <th>최종학력</th>
                            <th>국적</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${result}" var="list">
                        <tr height="30px">
                        	<td align="center"><a href="/manager/hr/view.do?idx=${ list.idx }">${list.korname}</a></td>
                        	<td align="center">${list.engname}</td>
                            <td align="center"><img src="${list.photo}" style="width:30px; border-radius:0%;"></td>
                            <td>${list.phonenum}</td>
                            <td>${list.email}</td>
                            <td>${list.gender}</td>
                            <td>${list.height}cm / ${list.weight}kg</td>
                            <td>${list.edulv}(${list.gradlv})</td>
							<td>${list.nation}</td>
                        </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
		<%@ include file="../include/footer.jsp" %>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
 </body>

<script>

	function downloadExcel() {
		$("#search").attr("action", "/manager/hr/download.do");
		$("#search").submit();
	}

	function searchCategory() {
		$("#search").attr("action", "/manager/hr/list.do");
		$("#search").submit();
	}
 	
 	$(document).ready(function() {
    	$('#tabler').DataTable({
    		"order": [[0, 'desc']],
    		"iDisplayLength": 200
    	});
	});
 	
 </script>


