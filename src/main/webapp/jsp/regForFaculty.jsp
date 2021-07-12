<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student registration for the faculty</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<body>
<div class="container">

    <!-- Sidebar -->
    <div class="w3-sidebar w3-light-grey w3-bar-block" style="width: 10%">
        <h3 class="w3-bar-item">Menu</h3>
        <a href="/home" class="w3-bar-item w3-button">Home</a>
        <a href="/show-entrants" class="w3-bar-item w3-button">All entrants</a>
    </div>

    <!-- Page Content -->
    <div style="margin-left: 10%">
        <div class="w3-container w3-teal">
            <h1>Register for the faculty</h1>
        </div>

        <div class="w3-container">

            <form:form method="POST" action="${contextPath}/register-for-faculty"
                       modelAttribute="facultyRegistration">
                <table>
                    <tr>
                        <th>To register for the faculty you have to fill marks from
                            such subjects:</th>
                    </tr>

                    <c:forEach items="${facultyRegistration.faculty.subjects}"
                               var="currentSubject">
                        <tr>
                            <td><form:label path="marks">${currentSubjects}</form:label></td>
                            <td><form:input path="marks" /></td>
                        </tr>
                    </c:forEach>

                    <tr>
                        <td><form:input type="hidden" path="facultyId"
                                        value="${facultyRegistration.faculty.id}" /></td>
                        <td><form:input type="hidden" path="email"
                                        value="${facultyRegistration.user.email}" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Register" /></td>
                    </tr>

                </table>
                <input type="hidden" name="${_csrf.parameterName}"
                       value="${_csrf.token}" />
            </form:form>
        </div>
    </div>



</div>
<!-- /container -->
<script
        src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</body>
</html>