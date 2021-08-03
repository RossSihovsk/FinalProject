<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE HTML>
<html>
<head>
        <title><spring:message code='main.title'/></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <!-- Favicon-->
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="main/css/styles.css" rel="stylesheet" />

</head>
<body id="page-top">


<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">
        <p class="navbar-brand"> <spring:message code='main.welcome'/> ${pageContext.request.userPrincipal.name} </p>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                <sec:authorize access="!isAuthenticated()">
                <li class="nav-item"><a class="nav-link" href="/login"> <spring:message code='main.logIn'/></a></li>
                <li class="nav-item"><a class="nav-link" href="/registration"> <spring:message code='main.reg'/></a></li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                <li class="nav-item"><a class="nav-link" href="/logout"> <spring:message code='main.logOut'/></a></li>
                </sec:authorize>
            </ul>
        </div>
    </div>
</nav>
<!-- Masthead-->
<header class="masthead">
    <div class="container">
        <div class="masthead-subheading"> <spring:message code='main.FinalProject'/></div>
        <div class="masthead-heading text-uppercase"> <spring:message code='main.projectName'/> </div>
        <a class="btn btn-primary btn-xl text-uppercase" href="#services"> <spring:message code='main.next'/></a>
    </div>
</header>
<!-- Services-->
<section class="page-section" id="services">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase"> <spring:message code='main.menu'/></h2>
            <h3 class="section-subheading text-muted"> <spring:message code='main.chose'/></h3>
        </div>
        <div class="row text-center" >
            <div class="col-md-6 custom-hover" onclick="location.href='/home';" style="cursor: pointer;">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-users fa-stack-2x text-primary"></i>
                            <!--                            <i class="fas fa-circle fa-stack-2x text-primary"></i>-->
                            <!--                            <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>-->
                        </span>
                <h4 class="my-3"> <spring:message code='main.cabinet'/></h4>
                <p class="text-muted"> <spring:message code='main.pcDesript'/></p>
            </div>
            <div class="col-md-6 custom-hover" onclick="location.href='/admin_panel';" style="cursor: pointer;">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-laptop fa-stack-1x fa-inverse"></i>
                        </span>
                <h4 class="my-3"> <spring:message code='main.admin'/></h4>
                <p class="text-muted"> <spring:message code='main.apDescript'/> </p>
            </div>

        </div>
    </div>
</section>


<!-- About-->
<section class="page-section" id="about">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase"> <spring:message code='main.Tech'/></h2>
            <h3 class="section-subheading text-muted"> <spring:message code='main.techDescript'/></h3>
        </div>
        <ul class="timeline">
            <li>
                <div class="timeline-image"><img class="rounded-circle img-fluid" src="main/assets/img/HTML5.png" alt="..." /></div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading"> <spring:message code='main.html'/></h4>
                    </div>
                    <div class="timeline-body"><p class="text-muted"> <spring:message code='main.htmlDescript'/> </p></div>
                </div>
            </li>

            <li class="timeline-inverted">
                <div class="timeline-image"><img class="rounded-circle img-fluid" src="main/assets/img/css-3-logo.png" alt="..." /></div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading"> <spring:message code='main.css'/></h4>
                    </div>
                    <div class="timeline-body"><p class="text-muted"> <spring:message code='main.cssDescript'/></p></div>
                </div>
            </li>
            <li>
                <div class="timeline-image"><img class="rounded-circle img-fluid" src="main/assets/img/jsl.jpg" alt="..." /></div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading"> <spring:message code='main.js'/></h4>
                    </div>
                    <div class="timeline-body"><p class="text-muted"> <spring:message code='main.jsDescript'/></p></div>
                </div>
            </li>
            <li class="timeline-inverted">
                <div class="timeline-image"><img class="rounded-circle img-fluid" src="main/assets/img/msqlLogo.png" alt="..." /></div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading"> <spring:message code='main.mySql'/></h4>
                    </div>
                    <div class="timeline-body"><p class="text-muted"> <spring:message code='main.mySqlDescript'/></p></div>
                </div>
            </li>
            <li>
                <div class="timeline-image"><img class="rounded-circle img-fluid" src="main/assets/img/java-logo.png" alt="..." /></div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading"> <spring:message code='main.java'/></h4>
                    </div>
                    <div class="timeline-body"><p class="text-muted"> <spring:message code='main.javaDescript'/></p></div>
                </div>
            </li>

            <li class="timeline-inverted">
                <div class="timeline-image"><img class="rounded-circle img-fluid" src="main/assets/img/spring-logo.png" alt="..." /></div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading"> <spring:message code='main.spring'/></h4>
                    </div>
                    <div class="timeline-body"><p class="text-muted"> <spring:message code='main.springDescription'/></p></div>
                </div>
            </li>
            <li class="timeline-inverted">
                <div class="timeline-image">
                    <h4>
                        <spring:message code='main.extend1'/>
                        <br />
                        <spring:message code='main.extend2'/>
                        <br />
                        <spring:message code='main.extend3'/>
                    </h4>
                </div>
            </li>
        </ul>
    </div>
</section>
<!-- Team-->
<section class="page-section bg-light" id="team">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase"> <spring:message code='main.dev'/></h2>
            <h3 class="section-subheading text-muted"> <spring:message code='main.linkSocial'/></h3>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="team-member">
                    <img class="mx-auto rounded-circle" src="main/assets/img/me.jpg" alt="..." />
                    <h4> <spring:message code='main.myName'/></h4>
                    <p class="text-muted"> <spring:message code='main.myRole'/></p>
                    <a class="btn btn-dark btn-social mx-2" href="https://twitter.com/Axers_123"><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-dark btn-social mx-2" href="https://www.linkedin.com/in/rostyslav-sihovskiy-11b896204/"><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-dark btn-social mx-2" href="https://github.com/RossSihovsk?tab=repositories"><i class="fab fa-github"></i></a>
                    <a class="btn btn-dark btn-social mx-2" href="https://www.instagram.com/ross_sihovsk/"> <i class="fab fa-instagram-square"></i></a>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8 mx-auto text-center"><p class="large text-muted"> <spring:message code='main.yourVisit'/></p></div>
        </div>
    </div>
</section>








<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="main/js/scripts.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>