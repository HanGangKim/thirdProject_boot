<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
Object userId = session.getAttribute("userId");
Object userName = session.getAttribute("userName");
// 세션 연결
if (session.getAttribute("userId") == null) {
// 세션 연결에 실패하면 null	
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 실패:"+userId);
System.out.println("세션연결 실패:"+userName);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");

}else{
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 성공:"+userId);
System.out.println("세션연결 성공:"+userName);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
}
%>  
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="/resources/img/favicon.ico" type="image/ico">
  <!--Box Icons-->
  <link rel="stylesheet" href="/resources/fonts/boxicons/css/boxicons.min.css">

  <!--AOS Animations-->
  <link rel="stylesheet" href="/resources/vendor/node_modules/css/aos.css">

  <!--Iconsmind Icons-->
  <link rel="stylesheet" href="/resources/fonts/iconsmind/iconsmind.css">

  <!--Google fonts-->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&family=Source+Serif+Pro:ital@0;1&display=swap"
    rel="stylesheet">
  <!-- Main CSS -->
  <link href="/resources/css/theme-shop.min.css" rel="stylesheet">

  <title>Fiennale</title>
</head>

<body>

  	 <!--Preloader Spinner-->
  <div class="spinner-loader bg-tint-primary">
    <div class="spinner-border text-primary" role="status">
    </div>
    <span class="small d-block ms-2">Loading...</span>
  </div>
  
  <!--Header Start-->
  <header class="z-index-fixed header-transparent header-absolute-top sticky-reverse">
    <nav class="navbar navbar-expand-lg navbar-light">
      <div class="container position-relative">
        <a class="navbar-brand py-3" href="/start/NoneMemberMain.do">
          <img src="/resources/img/logo/black-logo.png" alt="" class="img-fluid">
        </a>
      </div>
    </nav>
  </header>
	
  <!--Main content-->
  <main>
    <section class="position-relative bg-tint-primary">
      <!--Divider shape bottom-->
      <svg class="position-absolute start-0 bottom-0 text-white" preserveAspectRatio="none" width="100%" height="288"
        viewBox="0 0 1200 288" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path fill-rule="evenodd" clip-rule="evenodd"
          d="M0 144L100 150C200 156 400 168 600 144C800 120 1000 60 1100 30L1200 0V288H1100C1000 288 800 288 600 288C400 288 200 288 100 288H0V144Z"
          fill="currentColor" />
      </svg>

      <div class="container pt-14 pb-9 position-relative z-index-1">
        <div class="row pt-lg-5 pb-7 align-items-center">
          <div class="col-lg-10 mx-auto text-center">
            <h1 class="display-2 mb-4">
              We make good designs for Web and Mobile
            </h1>
            <p class="mb-11 mb-lg-14 lead w-lg-80 mx-auto">Creative designs and user-friendly interfaces can contribute
              to
              your business success in web and mobile</p>
            <a href="#next"
              class="text-muted width-8x height-8x shadow bg-white rounded-circle flex-center d-flex text-center mx-auto">
              <div class="link-arrow-bounce">
                <i class="bx bx-down-arrow-alt fs-4"></i>
              </div>
            </a>
          </div>
        </div>
        <!--/.end-row--->
      </div>
      <!--/.End-content-->
    </section>


    <!-- 소개 -->
    <section class="position-relative overflow-hidden" id="next">
      <div class="container py-9 py-lg-11">

        <!--김한수-->
        <div class="row justify-content-md-around mb-7 mb-lg-11 align-items-center">
          <div class="col-md-6 mb-5 mb-md-0" data-aos="fade-left" data-aos-delay="100">
            <img src="/resources/img/960x900/1.jpg" class="img-fluid rounded-blob shadow-lg" alt="">
          </div>
          <div class="col-md-4" data-aos="fade-right">
            <div class="d-flex align-items-center mb-4">
              <h1 class="mb-0 display-6">
                Hansoo Kim
              </h1>
            </div>
            <!--/.End heading-->
            <p class="mb-4">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
              dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
              ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
              fugiat nulla pariatur.
            </p>
            <ul class="list-unstyled text-dark">
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Brand identity</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Illustration</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Packaging and labelling</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Editorial design</span>
              </li>
              <li class="d-flex align-items-center">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Promotional marketing</span>
              </li>
            </ul>
          </div>
          <!--/.End Col-->
        </div>

        <!--권민성-->
        <div class="row justify-content-md-around mb-7 mb-lg-11 align-items-center">
          <div class="col-md-6 mb-5 mb-md-0 order-md-last" data-aos="fade-left" data-aos-delay="100">
            <img src="/resources/img/960x900/4.jpg" class="img-fluid rounded-blob shadow-lg" alt="">
          </div>
          <div class="col-md-4 order-md-1" data-aos="fade-right" data-aos-delay="100">
            <div class="d-flex align-items-center mb-4">
              <h1 class="mb-0 display-6">
               	Minsung Kwon
              </h1>
            </div>
            <!--/.End heading-->
            <p class="mb-4">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
              dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
              ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
              fugiat nulla pariatur.

            </p>
            <ul class="list-unstyled text-dark">
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Web design</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>UI/UX design &amp; prototyping</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>App design</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Front- and backend coding</span>
              </li>
              <li class="d-flex align-items-center">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Seo and marketing</span>
              </li>
            </ul>
          </div>
          <!--/.End Col-->
        </div>

        <!--성유나-->
        <div class="row justify-content-md-around mb-7 mb-lg-11 align-items-center">
          <div class="col-md-6 mb-5 mb-md-0" data-aos="fade-left" data-aos-delay="100">
            <img src="/resources/img/960x900/3.jpg" class="img-fluid rounded-blob shadow-lg" alt="">
          </div>
          <div class="col-md-4" data-aos="fade-right" data-aos-delay="150">
            <div class="d-flex align-items-center mb-4">
              <h1 class="mb-0 display-6">
                Youna Seong
              </h1>
            </div>
            <!--/.End heading-->
            <p class="mb-4">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
              dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
              ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
              fugiat nulla pariatur.
            </p>
            <ul class="list-unstyled text-dark mb-0">
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Content creation</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Copywriting</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Content analysis</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Content strategy</span>
              </li>
              <li class="d-flex align-items-center">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Content management systems (CMS)</span>
              </li>
            </ul>
          </div>
          <!--/.End Col-->
        </div>

        <!--오정민-->
        <div class="row justify-content-lg-around mb-7 mb-lg-11 align-items-center">
          <div class="col-md-6 mb-5 mb-md-0 order-md-last" data-aos="fade-left" data-aos-delay="100">
            <img src="/resources/img/960x900/2.jpg" class="img-fluid rounded-blob shadow-lg" alt="">
          </div>
          <div class="col-md-4 order-md-1" data-aos="fade-right" data-aos-delay="200">
            <div class="d-flex align-items-center mb-4">
              <h1 class="mb-0 display-6">
                Jeongmin Oh
              </h1>
            </div>
            <!--/.End heading-->
            <p class="mb-4">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
              dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
              ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
              fugiat nulla pariatur.
            </p>
            <ul class="list-unstyled text-dark mb-0">
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Digital marketing</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Print advertising</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Campaign visuals</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Editorial design</span>
              </li>
              <li class="d-flex align-items-center">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Label and package design</span>
              </li>
            </ul>
          </div>
          <!--/.End Col-->
        </div>

        <!--정은성-->
        <div class="row justify-content-md-around mb-7 mb-lg-11 align-items-center">
          <div class="col-md-6 mb-5 mb-md-0" data-aos="fade-left" data-aos-delay="100">
            <img src="/resources/img/960x900/3.jpg" class="img-fluid rounded-blob shadow-lg" alt="">
          </div>
          <div class="col-md-4" data-aos="fade-right" data-aos-delay="150">
            <div class="d-flex align-items-center mb-4">
              <h1 class="mb-0 display-6">
                Eunseong Jeong
              </h1>
            </div>
            <!--/.End heading-->
            <p class="mb-4">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
              dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
              ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
              fugiat nulla pariatur.
            </p>
            <ul class="list-unstyled text-dark mb-0">
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Content creation</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Copywriting</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Content analysis</span>
              </li>
              <li class="d-flex align-items-center mb-3">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Content strategy</span>
              </li>
              <li class="d-flex align-items-center">
                <i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
                <span>Content management systems (CMS)</span>
              </li>
            </ul>
          </div>
          <!--/.End Col-->
        </div>
      </div>

    </section>

  </main>

  <jsp:include page="./Common/footer.jsp" />


  <!-- scripts -->
  <script src="/resources/js/theme.bundle.js"></script>
</body>

</html>
