<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
           uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student registration for the faculty</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="/regForFaculty/css/regForFaculty.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
          integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">

</head>
<body>
<div class="container">


    <!-- Page Content -->

    <div>
        <div class="w3-container  w3-center">
            <div class="w3-container w3-center" style="padding-bottom:10%;"  >

                <div id="wrapper" class="animate">
                    <nav class="navbar header-top fixed-top navbar-expand-lg navbar-dark bg-dark">
                        <p class="navbar-brand" >Факультет ${registrationForFaculty.faculty.name} </p>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText"
                                aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>


                        <div class="collapse navbar-collapse" id="navbarText">

                            <ul class="navbar-nav ml-md-auto d-md-flex">
                                <li class="nav-item">
                                    <a style="right: 20px; text-align: center;" class="nav-link" href="/home">Назад<span class="sr-only"></span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link product-logout" href="/logout">Вийти</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <h1>Реєстрація на факультет ${registrationForFaculty.faculty.name}</h1>
        </div>

        <div class="w3-container admin_panel ">
            <h2>Registration form</h2>
            <form:form method="POST" action="${contextPath}/faculty_reg" modelAttribute="registrationForFaculty" enctype="multipart/form-data">

                <div class="column_wrapper" style="display: flex; flex-wrap: wrap">
                    <div class="column1" style="margin: 0px 20px 5px 20px">
                        <label > <strong>Пошта:</strong> </label>
                        <label >${pageContext.request.userPrincipal.name}</label><br>

                        <label > <strong>Імя:</strong> </label>
                        <label >${currentUser.firstName}</label><br>

                        <label > <strong>Прізвище:</strong> </label>
                        <label >${currentUser.lastName}</label><br>

                        <label for="userPhoto"><strong>Фото</strong></label><br>
                        <input type="file" id="userPhoto" name="userPhoto" style="margin-top: 10px; margin-bottom: 10px"><br>
                        <label for="documentPhoto"><strong>Сертифікату</strong></label><br>
                        <input type="file" id="documentPhoto" name="documentPhoto" style="margin-top: 10px; margin-bottom: 10px"><br>
                    </div>
                    <div class="column2" style="margin: 0px 20px 5px 20px">
                        <table>

                            <c:forEach items="${registrationForFaculty.faculty.subjects}" var="currentSubject">
                                <tr  style="height: 70px">
                                    <td><form:label path="marks"><strong>The mark from subject  ${currentSubject}</strong> </form:label></td>
                                    <td><form:input path="marks" /> </td>
                                </tr>

                            </c:forEach>
                            <tr>
                                <td><form:input type="hidden" path="facultyId"
                                                value="${registrationForFaculty.faculty.id}" /></td>
                                <td><form:input type="hidden" path="email"
                                                value="${registrationForFaculty.user.email}" /></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <input type="submit" value="Register" style="margin-left: 20px; color: white; width: 250px;
															margin-top: 10px; background-color: #263238">
            </form:form>
            <br>
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


<%--<script--%>
<%--        src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>--%>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</body>
</html>