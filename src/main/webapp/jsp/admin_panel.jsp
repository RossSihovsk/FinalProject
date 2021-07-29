<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>!
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
           uri="http://www.springframework.org/security/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

    <title>Admin panel</title>

    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="/admin/css/admin.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
          integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">


</head>
<body>



</div>
<!-- Page Content -->
<div>
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
                            <a style="right: 20px; text-align: center;" class="nav-link" href="/main">Назад<span class="sr-only"></span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link product-logout" href="/logout">Вийти</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>

<%--    <div class="w3-container">--%>

<%--        <div class="row  justify-content-center align-items-center d-flex text-center h-100">--%>
<%--            <div class="col-12 col-md-8  h-1 ">--%>
<%--                <h1 class="display-2  text-dark mb-1 mt-1"><strong>Керування кафедрами</strong> </h1>--%>
<%--                <p class="lead  text-black-50 mb-5">Ви можете створити нову кафедру або видалити існуючу</p>--%>

<%--            </div>--%>

<%--        </div>--%>
<%--    </div>--%>

    <div class="w3-container">

        <div class="w3-container admin_panel">
            <h2>Форма створення</h2>
            <form:form method="POST" action="${contextPath}/add_faculty" enctype="multipart/form-data">

                <div class="column_wrapper" style="display: flex; flex-wrap: wrap">
                    <div class="column1" style="margin: 0px 20px 5px 20px">
                        <label for="facultyName">Імя факультету</label><br>
                        <input type="text" id="facultyName" name="facultyName"><br>
                        <label for="numberOfStudents">Кількість студентів</label><br>
                        <input type="number" id="numberOfStudents" name="numberOfStudents" value="1"><br>
                        <label for="facultyLogo">Логотип</label><br>
                        <input type="file" id="facultyLogo" name="facultyLogo" value=choose_file><br>
                    </div>
                    <div class="column2" style="margin: 0px 20px 5px 20px">
                        <label for="firstSubject">Перший предмет </label><br>
                        <input type="text" id="firstSubject" name="firstSubject" value="Ukrainian" readonly><br>
                        <label for="secondSubject">Другий предмет </label><br>
                        <input type="text" id="secondSubject" name="secondSubject" value="Mathematics" readonly><br>
                        <label for="thirdSubject">Третій предмет</label><br>

                        <select name="thirdSubject" id="thirdSubject">
                            <option value="English">English</option>
                            <option value="Biology">Biology</option>
                            <option value="History">History</option>
                            <option value="Physics">Physics</option>
                            <option value="Chemistry">Chemistry</option>
                        </select>
                    </div>
                </div>
                <input type="submit" value=submit style="margin-left: 20px; color: white; width: 250px; background-color: #263238">
            </form:form>
            <br>
            <h2>Список: </h2>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Імя факультету</th>
                    <th>Кількість студентів</th>
                    <th>Предмети</th>
                    <th>Фото</th>
                    <th>Видалення</th>
                </tr>
                </thead>
                <tbody id="myTable">
                <c:if test="${not empty faculties}">
                    <c:forEach items="${faculties}" var="currentFaculty">
                        <tr>
                            <td>${currentFaculty.name}</td>
                            <td>${currentFaculty.countOfStudents}</td>
                            <td>${currentFaculty.subjects}</td>
                            <td> <img
                                    src="${currentFaculty.logoUrl}"
                                    alt="Faculty logo" style="width: 100px"></td>
                            <td> <%--<a href="#">Edit</a>  <br>--%>
                                <a href="${contextPath}/admin_panel/delete/${currentFaculty.id}">Видалити</a>
                            </td>
                        </tr>
                    </c:forEach>
                </c:if>


                </tbody>
            </table>
        </div>
    </div>
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

<!-- /container -->
<script src="admin/js/table.js"></script>
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