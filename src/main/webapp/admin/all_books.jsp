<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="java.util.List" %>
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
    <title>Admin: All Books</title>
    <%@include file="allCss.jsp"%>
</head>
<body>
    <%@include file="navbar.jsp"%>
    <h3 class="text-center">Hello Admin</h3>

    <c:if test="${not empty succMsg}">
        <p class="text-center text-success">${succMsg}</p>
        <c:remove var="succMsg" scope="session"/>
    </c:if>

    <c:if test="${not empty failedMsg}">
        <p class="text-center text-danger">${failedMsg}</p>
        <c:remove var="failedMsg" scope="session"/>
    </c:if>

    <div class="container">

    </div>
    <table class="table table-striped">
        <thead class="bg-primary text-white">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Book Name</th>
            <th scope="col">Author</th>
            <th scope="col">Price</th>
            <th scope="col">Book Categories</th>
            <th scope="col">Status</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <%
            BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
            List<BookDtls> list = dao.getAllBooks();

            for(BookDtls book : list) {
        %>
        <tr>
            <td><%= book.getId() %></td>
            <td><img src="../book/<%=book.getPhotoName()%>" style="width: 50px; height: 50px;"></td>
            <td><%=book.getAuthor()%></td>
            <td><%=book.getPrice()%></td>
            <td><%=book.getBookCategory()%></td>
            <td><%=book.getStatus()%></td>
            <td>
                <a href="edit_books.jsp?id=<%=book.getId()%>" class="btn btn-sm btn-primary">Edit</a>
                <a href="../delete?id=<%=book.getId()%>" class="btn btn-sm btn-danger">Delete</a>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>

</body>
</html>