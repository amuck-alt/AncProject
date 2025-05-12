<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file = "../include/site.jsp" %>
<title><%= site_title %>-외국항공사정보</title>
<meta name="description" content="<%= site_descript %>"/>
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file = "../include/header.jsp" %>

</head>
<body>

	<%@ include file="../include/nav.jsp"%>
	<%@ include file="../include/floating-left.jsp"%>



<div class="container-fluid swip-banner-container">
	<div class="row cf-row">
		<div class="col-md-12">
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row sub-row">	
		<div class="col-12">
			<hr>
			  <label class="font-18 mx-4 mobile-100-percent text-center" >중동</label>
			  <a href="/support/alos.do?section=os&search=em">
			    <img src="/docs/code/243ba2ff-5b01-4d59-8daf-95845f9e54b7.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'em' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="에미레이트항공">
			  </a>
			  <a href="/support/alos.do?section=os&search=ca">
			    <img src="/docs/code/1abddc20-4e63-4c5e-b943-c349e00ec895.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'ca' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="카타르항공">
			  </a>
			  <a href="/support/alos.do?section=os&search=eh">
			    <img src="/docs/code/9bf36b62-729f-4da6-adff-3a3453b49e76.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'eh' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="에띠하드">
			  </a>
			  
			  <a href="/support/alos.do?section=os&search=sa">
			    <img src="/docs/code/d26463f1-1d06-4685-b7c5-4ac096fe4268.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'sa' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="사우디아">
			  </a>
			  <a href="/support/alos.do?section=os&search=guf">
			    <img src="/docs/code/74463650-f85f-42c2-840d-a5a886c1b6e2.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'guf' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="걸프에어">
			  </a>
			  
			  <a href="/support/alos.do?section=os&search=kua">
			    <img src="/docs/code/947a7860-b5e6-4617-816f-8857637e2b73.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'kua' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="쿠웨이트항공">
			  </a>
			  <a href="/support/alos.do?section=os&search=om">
			    <img src="/docs/code/6d960655-de58-41b1-914a-caf3cf799224.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'om' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="오만항공">
			  </a>
			  <a href="/support/alos.do?section=os&search=fdb">
			    <img src="/docs/code/f885f18d-4cd6-4305-be03-1df2c8c93998.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'fdb' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="플라이두바이">
			  </a>
			  
			  <a href="/support/alos.do?section=os&search=arb">
			    <img src="/docs/code/42d01ecd-a6d9-429d-84d4-0c8128400079.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'arb' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="에어아라비아">
			  </a>
			  
			  
			  
			  
		    <hr>
			  <label class="font-18 mx-4 mobile-100-percent text-center">유럽</label>
			  <a href="/support/alos.do?section=os&search=klm">
			    <img src="/docs/code/1bad55da-6b39-42c2-8ffc-db952e952871.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'klm' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose> "width="120px" alt="KLM네덜란드">
			  </a>
			  <a href="/support/alos.do?section=os&search=lu">
			    <img src="/docs/code/e70ca4a5-ddc3-4b39-89e4-1099e06d27a0.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'lu' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose> "width="120px" alt="루프트한자">
			  </a>
			  <a href="/support/alos.do?section=os&search=pin">
			    <img src="/docs/code/b385f331-833b-47e2-9f11-7406d85c36eb.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'pin' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose> "width="120px" alt="핀에어">
			  </a>
			  <a href="/support/alos.do?section=os&search=akal">
			    <img src="/docs/code/091948ea-8cac-47bf-bd0d-a00c956520d1.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'akal' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose> " width="120px" alt="에어프랑스">
			  </a>
			<hr>  
			  
			  <label class="font-18 mx-4 mobile-100-percent text-center">아시아</label>
			  
			  <a href="/support/alos.do?section=os&search=sg">
			    <img src="/docs/code/279273fb-73d5-4ce3-a362-0df9cc85afc9.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'sg' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="싱가폴">
			  </a>
			  <a href="/support/alos.do?section=os&search=ce">
			    <img src="/docs/code/246e763a-2a35-4cbb-9ae0-b26f7e029c24.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'ce' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="케세이퍼시픽">
			  </a>
			   <a href="/support/alos.do?section=os&search=hk">
			    <img src="/docs/code/48c55331-6eb3-44f9-8d08-0a8e56268783.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'hk' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="홍콩항공">
			  </a>
			  <a href="/support/alos.do?section=os&search=fil">
			    <img src="/docs/code/13c5e347-f48d-499d-a283-7487eed3fd13.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'fil' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="필리핀">
			  </a>
			  <a href="/support/alos.do?section=os&search=aa">
			    <img src="/docs/code/eec998b4-a5d4-4f14-9b63-59579cd7a07a.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'aa' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="에어아시아">
			  </a>
			  
			   <a href="/support/alos.do?section=os&search=am">
			    <img src="/docs/code/f8651842-afcc-4d28-b667-a8c10353e3a0.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'am' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="에어마카오">
			  </a>
			   <a href="/support/alos.do?section=os&search=thi">
			    <img src="/docs/code/395bc513-8139-497b-b1f0-283703159d65.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'thi' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="타이항공">
			  </a>
			  <a href="/support/alos.do?section=os&search=grd">
			    <img src="/docs/code/1ca48651-cdc3-408c-a183-2cd7a7deba96.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'grd' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="가루다인도네시아항공">
			  </a>
			  <a href="/support/alos.do?section=os&search=he">
			    <img src="/docs/code/2d16688a-273b-401b-a703-3e260c1a4231.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'he' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="홍콩익스프레스">
			  </a>
			  <label class="font-18 mx-5 mobile-100-percent text-center">  </label>
			  
			  <a href="/support/alos.do?section=os&search=sct">
			    <img src="/docs/code/8025f002-5d6c-4d0a-8e65-b511334c06c7.png" class="border px-1  py-1 my-2  <c:choose><c:when test="${ param.search eq 'sct' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="스콧항공">
			  </a>
			  
			  
			  
			  
			  
			  <a href="/support/alos.do?section=os&search=bb">
			    <img src="/docs/code/4476a805-7181-4cc5-ab56-e35938ff8b17.png" class="border px-1 py-1 my-2 <c:choose><c:when test="${ param.search eq 'bb' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="뱀부항공">
			  </a>
			  <a href="/support/alos.do?section=os&search=vj">
			    <img src="/docs/code/793f179c-3fd0-43fd-84a5-36c0f72098d2.png" class="border px-1 py-1 my-2 <c:choose><c:when test="${ param.search eq 'vj' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="비엣젯항공">
			  </a>
			  <a href="/support/alos.do?section=os&search=va">
			    <img src="/docs/code/605a456c-c4eb-4410-bbfa-7b423dab64ac.png" class="border px-1 py-1 my-2 <c:choose><c:when test="${ param.search eq 'va' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="베트남항공">
			  </a>
			  
			  
			  
			<hr>
				<label class="font-18 mx-4 mobile-100-percent text-center">중국</label>
			  <a href="/support/alos.do?section=os&search=db">
			    <img src="/docs/code/8c0e1183-0a50-440b-b23f-6fe5fa59b96e.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'db' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="동방">
			  </a>
			  <a href="/support/alos.do?section=os&search=ac">
			    <img src="/docs/code/b2923e0f-33cc-421e-a1a2-8f2c6671ac43.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'ac' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose> " width="120px" alt="에어차이나">
			  </a>
			   <a href="/support/alos.do?section=os&search=tnj">
			    <img src="/docs/code/c0108810-680b-47f7-aab5-e163c598937c.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'tnj' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose> " width="120px" alt="천진항공">
			  </a>
			   <a href="/support/alos.do?section=os&search=hain">
			    <img src="/docs/code/86cb2c40-cedb-4acf-824f-e6767de42e3b.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'hain' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose> " width="120px" alt="하이난항공">
			  </a>
			  <a href="/support/alos.do?section=os&search=cha">
			    <img src="/docs/code/33ef1ad3-18f6-4326-ba81-bae479558ff7.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'cha' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose> " width="120px" alt="중화항공">
			  </a>
			  
			<hr>
			<label class="font-18 mx-4 mobile-100-percent text-center">일본</label>
			  <a href="/support/alos.do?section=os&search=ana">
			    <img src="/docs/code/48f2f756-f7ef-4d67-b645-fdd4fac9d45b.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'ana' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="ANA">
			  </a>
			  <a href="/support/alos.do?section=os&search=jal">
			    <img src="/docs/code/5ccef7fd-79d6-4085-a0da-3fa45a56b091.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'jal' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="JAL">
			  </a>
			   <a href="/support/alos.do?section=os&search=pich">
			    <img src="/docs/code/c7c3dc05-7cb5-4f99-b4d6-81e6d331e581.png" class="border px-1 py-1 <c:choose><c:when test="${ param.search eq 'pich' }">btn-primary</c:when><c:otherwise>bg-light-gray</c:otherwise></c:choose>" width="120px" alt="피치항공">
			  </a>
			<hr>
			  
		</div>
		<div class="col-12">
			<c:choose>
			  <c:when test="${ param.search eq 'em' }"><img src="/img/em_title02.png" alt="에미레이트 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			  <c:when test="${ param.search eq 'ca' }"><img src="/img/ca_title02.png" alt="카타르 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			  <c:when test="${ param.search eq 'eh' }"><img src="/img/eh_title02.png" alt="에띠하드 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			 
			  <c:when test="${ param.search eq 'ce' }"><img src="/img/ce_title02.png" alt="케세이퍼시픽 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			  <c:when test="${ param.search eq 'db' }"><img src="/img/db_title02.png" alt="동방 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			  <c:when test="${ param.search eq 'ac' }"><img src="/img/ac_title02.png" alt="에어차이나 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			  <c:when test="${ param.search eq 'hk' }"><img src="/img/hk_title02.png" alt="홍콩항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			  <c:when test="${ param.search eq 'ana' }"><img src="/img/ana_title02.png" alt="ANA 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			  <c:when test="${ param.search eq 'jal' }"><img src="/img/jal_title02.png" alt="JAL 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
		
			  <c:when test="${ param.search eq 'sg' }"><img src="/img/sg_title02.png" alt="싱가폴 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			  <c:when test="${ param.search eq 'fil' }"><img src="/img/fil_title02.png" alt="필리핀 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			  
			  <c:when test="${ param.search eq 'aa' }"><img src="/img/aa_title02.png" alt="에어아시아 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			  <c:when test="${ param.search eq 'lu' }"><img src="/img/lu_title02.png" alt="루프트한자 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			  <c:when test="${ param.search eq 'klm' }"><img src="/img/klm_title02.png" alt="KLM네덜란드 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			  <c:when test="${ param.search eq 'pin' }"><img src="/img/pin_title02.png" alt="핀에어 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			  <c:when test="${ param.search eq 'akal' }"><img src="/img/af_title02.png" alt="에어프랑스 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			  <c:when test="${ param.search eq 'tnj' }"><img src="/img/tidanjin_title02.jpg" alt="텐진항공 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			  <c:when test="${ param.search eq 'hain' }"><img src="/img/hainan_title02.jpg" alt="하이난 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			  <c:when test="${ param.search eq 'sa' }"><img src="/img/saudia_title02.jpg" alt="사우디아 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			  <c:when test="${ param.search eq 'guf' }"><img src="/img/gulf_title02.jpg" alt="걸프에어 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			  <c:when test="${ param.search eq 'kua' }"><img src="/img/kuwait_title02.jpg" alt="쿠웨이트 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			  <c:when test="${ param.search eq 'om' }"><img src="/img/oman_title02.jpg" alt="오만항공 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			  <c:when test="${ param.search eq 'fdb' }"><img src="/img/flydubai_title02.jpg" alt="오만항공 항공사정보" id="mobile-100-percent" style="width:100%;"></c:when>
			   <c:when test="${ param.search eq 'arb' }"><img src="/img/airarabia_title02.jpg" alt="에어아라비아" id="mobile-100-percent" style="width:100%;"></c:when>
			   <c:when test="${ param.search eq 'am' }"><img src="/img/macau_title02.jpg" alt="에어마카오" id="mobile-100-percent" style="width:100%;"></c:when>
				<c:when test="${ param.search eq 'pich' }"><img src="/img/peach_title02.jpg" alt="피치항공" id="mobile-100-percent" style="width:100%;"></c:when>
				<c:when test="${ param.search eq 'va' }"><img src="/img/va_title02.jpg" alt="베트남항공" id="mobile-100-percent" style="width:100%;"></c:when>
				<c:when test="${ param.search eq 'bb' }"><img src="/img/bb_title02.jpg" alt="뱀부항공" id="mobile-100-percent" style="width:100%;"></c:when>
				<c:when test="${ param.search eq 'cha' }"><img src="/img/cha_title02.jpg" alt="중화항공" id="mobile-100-percent" style="width:100%;"></c:when>
				<c:when test="${ param.search eq 'sct' }"><img src="/img/sct_title02.jpg" alt="스쿳항공" id="mobile-100-percent" style="width:100%;"></c:when>
				<c:when test="${ param.search eq 'grd' }"><img src="/img/grd_title02.jpg" alt="가루다인도네시아" id="mobile-100-percent" style="width:100%;"></c:when>
				<c:when test="${ param.search eq 'thi' }"><img src="/img/thi_title02.jpg" alt="타이항공" id="mobile-100-percent" style="width:100%;"></c:when>
				<c:when test="${ param.search eq 'he' }"><img src="/img/he_title02.jpg" alt="홍콩익스프레스" id="mobile-100-percent" style="width:100%;"></c:when>

			</c:choose>
		</div>
	</div>	
</div>


<!-- 하단링크 -->
<%@ include file = "../include/footlink.jsp" %>

<!-- 상담신청 -->
<%@ include file = "../include/counsel.jsp" %>

<footer>
  <%@ include file = "../include/footer.jsp" %>
</footer>

</body>
</html>