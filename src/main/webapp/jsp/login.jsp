<%--
  Created by IntelliJ IDEA.
  User: Ross
  Date: 7/9/2021
  Time: 6:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title><spring:message code='login.title'/></title>
    <base href="/">

    <!-- Font Icon -->
    <link rel="stylesheet" href="logAndReg/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="logAndReg/css/style.css">


</head>

<body>
<%--<sec:authorize access="isAuthenticated()">--%>
<%--    <% response.sendRedirect("/"); %>--%>
<%--</sec:authorize>--%>
<div class="main">

<!-- Sing in  Form -->

<section class="sign-in">
    <div class="container">
        <div class="signin-content">
            <div class="signin-image">
                <figure><img src="logAndReg/images/signin-image.jpg" alt="sing up image"></figure>
                <a href="/registration" class="signup-image-link"><spring:message code='login.registration'/></a>
            </div>

            <div class="signin-form">
                <h2 class="form-title"><spring:message code='login.signin'/></h2>
                <form method="POST" action="/login">
                    <div class="form-group">
                        <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                        <input input name="username" type="text" placeholder="<spring:message code='login.username'/>"/>
                    </div>
                    <div class="form-group">
                        <label><i class="zmdi zmdi-lock"></i></label>
                        <input name="password" type="password" placeholder="<spring:message code='login.password'/>"/>
                    </div>
                    <div class="form-group">
                        <p><spring:message code="login.choose_language"/></p>
                            <select id="locales">

                            <option value="en"><spring:message code='login.english'/></option>
                            <option value="ua"><spring:message code='login.ukrainian'/></option>
                        </select>
                    </div>

                    <div class="form-group form-button">
                        <input type="submit" name="signin" id="signin" class="form-submit" value="<spring:message code='login.login'/>"/>
                    </div>

                </form>
            </div>
        </div>
    </div>
</section>
</div>



<!-- JS -->
<script src="logAndReg/vendor/jquery/jquery.min.js"></script>
<script src="logAndReg/js/lang.js"></script>
</body>
</html>
