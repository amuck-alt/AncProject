<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<%-- <div class="container-fluid bg-light-gray py-5 pb-5">
	<div class="row main-row">
		<div class="col-12" id="mobile-100-percent">
		 	<ul class="sl-main-notice">
		  	<c:forEach items="${announce}" var="announce" varStatus="status">
		  		<li class="slick-slide float-left py-2 mt-3 mb-1 px-3" style="width:33.33333%;">
		  		  <a href="/news/annview.do?idx=${announce.idx}" class="hvr-underline-from-right">
		  		  <div class="col-12 bg-white border py-3 px-3">
		  		    <div class="col-2 bg-navy text-center px-3 py-3">
		  		      <span class="font-white font-italic font-40">${status.count}</span>
		  		    </div>
			  			<div class="col-10 px-3">
			  			  <div class="col-12">
			  			    <span class="font-22 float-left mb-1" id="mobile-100-percent"><b>${fn:substring(announce.title, 0, 20)}</b></span><!-- label class="mx-1 hot-dot"></label>
			  			    <div class="col-12 py-1" id="mobile-100-percent"><span class="font-12 font-gray">${fn:substring(announce.description, 0, 40)}</span></div>
			  			    <div class="col-12 font-12 font-gray" id="mobile-100-percent"><fmt:formatDate value="${announce.regdate}" pattern="yyyy-MM-dd"/></div>
			  			  </div>
			  			</div>	  	       			
		  		  </div>
		  		  </a>
		  		</li>
		  	</c:forEach>
		  </ul>
		</div>
	</div>
</div> --%>

   <div class="container-fluid bg-light-gray py-5 pb-5">
 <div class="row main-row">
    <div class="col-12" id="mobile-100-percent">
    	<div class="mx-2 my-2">
    	<p class="mx-3 py-3 font-40-m mobile-show">공지사항</p>
      <c:forEach items="${announce}" var="blogko"  varStatus="status">
      	 <a href="/news/annview.do?idx=${blogko.idx}" class="">
	        <div class="float-left px-3 py-3 mobile-100-percent col-4">
	        	<div class="col-12 border bg-white">
		  		    <div class="col-2 bg-navy text-center px-3 py-3">
		  		      <span class="font-white font-italic font-40-m">${status.count}</span>
		  		    </div>
		          <div class="col-10 px-3 py-2 font-20 off-hide" style="height:50px;">
		            ${fn:substring(blogko.title, 0, 45)}<!-- label class="mx-2 hot-dot"></label -->
		          </div>
		          <!-- div class="col-12 px-3 py-2">
		            <p class="font-12 font-gray">${fn:substring(blog.description, 0, 45)}</p>
		          </div-->
		          <div class="col-12 px-3 py-1 pb-3">
		          <div class="col-12 py-1" id="mobile-100-percent"><span class="font-12 font-gray">${fn:substring(blogko.description, 0, 40)}</span></div>
		            <span class="font-12 font-dark-gray text-left"><fmt:formatDate value="${blogko.regdate}" pattern="yyyy-MM-dd"/></span>
		            <!-- span class="px-2 py-1 font-14 font-dark-gray text-left align-top"><img src=/img/ico-view.png alt="조회수"></span><span>${blog.visit}</span-->
		            <!-- span class="px-2 py-1 font-14 font-dark-gray text-left align-top"><img src=/img/ico-like.png alt="좋아요"></span><span>12</span-->
		          </div>
	          </div>
	        </div>
        </a>
      </c:forEach>
      </div>
    </div>
    <div class="col-12 text-center pb-4">
    	<button class="btn btn-lg btn-primary" style="width:120px;" onclick="javascrpt:location.href='/news/announce.do?startPage=&visiblePages=&searchText='">더보기</button>
    </div>
  </div>
</div>

