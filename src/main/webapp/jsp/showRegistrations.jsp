<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
           uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registered entrants</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


    <link rel="stylesheet" href="/showReg/css/showReg.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
          integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
</head>
<body>


<!-- Page Content -->
<div class="container mt-3">
    <div class="w3-container  w3-center " style="padding-bottom:5%;">
        <div id="wrapper" class="animate">
            <nav class="navbar header-top fixed-top navbar-expand-lg navbar-dark bg-dark">
                <p class="navbar-brand" >Список студентів</p>
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

    <div class="w3-container">

        <div class="row  justify-content-center align-items-center d-flex text-center h-100">
            <div class="col-12 col-md-8  h-1 ">
                <h1 class="display-2  text-dark mb-1 mt-1"><strong>Список Студентів</strong> </h1>
                <p class="lead  text-black-50 mb-5">Тут ви можете ознайомитись із списком студентів яких прийнято в наш університет а також їхніми балами та документами</p>

            </div>

        </div>
    </div>

    <input class="form-control" id="myInput" type="text"
           placeholder="Search.."> <br>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Факультет</th>
            <th>Імя</th>
            <th>Прізвище</th>
            <th>Пошта</th>
            <th>Оцінки</th>
            <th>Фото</th>
            <th>Документ</th>
            <th>Сума балів</th>
        </tr>
        </thead>
        <tbody id="myTable">

        <c:forEach items="${facultyRegistrations}" var="currentRegistration">
            <tr>
                <td>${currentRegistration.faculty.name}</td>
                <td>${currentRegistration.user.firstName}</td>
                <td>${currentRegistration.user.lastName}</td>
                <td>${currentRegistration.user.email}</td>
                <td>${currentRegistration.faculty.subjects}<br>${currentRegistration.marks}</td>
                <td><img
                        src="${currentRegistration.uploadPhoto}"
                        alt="uploadPhoto" style="width: 50px">
                </td>
                <td><img
                        src="${currentRegistration.uploadDocument}"
                        alt="uploadPhoto" style="width: 50px"></td>
                <td>${currentRegistration.sumMarks}</td>
            </tr>
        </c:forEach>

        </tbody>
    </table>

</div>


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


<script src="showReg/js/table.js"></script>
<script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</body>
</html>