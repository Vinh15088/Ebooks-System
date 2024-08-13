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
    <title>Admin: Home</title>
    <%@include file="allCss.jsp"%>

    <style type="text/css">
        a{
            text-decoration: none;
            color: black;
        }
        a:hover {
            text-decoration: none;
            color: black;
        }
    </style>
</head>
<body>
    <%@include file="navbar.jsp"%>

    <div class="container">
        <div class="row p-5">
            <div class="col-md-3">
                <div class="card">
                    <a href="add_books.jsp">
                        <div class="card_body text-center p-4">
                            <i class="fa fa-square-plus fa-3x text-primary"></i> <br/>
                            <h4>Add Books</h4>
                            ------------
                        </div>
                    </a>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card">
                    <a href="all_books.jsp">
                        <div class="card_body text-center p-4">
                            <i class="fa fa-book-open-reader fa-3x text-danger"></i> <br/>
                            <h4>All Books</h4>
                            ------------
                        </div>
                    </a>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card">
                    <a href="orders.jsp">
                        <div class="card_body text-center p-4">
                            <i class="fa fa-box-open fa-3x text-warning"></i><br/>
                            <h4>Orders</h4>
                            ------------
                        </div>
                    </a>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card">
                    <a href="logout.jsp">
                        <div class="card_body text-center p-4">
                            <i class="fa fa-right-from-bracket fa-3x text-primary"></i> <br/>
                            <h4>Logout</h4>
                            ------------
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div style="margin-top: 600px">
        <%@include file="footer.jsp"%>
    </div>
</body>
</html>