<%--
  Created by IntelliJ IDEA.
  User: Ross
  Date: 7/10/2021
  Time: 10:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE HTML>
<html>
<head>
    <title>Главная</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
</head>
<body>
<div>
    <h3>${pageContext.request.userPrincipal.name}</h3>
    <sec:authorize access="!isAuthenticated()">
        <h4><a href="/login">Увійти</a></h4>
        <h4><a href="/registration">Зареєструватись</a></h4>
    </sec:authorize>
    <sec:authorize access="isAuthenticated()">
        <h4><a href="/logout">Вийти</a></h4>
    </sec:authorize>
    <h4><a href="/home">Кабінет (тільки корустувачу)</a></h4>
    <h4><a href="/admin_panel">Адмінпанель (тільки адміну)</a></h4>
</div>
</body>
</html>