<%--
  Created by IntelliJ IDEA.
  User: Ross
  Date: 7/3/2021
  Time: 9:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><spring:message code='registration.title'/></title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="logAndReg/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="logAndReg/css/style.css">

</head>

<body>



<!-- Sign up form -->
<div class="main">
<section class="signup">
    <div class="container">
        <div class="signup-content">
            <div class="signup-form">
                <h2 class="form-title"><spring:message code='registration.signup'/></h2>
                <form:form method="POST" modelAttribute="userForm" class="form-signin">
                    <div class="form-group">
                        <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                        <form:input type="text" path="firstName" class="form-control" placeholder="First name"/>
                    </div>
                    <div class="form-group">
                        <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                        <form:input type="text" path="lastName" class="form-control" placeholder="Last name"/>
                    </div>
                    <div class="form-group">
                        <label ><i class="zmdi zmdi-email"></i></label>
                        <form:input type="text" path="email" class="form-control" placeholder="Email"/>
                    </div>
                    <div class="form-group">
                        <label><i class="zmdi zmdi-lock"></i></label>
                        <form:input type="password" path="password" class="form-control" placeholder="Password"/>
                    </div>
                    <div class="form-group">
                        <label><i class="zmdi zmdi-lock-outline"></i></label>
                        <form:input type="password" path="passwordConfirm" class="form-control" placeholder="Confirm your password"/>
                    </div>

                    <div class="form-group form-button">
                        <input type="submit" name="signup" id="signup" class="form-submit" value="<spring:message code='registration.register'/>"/>
                    </div>
                </form:form>
            </div>
            <div class="signup-image">
                <figure><img src="logAndReg/images/signup-image.jpg" alt="sing up image"></figure>
                <a href="/login" class="signup-image-link"><spring:message code='registration.alreadyMember'/></a>
            </div>
        </div>
    </div>
</section>
</div>


<!-- JS -->
<script src="logAndReg/vendor/jquery/jquery.min.js"></script>
<script src="logAndReg/js/main.js"></script>
</body>
</html>
