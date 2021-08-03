
<%@ page language="java" contentType="text/html; charset=UTF-8"
          pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
           uri="http://www.springframework.org/security/tags"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title><spring:message code='home.title'/></title>

    <link rel="stylesheet" href="/home/css/home.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
          integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">






</head>
<body>
<div class="container">

    <!-- Page Content -->
    <div>
        <div class="w3-container w3-center" style="padding-bottom:7%;"  >

            <div id="wrapper" class="animate">
                <nav class="navbar header-top fixed-top navbar-expand-lg navbar-dark bg-dark">
                    <p class="navbar-brand" ><spring:message code='home.personalCabinet'/> ${pageContext.request.userPrincipal.name} </p>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText"
                            aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>


                    <div class="collapse navbar-collapse" id="navbarText">

                        <ul class="navbar-nav ml-md-auto d-md-flex">
                            <li class="nav-item">
                                <a style="right: 20px; text-align: center;" class="nav-link" href="/main"><spring:message code='home.mainPage'/><span class="sr-only"></span></a>
                            </li>
                            <li class="nav-item">
                                <a style="right: 20px; text-align: center;" class="nav-link" href="/show-entrants"><spring:message code='home.listOfStudents'/><span class="sr-only"></span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link product-logout" href="/logout"><spring:message code='home.logOut'/></a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>

        <div class="w3-container">

                    <div class="row  justify-content-center align-items-center d-flex text-center h-100">
                        <div class="col-12 col-md-8  h-1 ">
                            <h1 class="display-2  text-dark mb-1 mt-1"><strong><spring:message code='home.caf'/></strong> </h1>
                            <p class="lead  text-black-50 mb-5"><spring:message code='home.cafDescript'/></p>

                        </div>

                    </div>
        </div>


            <div class="w3-container mt-4" style="display: flex; flex-wrap: wrap">
                <c:if test="${not empty faculties}">
                    <c:forEach items="${faculties}" var="currentFaculty">

                        <div class="w3-card-4 " style="width: 20%; margin-right: 5%">
                            <img
                                    src="${currentFaculty.logoUrl}"
                                    alt="Faculty logo" style="width: 100%">
                            <div class="w3-container w3-center">
                                <h3>${currentFaculty.name}</h3>
                                <p><spring:message code='home.countOfStud'/> ${currentFaculty.countOfStudents}</p>
                                <p><spring:message code='home.nessSubj'/> ${currentFaculty.subjects}</p>
                            </div>
                            <a class="w3-button w3-block w3-dark-grey"
                               href="${contextPath}/faculty_reg?facultyId=${currentFaculty.id}&email=${pageContext.request.userPrincipal.name}">
                                <spring:message code='home.reg'/></a>

                        </div>

                    </c:forEach>
                </c:if>
            </div>
        </div>
    </div>
</div>



<!-- /container -->


    <footer class="footer">
        <div class="container">
            <p class="text-center">Designed by <a href= "https://www.youtube.com/watch?v=znFxy6-8UcM">@Ross_Sihovsk  <img style="height: 50px" class="mx-auto rounded-circle" src="main/assets/img/me.jpg" alt="..." /></a></p>

            <ul class="social_footer_ul">

                <li><a href="https://twitter.com/Axers_123" target="_blank"><i class="fab fa-twitter"></i></a></li>
                <li><a href="https://www.linkedin.com/in/rostyslav-sihovskiy-11b896204/" target="_blank"><i class="fab fa-linkedin"></i></a></li>
                <li><a href="https://www.instagram.com/ross_sihovsk/" target="_blank"><i class="fab fa-instagram"></i></a></li>
                <li><a href="https://github.com/RossSihovsk?tab=repositories" target="_blank"> <i class="fab fa-github"></i></a></li>

            </ul>
            <!--social_footer_ul ends here-->
        </div>

    </footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</body>
</html>