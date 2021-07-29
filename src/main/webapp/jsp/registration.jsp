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

    <title>Create an account</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="logAndReg/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="logAndReg/css/style.css">

</head>

<body>

<%--<div class="container">--%>

<%--    <form:form method="POST" modelAttribute="userForm" class="form-signin">--%>
<%--        <h2 class="form-signin-heading">Create your account</h2>--%>

<%--        <spring:bind path="firstName">--%>
<%--            <div class="form-group ${status.error ? 'has-error' : ''}">--%>
<%--                <form:input type="text" path="firstName" class="form-control" placeholder="First name"--%>
<%--                            autofocus="true"></form:input>--%>
<%--                <form:errors path="firstName"></form:errors>--%>
<%--            </div>--%>
<%--        </spring:bind>--%>

<%--        <spring:bind path="lastName">--%>
<%--            <div class="form-group ${status.error ? 'has-error' : ''}">--%>
<%--                <form:input type="text" path="lastName" class="form-control" placeholder="Last name"--%>
<%--                            autofocus="true"></form:input>--%>
<%--                <form:errors path="lastName"></form:errors>--%>
<%--            </div>--%>
<%--        </spring:bind>--%>


<%--        <spring:bind path="email">--%>
<%--            <div class="form-group ${status.error ? 'has-error' : ''}">--%>
<%--                <form:input type="text" path="email" class="form-control" placeholder="Email"--%>
<%--                            autofocus="true"></form:input>--%>
<%--                <form:errors path="username"></form:errors>--%>
<%--            </div>--%>
<%--        </spring:bind>--%>

<%--        <spring:bind path="password">--%>
<%--            <div class="form-group ${status.error ? 'has-error' : ''}">--%>
<%--                <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>--%>
<%--                <form:errors path="password"></form:errors>--%>
<%--            </div>--%>
<%--        </spring:bind>--%>

<%--        <spring:bind path="passwordConfirm">--%>
<%--            <div class="form-group ${status.error ? 'has-error' : ''}">--%>
<%--                <form:input type="password" path="passwordConfirm" class="form-control"--%>
<%--                            placeholder="Confirm your password"></form:input>--%>
<%--                <form:errors path="passwordConfirm"></form:errors>--%>
<%--            </div>--%>
<%--        </spring:bind>--%>

<%--        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>--%>
<%--    </form:form>--%>

<%--</div>--%>

<!-- Sign up form -->
<div class="main">
<section class="signup">
    <div class="container">
        <div class="signup-content">
            <div class="signup-form">
                <h2 class="form-title">Sign up</h2>
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
                        <input type="submit" name="signup" id="signup" class="form-submit" value="Register"/>
                    </div>
                </form:form>
            </div>
            <div class="signup-image">
                <figure><img src="logAndReg/images/signup-image.jpg" alt="sing up image"></figure>
                <a href="/login" class="signup-image-link">I am already member</a>
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
