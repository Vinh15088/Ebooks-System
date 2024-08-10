<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ebook: Register</title>
    <%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
    <%@include file="all_component/navbar.jsp"%>

    <div class="container p-2">
        <div class="row mt-2">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body ">
                        <h4 class="text-center">Registration Page</h4>

                        <c:if test="${not empty succMsg}">
                            <p class="text-center text-success">${succMsg}</p>
                            <c:remove var="succMsg" scope="session"/>
                        </c:if>

                        <c:if test="${not empty failedMsg}">
                            <p class="text-center text-danger">${failedMsg}</p>
                            <c:remove var="failedMsg" scope="session"/>
                        </c:if>

                        <form action="register" method="post">
                            <div class="form-group mt-2">
                                <label for="fullName">Enter Full Name</label>
                                <input type="text" class="form-control" id="fullName" aria-describedby="emailHelp" required="required" name="fname">
                            </div>
                            <div class="form-group mt-2">
                                <label for="email">Email address</label>
                                <input type="email" class="form-control" id="email" aria-describedby="emailHelp" required="required" name="email">
                            </div>
                            <div class="form-group mt-2">
                                <label for="phoneNumber">Phone Number</label>
                                <input type="text" class="form-control" id="phoneNumber" aria-describedby="emailHelp" required="required" name="phno">
                            </div>
                            <div class="form-group mt-2">
                                <label for="exampleInputPassword1">Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required="required" name="password">
                            </div>
                            <div class="form-check mt-2">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
                                <label class="form-check-label" for="exampleCheck1">Agree terms & Condition</label>
                            </div>
                            <button type="submit" class="btn btn-primary mt-2">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@include file="all_component/footer.jsp"%>
</body>
</html>