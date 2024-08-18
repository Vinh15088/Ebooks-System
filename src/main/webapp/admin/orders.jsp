<%@ page import="com.DAO.BookOrderDDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.Book_Order" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin: Orders</title>
    <%@include file="allCss.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<h3 class="text-center">Hello Admin</h3>

<div class="container">

</div>
<table class="table table-striped">
    <thead class="bg-primary text-white">
    <tr>
        <th scope="col">Order Id</th>
        <th scope="col">Name</th>
        <th scope="col">Email</th>
        <th scope="col">Address</th>
        <th scope="col">Phone No</th>
        <th scope="col">Book Name</th>
        <th scope="col">Author</th>
        <th scope="col">Price</th>
        <th scope="col">Payment Type</th>
    </tr>
    </thead>
    <tbody>

    <%
        BookOrderDDAOImpl dao = new BookOrderDDAOImpl(DBConnect.getConnection());
        List<Book_Order> list = dao.getBookOrder();
        for( Book_Order b : list ) {
    %>

    <tr>
        <th scope="row"><%=b.getId()%></th>
        <td><%=b.getUserName()%></td>
        <td><%=b.getEmail()%></td>
        <td><%=b.getFullAdd()%></td>
        <td><%=b.getPhno()%></td>
        <td><%=b.getBookName()%></td>
        <td><%=b.getAuthor()%></td>
        <td><%=b.getPrice()%></td>
        <td><%=b.getPaymentType()%></td>
    </tr>

    <%
        }
    %>
    </tbody>
</table>

</body>
</html>