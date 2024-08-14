<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.BookDtls" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
    <%@include file="all_component/navbar.jsp"%>

    <%
        int bid = Integer.parseInt(request.getParameter("bid"));

        BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
        BookDtls bookDtls = dao.getBookById(bid);
    %>

    <div class="container">
        <div class="row">
            <div class="col-md-6 text-center p-5 border bg-white">
                <img src="book/<%=bookDtls.getPhotoName()%>" style="height: 200px; width: 150px"> <br/>
                <h4 class="mt-3">Book Name: <span class="text-success"><%=bookDtls.getBookName()%></span></h4>
                <h4>Author Name: <span class="text-success"><%=bookDtls.getAuthor()%></span></h4>
                <h4>Category: <span class="text-success"><%=bookDtls.getBookCategory()%></span> </h4>
            </div>

            <div class="col-md-6 text-center p-5 border bg-white">
                <h2><%=bookDtls.getBookName()%></h2>

                <%
                    if("Old".equals(bookDtls.getBookCategory())) {
                %>
                <h5 class="text-primary">Contact To Seller</h5>
                <h5 class="text-primary"><i class="fa fa-envelope"></i> Email: <%=bookDtls.getEmail()%></h5>

                <%
                    }
                %>
                <div class="row">
                    <div class="col-md-4 text-danger text-center p-2">
                        <i class="fa fa-money-bill-wave fa-2x"></i>
                        <p>Cash On Delivery</p>
                    </div>

                    <div class="col-md-4 text-danger text-center p-2">
                        <i class="fa fa-rotate-left fa-2x"></i>
                        <p>Return Available</p>
                    </div>

                    <div class="col-md-4 text-danger text-center p-2">
                        <i class="fa fa-truck-moving fa-2x"></i>
                        <p>Free Shipping</p>
                    </div>
                </div>

                <%
                    if("Old".equals(bookDtls.getBookCategory())) {
                %>
                <div class="text-center p-3">
                    <a href="index.jsp" class="btn btn-success"><i class="fa fa-cart-shopping"></i> Continue Shopping</a>
                    <a href="" class="btn btn-danger"><i class="fa fa-dollar-sign"></i> 45</a>
                </div>

                <% } else { %>
                <div class="text-center p-3">
                    <a href="" class="btn btn-primary"><i class="fa fa-cart-shopping"></i> Add Cart</a>
                    <a href="" class="btn btn-danger"><i class="fa fa-dollar-sign"></i> 45</a>
                </div>

                <%
                    }
                %>
            </div>
        </div>
    </div>

</body>
</html>