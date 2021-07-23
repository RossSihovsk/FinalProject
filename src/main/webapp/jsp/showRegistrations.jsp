<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
           uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registered entrants</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


</head>
<body>
<!-- Sidebar -->
<div class="w3-sidebar w3-light-grey w3-bar-block" style="width: 10%">
    <h3 class="w3-bar-item">menu</h3>
    <a href="/home" class="w3-bar-item w3-button">home</a>
    <a href="/show-entrants" class="w3-bar-item w3-button">entrants</a>
        <a href="/admin_panel" class="w3-bar-item w3-button">adminpanel</a>
    <a href="/login?logout" class="w3-bar-item w3-button">logout</a>

</div>

<!-- Page Content -->
<div class="container mt-3" style="margin-left: 10%">
    <div class="w3-container w3-orange w3-center">
        <h1>entrants</h1>
    </div>

    <input class="form-control" id="myInput" type="text"
           placeholder="Search.."> <br>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>faculty</th>
            <th>first_name</th>
            <th>last_name</th>
            <th>email</th>
            <th>marks</th>
            <th>photo</th>
            <th>document</th>
            <th>sum_marks</th>
        </tr>
        </thead>
        <tbody id="myTable">

        <c:forEach items="${facultyRegistrations}" var="currentRegistration">
            <tr>
                <td>${currentRegistration.faculty.name}</td>
                <td>${currentRegistration.user.firstName}</td>
                <td>${currentRegistration.user.lastName}</td>
                <td>${currentRegistration.user.email}</td>
                <td>${currentRegistration.faculty.subjects}<br>${currentRegistration.marks}</td>
                <td><img
                        src="${currentRegistration.uploadPhoto}"
                        alt="uploadPhoto" style="width: 50px">
                </td>
                <td><img
                        src="${currentRegistration.uploadDocument}"
                        alt="uploadPhoto" style="width: 50px"></td>
                <td>${currentRegistration.sumMarks}</td>
            </tr>
        </c:forEach>

        </tbody>
    </table>

</div>

<script src="js/table.js"></script>

</body>
</html>