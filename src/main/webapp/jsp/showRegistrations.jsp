<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <h3 class="w3-bar-item">Menu</h3>
    <a href="/home" class="w3-bar-item w3-button">Home</a> <a
        href="/show-entrants" class="w3-bar-item w3-button">Show all
    entrants</a>
</div>

<!-- Page Content -->
<div class="container mt-3" style="margin-left: 10%">
    <div class="w3-container w3-teal">
        <h1>Registered entrants</h1>
    </div>

    <input class="form-control" id="myInput" type="text"
           placeholder="Search.."> <br>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Faculty</th>
            <th>First name</th>
            <th>Last name</th>
            <th>Email</th>
            <th>Marks</th>
        </tr>
        </thead>
        <tbody id="myTable">

        <c:forEach items="${facultyRegistrations}" var="currentRegistration">
            <tr>
                <td>${currentRegistration.faculty.name}</td>
                <td>${currentRegistration.user.name}</td>
                <td>${currentRegistration.user.surname}</td>
                <td>${currentRegistration.user.email}</td>
                <td>${currentRegistration.faculty.subjects}<br>${currentRegistration.marks}</td>
            </tr>
        </c:forEach>

        </tbody>
    </table>

</div>

<script>
    $(document).ready(function(){
        $("#myInput").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#myTable tr").filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
</script>

</body>
</html>