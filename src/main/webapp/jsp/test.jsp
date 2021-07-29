<%--
  Created by IntelliJ IDEA.
  User: Ross
  Date: 6/5/2021
  Time: 12:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="/home/css/home.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
          integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">



    <title>Header</title>
</head>

<body>




<<!-- Page Content -->
<div>
        <div class="w3-container  w3-center"  >

            <div id="wrapper" class="animate">
                <nav class="navbar header-top fixed-top navbar-expand-lg navbar-dark bg-dark">
                    <span class="navbar-toggler-icon leftmenutrigger"></span>
                    <a class="navbar-brand" href="#">Інтернет-магазин  журналів</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText"
                            aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarText">
                        <ul class="navbar-nav side-nav animate">
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/cabinet.jsp">Головна<span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item create-magazine">
                                <a class="nav-link" href="${pageContext.request.contextPath}/createMagazine.jsp">Додати журнал</a>
                            </li>
                            <li class="nav-item subscribes">
                                <a class="nav-link" href="${pageContext.request.contextPath}/subscribes.jsp">Підписки на журнали</a>
                            </li>
                        </ul>

                        <ul class="navbar-nav ml-md-auto d-md-flex">
                            <li class="nav-item user">${firstName} ${lastName}</li>
                            <li class="nav-item">
                                <a class="nav-link product-logout" onclick="logout()">Вийти</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
</div>

<div class="w3-container">

            <c:if test="${pageContext.request.userPrincipal.name != null}">
                <form id="logoutForm" method="POST" action="${contextPath}/logout">
                    <input type="hidden" name="${_csrf.parameterName}"
                           value="${_csrf.token}" />
                </form>

                <div class="w3-container" style="height: 50px; width: 100%">
                    <h4>  Welcome ${pageContext.request.userPrincipal.name} </h4>
                </div>

            </c:if>

    <div class="w3-container" style="display: flex; flex-wrap: wrap">
        <c:if test="${not empty faculties}">
            <c:forEach items="${faculties}" var="currentFaculty">

                <div class="w3-card-4" style="width: 20%; margin: 2%">
                    <img
                            src="${currentFaculty.logoUrl}"
                            alt="Faculty logo" style="width: 100%">
                    <div class="w3-container w3-center">
                        <h3>${currentFaculty.name}</h3>
                        <p>number_students:
                                ${currentFaculty.countOfStudents}</p>
                        <p>necessary_subjects: ${currentFaculty.subjects}</p>
                    </div>
                    <a class="w3-button w3-block w3-dark-grey"
                       href="${contextPath}/faculty_reg?facultyId=${currentFaculty.id}&email=${pageContext.request.userPrincipal.name}">
                        register</a>

                </div>

            </c:forEach>
        </c:if>
    </div>
</div>
</div>

</div>
<!-- /container -->


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>

</html>
