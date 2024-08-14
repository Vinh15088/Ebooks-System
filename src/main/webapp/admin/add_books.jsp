<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<%@ taglib prefix="c" uri="jakarta.tags.core" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin: Add Books</title>
    <%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f2f2">
    <%@include file="navbar.jsp"%>
    <div class="container">
        <div class="row p-1">
            <div class="col-md-6 offset-md-3 p-4">
                <div class="card">
                    <div class="card-body">
                        <h4 class="text-center">Add Books</h4>
                        <c:if test="${not empty succMsg}">
                            <p class="text-center text-success">${succMsg}</p>
                            <c:remove var="succMsg" scope="session"/>
                        </c:if>

                        <c:if test="${not empty failedMsg}">
                            <p class="text-center text-danger">${failedMsg}</p>
                            <c:remove var="failedMsg" scope="session"/>
                        </c:if>

                        <form action="../add_books" method="post" enctype="multipart/form-data">

                            <div class="form-group py-2">
                                <label for="exampleInputEmail1">Book Name*</label>
                                <input name="bname" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>

                            <div class="form-group py-2">
                                <label for="exampleInputEmail1">Author Name*</label>
                                <input name="author" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>

                            <div class="form-group py-2">
                                <label for="exampleInputPassword1">Price*</label>
                                <input name="price" type="number" class="form-control" id="exampleInputPassword1" aria-describedby="emailHelp">
                            </div>

                            <div class="form-group py-2">
                                <label for="inputState">Book Categories</label>
                                <select id="inputState" name="categories" class="form-control">
                                    <option selected>--select--</option>
                                    <option value="New">New Book</option>
                                </select>
                            </div>

                            <div class="form-group py-2">
                                <label for="inputState">Book Status</label>
                                <select id="inputState" name="status" class="form-control">
                                    <option selected>--select--</option>
                                    <option value="Active">Active</option>
                                    <option value="Inactive">Inactive</option>
                                </select>
                            </div>

                            <div class="form-group py-2">
                                <label for="exampleFormControlFile1">Upload Photo</label>
                                <input name="bimg" type="file" class="form-control-file" id="exampleFormControlFile1" aria-describedby="emailHelp">
                            </div>

                            <button type="submit" class="btn btn-primary my-2">Add</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>
</html>