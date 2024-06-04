<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="/manager/index.do">
              <i class="mdi mdi-home menu-icon"></i>
              <span class="menu-title">대시보드</span>
            </a>
          </li>
          <c:if test="${sessionScope.ManagerInfo.section eq 'super'}">
          <li class="nav-item">
            <a class="nav-link" href="/manager/auth/Auth.do?act=b">
              <i class="mdi mdi-key menu-icon"></i>
              <span class="menu-title">권한관리</span>
            </a>
          </li>
          <!-- li class="nav-item">
            <a class="nav-link" href="/manager/ipblock.do">
              <i class="mdi mdi-key menu-icon"></i>
              <span class="menu-title">아이피차단관리</span>
            </a>
          </li-->
          </c:if>
          <c:if test="${sessionScope.ManagerInfo.team eq 'professor' || sessionScope.ManagerInfo.team eq 'operator'}">
          <li class="nav-item">
            <a class="nav-link" href="/manager/pro/list.do">
              <i class="mdi mdi-account menu-icon"></i>
              <span class="menu-title">강사관리</span>
            </a>
          </li>
          </c:if>
          <c:if test="${sessionScope.ManagerInfo.team ne 'professor'}">
          <li class="nav-item">
            <a class="nav-link" href="/manager/code.do?act=f">
              <i class="mdi mdi mdi-link-variant menu-icon"></i>
              <span class="menu-title">코드관리</span>
            </a>
          </li>
          <li class="nav-item <c:if test="${ param.act eq 'c'}">active</c:if>">
            <a class="nav-link" data-toggle="collapse" href="#mem" aria-expanded="false" aria-controls="mem">
              <i class="mdi mdi-account menu-icon"></i>
              <span class="menu-title">회원관리</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="mem">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"><a class="nav-link" href="/manager/member.do">회원관리</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/counsel.do">상담신청관리</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/spclass.do">특강신청관리</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/befmem.do">이전회원조회</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/black.do">삭제된상담신청내역</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item <c:if test="${ param.act eq 'd'}">active</c:if>">
            <a class="nav-link" data-toggle="collapse" href="#bbs" aria-expanded="false" aria-controls="bbs">
              <i class="mdi mdi-view-headline menu-icon"></i>
              <span class="menu-title">게시판관리</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="bbs">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="/manager/announce.do">공지사항</a></li>
                <li class="nav-item"> <a class="nav-link" href="/manager/news.do">언론보도자료</a></li>
                <li class="nav-item"> <a class="nav-link" href="/manager/recruit.do?section=ko">항공사채용공고</a></li>
                <li class="nav-item"> <a class="nav-link" href="/manager/interview.do">면접질문항목</a></li>
                <li class="nav-item"> <a class="nav-link" href="/manager/faq.do">자주묻는질문</a></li>
                <!-- li class="nav-item"> <a class="nav-link" href="/manager/various.do">항공사최신뉴스</a></li-->
              </ul>
            </div>
          </li>
          <li class="nav-item <c:if test="${ param.act eq 'e'}">active</c:if>">
            <a class="nav-link" data-toggle="collapse" href="#cpm" aria-expanded="false" aria-controls="cpm">
              <i class="mdi mdi-circle-outline menu-icon"></i>
              <span class="menu-title">크루피플관리</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="cpm">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"><a class="nav-link" href="/manager/blog/WeAre.do?section=blog">위아크루</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/blog/Wave.do?section=wave">크루웨이브</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/blog/Moment.do?section=moment">크루모먼트</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/review.do?section=ko">합격생인터뷰</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/reply/list.do">리뷰관리</a></li>
              </ul>
            </div>
          </li>
          </c:if>
          <li class="nav-item">
            <a class="nav-link" href="/manager/hr/list.do">
              <i class="mdi mdi mdi-link-variant menu-icon"></i>
              <span class="menu-title">채용정보관리</span>
            </a>
          </li>
          <!-- li class="nav-item">
            <a class="nav-link" href="https://www.crew-factory.com" target="_blank">
              <i class="mdi mdi-home menu-icon"></i>
              <span class="menu-title">crew-factory.com</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="http://www.crewfac.com" target="_blank">
              <i class="mdi mdi-home menu-icon"></i>
              <span class="menu-title">crewfac.com</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="http://www.crewseoul.com" target="_blank">
              <i class="mdi mdi-home menu-icon"></i>
              <span class="menu-title">crewseoul.com</span>
            </a>
          </li-->
          </ul>
          
          <!-- li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <i class="mdi mdi-emoticon menu-icon"></i>
              <span class="menu-title">UI Elements</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/buttons.html">Buttons</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">Typography</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="pages/forms/basic_elements.html">
              <i class="mdi mdi-view-headline menu-icon"></i>
              <span class="menu-title">Form elements</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="pages/charts/chartjs.html">
              <i class="mdi mdi-chart-pie menu-icon"></i>
              <span class="menu-title">Charts</span>
            </a>
          </li-->
      </nav>
      <!-- partial -->