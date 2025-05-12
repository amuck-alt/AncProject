<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="include/site.jsp"%>
<title><%=site_title%></title>
<meta name="description" content="<%=site_descript%>" />
<meta property="og:title" content="<%=site_title%>">
<meta property="og:description" content="<%=site_descript%>">
<%@ include file="include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="/vendor/loader/loaders.min.css"/>
</head>

<body>

<div class="container-fluid">
	<div class="row sm-row">
		<div class="col-6 mobile-100-percent text-center mt-5" style="margin:0 auto;">
			<div class="col-12 border rad-div-10 off-hide">
				<img src="/img/block.png" width="100%">
				<img src="/img/logo.png" class="mt-5">
				<p class="my-5">과도한 접속으로 인해 IP주소가 임시 차단되었습니다.</p>
				<p class="my-5">접속차단의 해제를 원하시면<br>02-6959-1955로 전화주시기 바랍니다.</p>
			</div>
		</div>
	</div>
</div>

</body>
</html>