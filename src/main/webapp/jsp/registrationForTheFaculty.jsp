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

    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</head>
<body>
<body>
<div class="container">

    <!-- Sidebar -->
    <div class="w3-sidebar w3-light-grey w3-bar-block" style="width: 10%">
        <h3 class="w3-bar-item">menu</h3>
        <a href="/home" class="w3-bar-item w3-button">home</a>
        <a href="/show-entrants" class="w3-bar-item w3-button">entrants</a>

            <a href="/admin_panel" class="w3-bar-item w3-button">adminpanel</a>

        <a href="/login?logout" class="w3-bar-item w3-button">logout</a>

    </div>

    <!-- Page Content -->

    <div style="margin-left: 10%">

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <form id="logoutForm" method="POST" action="${contextPath}/logout">
                <input type="hidden" name="${_csrf.parameterName}"
                       value="${_csrf.token}" />
            </form>

        </c:if>

        <div class="w3-container w3-orange w3-center">
            <h1>Register for the faculty of ${registrationForFaculty.faculty.name}</h1>
        </div>

        <div class="w3-container admin_panel">
            <h2>Registration form</h2>
            <form:form method="POST" action="${contextPath}/faculty_reg" modelAttribute="registrationForFaculty" enctype="multipart/form-data">

                <div class="column_wrapper" style="display: flex; flex-wrap: wrap">
                    <div class="column1" style="margin: 0px 20px 5px 20px">
                        <label > <strong>User email:</strong> </label>
                        <label >${pageContext.request.userPrincipal.name}</label><br>

                        <label > <strong>First name:</strong> </label>
                        <label >${currentUser.firstName}</label><br>

                        <label > <strong>Last name:</strong> </label>
                        <label >${currentUser.lastName}</label><br>

                        <label for="userPhoto"><strong>User photo</strong></label><br>
                        <input type="file" id="userPhoto" name="userPhoto" style="margin-top: 10px; margin-bottom: 10px"><br>
                        <label for="documentPhoto"><strong>User certificate scan image</strong></label><br>
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
															margin-top: 10px; background-color: darkorange">
            </form:form>
            <br>
        </div>

    </div>

</div>
<!-- /container -->


</body>
</html>