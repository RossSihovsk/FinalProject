<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
    <title>Error 403</title>
    <link rel="stylesheet" href="403/css/403.css">
</head>
<body>
<body>
<section class="notFound">
    <div class="img">
        <img src="403/img/backToTheHomepage.webp" alt="Back to the Homepage"/>
        <img src="403/img/Delorean.webp" alt="El Delorean, El Doc y Marti McFly"/>
    </div>
    <div class="text">
        <h1>403</h1>
        <h2><spring:message code='403.noPermission'/></h2>
        <h3><spring:message code='403.backHome'/></h3>
        <a href="/main" class="yes"><spring:message code='403.yes'/></a>
        <a href="https://www.youtube.com/watch?v=G3AfIvJBcGo"><spring:message code='403.no'/></a>
    </div>
</section>
</body>


</body>
</html>
