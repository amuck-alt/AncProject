<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%= site_title %> - 중동항공사 합격자 간담회</title>
<meta name="description" content="<%= site_descript %>" />
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file="../include/header.jsp"%>
</head>
<style>
	#up-scroll {
            position: fixed;
            right: 16px;
            bottom: 16px;
            border-radius: 50%;
            font-weight: bold;
            background: rgb(255, 255, 255);
            color: #fff;
            box-shadow: 2px 2px 6px 0.6px rgba(0,0,0,0.2);
            z-index: 9;
        }

        #down-scroll {
            position: fixed;
            right: 16px;
            bottom: 16px;
            border-radius: 50%;
            font-weight: bold;
            background: rgb(255, 255, 255);
            color: #fff;
            box-shadow: 2px 2px 6px 0.6px rgba(0,0,0,0.2);
            z-index: 9;
        }

        @media(min-width: 992px){
            #up {
                width: 57px;
                height: 57px;
                line-height: 57px;
                font-size: 24px;
            }
            
            #toBottom {
                width: 57px;
                height: 57px;
                line-height: 57px;
                font-size: 24px;
            }
        }
</style>
<body>
	<%@ include file="../include/nav.jsp"%>
	<%@ include file="../include/floating-left.jsp"%>


	<!-- 사이즈 1920로 스크롤생김 -->
	
	
		<!-- 이미지에 링크 연결되어 있는 코딩 -->
		<!-- <div class="container-fluid  mobile-hidden" >
			<div class="row">
				<div class="col-12 text-center">
					<img src="/img/220304_d_page_1.jpg" style="width: 100%;" alt="class open" id="mobile-100-percent" >
					
					<a href="https://drive.google.com/drive/folders/16AP1NAQnXpgM5nAMm8k4E5rSFtyHtNNi?usp=sharing" target="_black">
					<img src="/img/220304_d_page_2.jpg" style="width: 100%;" alt="class open" id="mobile-100-percent" >
					</a>
					<img src="/img/220304_d_page_3.jpg" style="width: 100%;" alt="class open" id="mobile-100-percent" >
				</div>
			</div>
		</div> -->
	
		<!-- <div class="container-fluid mobile-show">
		<div class="row">
			<div class="col-12">
					<img src="/img/220311_d_mo_01.jpg" alt="class open" id="mobile-100-percent">
					
					<a href="https://drive.google.com/drive/folders/16AP1NAQnXpgM5nAMm8k4E5rSFtyHtNNi?usp=sharing" target="_black">
					<img src="/img/220311_d_mo_02.jpg" alt="class open" id="mobile-100-percent">
					</a>
					<img src="/img/220311_d_mo_03.jpg" alt="class open" id="mobile-100-percent">
				</div>
			</div>
		</div> -->
		
		
		<div class="container-fluid  mobile-hidden" >
		<div class="row">
			<div class="col-12 text-center">
				<img src="/img/220506_sp2_page.jpg" style="width: 100%;" alt="class open" id="mobile-100-percent" >
			</div>
		</div>
		</div>
	
		<div class="container-fluid mobile-show">
		<div class="row">
			<div class="col-12">
					<img src="/img/220506_sp2_page_mo.jpg" alt="class open" id="mobile-100-percent">
			</div>
		</div>
		</div>
		

	<!-- 하단링크 -->
	<%@ include file="../include/footlink.jsp"%>

	<!-- 상담신청 -->
	<%@ include file="../include/counsel.jsp"%>

	<footer>
	
		<div id="up-scroll">
		<a href="#"><img src="/img/up.png" alt="위로 가기"></a>
		</div>
		
		<div id="down-scroll">
			<a href="#"><img src="/img/down.png" alt="아래로 가기"></a>
		</div>
		
		<%@ include file="../include/footer.jsp"%>	
	</footer>

	


	<script>
	
	$(document).ready(function( $ ) {
		$('.counter').counterUp({
			delay: 10,
			time: 3000
		});
		
		$(window).scroll(function () {
		      if ($(this).scrollTop() > 200) {
		          $('#up-scroll').fadeIn(200);
		      } else {
		          $('#up-scroll').fadeOut(200);
		      }
		  });
		
		$(window).scroll(function () {
		      if ($(this).scrollTop() < 200) {
		          $('#down-scroll').fadeIn(200);
		      } else {
		          $('#down-scroll').fadeOut(200);
		      }
		  });
		
		$('#up-scroll').click(function (event) {
		      event.preventDefault();
		      $('html, body').animate({ scrollTop: 0 }, 300);
		  });
		
		$('#down-scroll').click(function (event) {
		      event.preventDefault();
		      $('html, body').animate({ scrollTop: $(document).height() }, 300);
		  });

	});

	var wow = new WOW( {
		animateClass: 'animated',
		offset:       100
	});
	
	wow.init();
</script>
	<script src="../dist/js/jquery.counterup.min.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
	<script src="../dist/js/bootstrap.min.js"></script>
	<script src="../dist/js/swiper.min.js"></script>
</body>
</html>