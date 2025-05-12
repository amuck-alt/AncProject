<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
	#sw-main-moment ul li:nth-child(1) .moment-img, #sw-main-moment ul li:nth-child(2) .moment-img { max-height:450px; min-height:450px; height:450px; }
	@media only screen and (max-width: 767px) {
	
	#sw-main-moment ul li:nth-child(1) .moment-img { max-height:300px; min-height:300px; height:300px; }
	#sw-main-moment ul li:nth-child(2) .moment-img { max-height:140px; min-height:140px; height:140px; }
	#sw-main-moment ul li .moment-img { max-height:140px; min-height:140px; height:140px; }
	}
</style>

<div class="container-fluid" id="containter-body">
	<div class="row cf-row">
		<div class="col-12 text-center">
			<img src="img/main-sign-txt_04.png" class="mobile-75-percent">
		</div>
		<div class="col-12 my-3" id="sw-main-moment">
			<ul class="col-12">
				<c:forEach items="${moment}" var="moment"  varStatus="status">
					<c:choose><c:when test="${status.count eq 1 }"><li class="col-6 float-left py-2 px-2 mobile-100-percent off-hide"></c:when>
									<c:when test="${status.count eq 2 }"><li class="col-6 float-left py-2 px-2 mobile-50-percent off-hide"></c:when>
									<c:otherwise><li class="col-4 float-left py-2 px-2 mobile-50-percent rad-div-10 off-hide"></c:otherwise></c:choose>
						<div class="col-12 rad-div-10 off-hide moment-img">
							<a href="/crewpeople/momentv.do?idx=${moment.idx}"><img src="${moment.thumbnail}" width="100%" class="hvr-grow"></a>
							<div class="col-12 px-3" style="padding-top:5px; position:absolute; bottom:0px; left:0px; height:25px; background-color:rgba(0, 0, 0, 0.5);">
								<p class="font-12 font-white"><strong>${moment.title}</strong></p>
							</div>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
		 <div class="col-12 text-center pb-5 mb-5">
    		<button class="btn btn-lg btn-primary" style="width:120px;" onclick="javascrpt:location.href='/crewpeople/moment.do'">더보기</button>
    	</div>		
	</div>
</div>