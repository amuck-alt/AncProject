<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<div class="container-fluid pb-5 bg-light-gray" id="containter-body">
  <div class="row main-row">
    <div class="col-12 my-2">
      <div class="col-12 text-center">
         <img src="img/main-sign-txt_03.png" CLASS="mobile-100-percent">
      </div>
      <div class="col-12 bg-white">
      	<a href="javascript:clickBlog('ko');"><div class="col-6 px-2 py-3 text-center border " id="blog-section-ko">국내항공사</div></a>
      	<a href="javascript:clickBlog('os');"><div class="col-6 px-2 py-3 text-center border activing" id="blog-section-os">외국항공사</div></a>
      </div>
    </div>
    <div class="col-12 my-4" id="blogko">
    	<ul class="mx-2 my-2">
      <c:forEach items="${blogko}" var="blogko">
      <c:set value="${blogko.loginyn}" var="loginyn"/>
<%
	String loginyn = (String)pageContext.getAttribute("loginyn");
	if("Y".equals(loginyn)){
%>
		<c:choose>
			<c:when test="${!empty sessionScope.crewfactoryMemberInfo}">
				<a href="/crewpeople/wearev.do?idx=${blogko.idx}&init=N&startPage=&visiblePages=&search=" class="">
			</c:when>
			<c:otherwise><a href="javascript:invalidMemberShip()"></c:otherwise>
		</c:choose>
<%		
	}else{
%>
		<a href="/crewpeople/wearev.do?idx=${blogko.idx}&init=N&startPage=&visiblePages=&search=" class="">
<%		
	}
%>	
	        <li class="float-left px-3 py-3">
	        	<div class="col-12 border bg-white">
		          <div class="col-12 off-hide">
		            <img src="${blogko.thumbnail}" style="width:100%;" class=" hvr-grow">
		          </div>
		          <div class="col-12 px-3 py-2 font-16 off-hide" style="height:50px;">
		            ${fn:substring(blogko.title, 0, 45)}<!-- label class="mx-2 hot-dot"></label -->
		          </div>
		          <!-- div class="col-12 px-3 py-2">
		            <p class="font-12 font-gray">${fn:substring(blog.description, 0, 45)}</p>
		          </div-->
		          <div class="col-12 px-3 py-1 pb-3">
		            <span class="font-12 font-dark-gray text-left"><fmt:formatDate value="${blogko.regdate}" pattern="yyyy-MM-dd"/></span>
		            <!-- span class="px-2 py-1 font-14 font-dark-gray text-left align-top"><img src=/img/ico-view.png alt="조회수"></span><span>${blog.visit}</span-->
		            <!-- span class="px-2 py-1 font-14 font-dark-gray text-left align-top"><img src=/img/ico-like.png alt="좋아요"></span><span>12</span-->
		          </div>
	          </div>
	        </li>
        </a>
      </c:forEach>
      </ul>
    </div>
    <div class="col-12 my-4" id="blogos">
    	<ul class="mx-2 my-2">
      <c:forEach items="${blogos}" var="blogos">
      <c:set value="${blogos.loginyn}" var="loginyn"/>
<%
	String loginyn = (String)pageContext.getAttribute("loginyn");
	if("Y".equals(loginyn)){
%>
		<c:choose>
			<c:when test="${!empty sessionScope.crewfactoryMemberInfo}">
				<a href="/crewpeople/wearev.do?idx=${blogos.idx}&init=N&startPage=&visiblePages=&search=" class="">
			</c:when>
			<c:otherwise><a href="javascript:invalidMemberShip()"></c:otherwise>
		</c:choose>
<%		
	}else{
%>
		<a href="/crewpeople/wearev.do?idx=${blogos.idx}&init=N&startPage=&visiblePages=&search=" class="">
<%		
	}
%>      	
	        <li class="float-left px-3 py-3">
	        	<div class="col-12 border bg-white">
		          <div class="col-12 off-hide">
		            <img src="${blogos.thumbnail}" style="width:100%;" class=" hvr-grow">
		          </div>
		          <div class="col-12 px-3 py-2 font-16 off-hide" style="height:50px;">
		            ${fn:substring(blogos.title, 0, 45)}<!-- label class="mx-2 hot-dot"></label -->
		          </div>
		          <!-- div class="col-12 px-3 py-2">
		            <p class="font-12 font-gray">${fn:substring(blog.description, 0, 45)}</p>
		          </div-->
		          <div class="col-12 px-3 py-1 pb-3">
		            <span class="font-12 font-dark-gray text-left"><fmt:formatDate value="${blogos.regdate}" pattern="yyyy-MM-dd"/></span>
		            <!-- span class="px-2 py-1 font-14 font-dark-gray text-left align-top"><img src=/img/ico-view.png alt="조회수"></span><span>${blog.visit}</span-->
		            <!-- span class="px-2 py-1 font-14 font-dark-gray text-left align-top"><img src=/img/ico-like.png alt="좋아요"></span><span>12</span-->
		          </div>
	          </div>
	        </li>
        </a>
      </c:forEach>
      </ul>
    </div>
    <div class="col-12 text-center pb-4">
    	<button class="btn btn-lg btn-primary" style="width:120px;" onclick="javascrpt:location.href='/crewpeople/weare.do?section=blog'">더보기</button>
    </div>
  </div>
</div>


<script type="text/javascript">

$(document).ready(function(){
	$('#blogos').show();
	$('#blogko').hide();
});

function clickBlog(section){
	
	if (section == 'os'){
		$('#blog-section-os').addClass('activing');
		$('#blog-section-ko').removeClass('activing');
		$('#blogos').show();
		$('#blogko').hide();
	} else {
		filterClass = '.kosec';
		$('#blog-section-ko').addClass('activing');
		$('#blog-section-os').removeClass('activing');
		$('#blogos').hide();
		$('#blogko').show();
	}
}

function invalidMemberShip(){
	alert("로그인이 필요한 메뉴입니다. 로그인페이지로 이동합니다.");
	location.href = "/member/login.do";
}

</script> 