<%--
  Created by IntelliJ IDEA.
  User: Ross
  Date: 7/9/2021
  Time: 6:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Log in with your account</title>
    <base href="/">

    <!-- Font Icon -->
    <link rel="stylesheet" href="logAndReg/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="logAndReg/css/style.css">


</head>

<body>
<sec:authorize access="isAuthenticated()">
    <% response.sendRedirect("/"); %>
</sec:authorize>
<div class="main">
<!--
<div>
    <form method="POST" action="/login">
        <h2>Вход в систему</h2>
        <div>
            <input name="username" type="text" placeholder="Username" autofocus="true"/>
            <input name="password" type="password" placeholder="Password"/>
            <button type="submit">Log In</button>
            <h4><a href="/registration">Зареєструватись?</a></h4>
        </div>
    </form>
</div>-->


<!-- Sing in  Form -->

<section class="sign-in">
    <div class="container">
        <div class="signin-content">
            <div class="signin-image">
                <figure><img src="logAndReg/images/signin-image.jpg" alt="sing up image"></figure>
                <a href="/registration" class="signup-image-link">Create an account</a>
            </div>

            <div class="signin-form">
                <h2 class="form-title">Sign in</h2>
                <form method="POST" action="/login">
                    <div class="form-group">
                        <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                        <input input name="username" type="text" placeholder="Username"/>
                    </div>
                    <div class="form-group">
                        <label><i class="zmdi zmdi-lock"></i></label>
                        <input name="password" type="password" placeholder="Password"/>
                    </div>

                    <div class="form-group form-button">
                        <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                    </div>
                </form>
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
