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
        <title>Main Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <!-- Favicon-->
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="main/css/styles.css" rel="stylesheet" />

</head>
<body id="page-top">


<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">
        <p class="navbar-brand"> Вітаємо ${pageContext.request.userPrincipal.name} </p>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                <sec:authorize access="!isAuthenticated()">
                <li class="nav-item"><a class="nav-link" href="/login">Увійти</a></li>
                <li class="nav-item"><a class="nav-link" href="/registration">Зареєструватись</a></li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                <li class="nav-item"><a class="nav-link" href="/logout">Вийти</a></li>
                </sec:authorize>
            </ul>
        </div>
    </div>
</nav>
<!-- Masthead-->
<header class="masthead">
    <div class="container">
        <div class="masthead-subheading">Фінальний проект</div>
        <div class="masthead-heading text-uppercase">Приймальна комісія </div>
        <a class="btn btn-primary btn-xl text-uppercase" href="#services">Перейти далі</a>
    </div>
</header>
<!-- Services-->
<section class="page-section" id="services">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">Меню</h2>
            <h3 class="section-subheading text-muted">Виберіть необхідний вам пункт</h3>
        </div>
        <div class="row text-center" >
            <div class="col-md-6 custom-hover" onclick="location.href='/home';" style="cursor: pointer;">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-users fa-stack-2x text-primary"></i>
                            <!--                            <i class="fas fa-circle fa-stack-2x text-primary"></i>-->
                            <!--                            <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>-->
                        </span>
                <h4 class="my-3">Особистий кабінет</h4>
                <p class="text-muted">Особистий кабінет створений виключно для студентів, які бажають подати документи на одну із кафедр нашого університету</p>
            </div>
            <div class="col-md-6 custom-hover" onclick="location.href='/admin_panel';" style="cursor: pointer;">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-laptop fa-stack-1x fa-inverse"></i>
                        </span>
                <h4 class="my-3">Адмін-панель</h4>
                <p class="text-muted">Адмін-панель доступна тільки для адміністраторів закладу, для створення нової кафедри </p>
            </div>

        </div>
    </div>
</section>


<!-- About-->
<section class="page-section" id="about">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">Технології</h2>
            <h3 class="section-subheading text-muted">Технології які використовувались в проекті</h3>
        </div>
        <ul class="timeline">
            <li>
                <div class="timeline-image"><img class="rounded-circle img-fluid" src="main/assets/img/HTML5.png" alt="..." /></div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading">HTML-5</h4>
                    </div>
                    <div class="timeline-body"><p class="text-muted">HTML5 — наступна версія мови HTML.це мова тегів, засобами якої здійснюється розмічання вебсторінок для мережі Інтернет. Браузери отримують HTML-документи з вебсервера або з локальної пам'яті й передають документи в мультимедійні вебсторінки. </p></div>
                </div>
            </li>

            <li class="timeline-inverted">
                <div class="timeline-image"><img class="rounded-circle img-fluid" src="main/assets/img/css-3-logo.png" alt="..." /></div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading">CSS</h4>
                    </div>
                    <div class="timeline-body"><p class="text-muted">це спеціальна мова стилю сторінок, що використовується для опису їхнього зовнішнього вигляду. Самі ж сторінки написані мовами розмітки даних. CSS є основною технологією всесвітньої павутини, поряд із HTML</p></div>
                </div>
            </li>
            <li>
                <div class="timeline-image"><img class="rounded-circle img-fluid" src="main/assets/img/jsl.jpg" alt="..." /></div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading">Java-Script</h4>
                    </div>
                    <div class="timeline-body"><p class="text-muted">динамічна, об'єктно-орієнтована прототипна мова програмування.Найчастіше використовується для створення сценаріїв вебсторінок, що надає можливість на боці клієнта  взаємодіяти з користувачем</p></div>
                </div>
            </li>
            <li class="timeline-inverted">
                <div class="timeline-image"><img class="rounded-circle img-fluid" src="main/assets/img/msqlLogo.png" alt="..." /></div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading">MySQL</h4>
                    </div>
                    <div class="timeline-body"><p class="text-muted">вільна система керування реляційними базами даних,була створена як альтернатива комерційним системам. MySQL з самого початку була дуже схожою на mSQL, проте з часом вона все розширювалася і зараз MySQL — одна з найпоширеніших систем керування базами даних.</p></div>
                </div>
            </li>
            <li>
                <div class="timeline-image"><img class="rounded-circle img-fluid" src="main/assets/img/java-logo.png" alt="..." /></div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading">Java</h4>
                    </div>
                    <div class="timeline-body"><p class="text-muted">Основна мова на якій виконано данний проект. об'єктно-орієнтована мова програмування, випущена 1995 року компанією «Sun Microsystems» як основний компонент платформи Java. В офіційній реалізації Java-програми компілюються у байт-код, який при виконанні інтерпретується віртуальною машиною для конкретної платформи.</p></div>
                </div>
            </li>

            <li class="timeline-inverted">
                <div class="timeline-image"><img class="rounded-circle img-fluid" src="main/assets/img/spring-logo.png" alt="..." /></div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading">Spring</h4>
                    </div>
                    <div class="timeline-body"><p class="text-muted">Spring – це фреймворк, який допомагає розробляти прості, швидкі, гнучкі і переносні додатки на Java. Модулі які були використані: Spring Boot, Spring Data, Spring MVC, Spring Security</p></div>
                </div>
            </li>
            <li class="timeline-inverted">
                <div class="timeline-image">
                    <h4>
                        Проект
                        <br />
                        Підтримує
                        <br />
                        Розширення!
                    </h4>
                </div>
            </li>
        </ul>
    </div>
</section>
<!-- Team-->
<section class="page-section bg-light" id="team">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">Розробник</h2>
            <h3 class="section-subheading text-muted">Посилання на мої соц-мережі</h3>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="team-member">
                    <img class="mx-auto rounded-circle" src="main/assets/img/me.jpg" alt="..." />
                    <h4>Сіховський Ростислав</h4>
                    <p class="text-muted">Розробник та дизайнер</p>
                    <a class="btn btn-dark btn-social mx-2" href="https://twitter.com/Axers_123"><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-dark btn-social mx-2" href="https://www.linkedin.com/in/rostyslav-sihovskiy-11b896204/"><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-dark btn-social mx-2" href="https://github.com/RossSihovsk?tab=repositories"><i class="fab fa-github"></i></a>
                    <a class="btn btn-dark btn-social mx-2" href="https://www.instagram.com/ross_sihovsk/"> <i class="fab fa-instagram-square"></i></a>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8 mx-auto text-center"><p class="large text-muted">Буду радий вашому візиту та будь-якій активності у моїх соціальних мережах</p></div>
        </div>
    </div>
</section>








<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="main/js/scripts.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>