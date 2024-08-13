<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.BookDtls" %>
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
    <title>Admin: Edit Books</title>
    <%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f2f2">
<%@include file="navbar.jsp"%>
<div class="container">
    <div class="row p-1">
        <div class="col-md-6 offset-md-3 p-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center">Edit Books</h4>
                    <%
                        int id = Integer.parseInt(request.getParameter("id"));
                        BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
                        BookDtls bookDtls = dao.getBookById(id);
                    %>


                    <form action="../edit_books" method="post" >
                        <input type="hidden" name="id" value="<%=bookDtls.getId()%>">

                        <div class="form-group py-2">
                            <label for="exampleInputEmail1">Book Name*</label>
                            <input name="bname" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=bookDtls.getBookName()%>">
                        </div>

                        <div class="form-group py-2">
                            <label for="exampleInputEmail1">Author Name*</label>
                            <input name="author" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=bookDtls.getAuthor()%>">
                        </div>

                        <div class="form-group py-2">
                            <label for="exampleInputPassword1">Price*</label>
                            <input name="price" type="number" class="form-control" id="exampleInputPassword1" aria-describedby="emailHelp" value="<%=bookDtls.getPrice()%>">
                        </div>

                        <div class="form-group py-2">
                            <label for="inputState">Book Status</label>
                            <select id="inputState" name="tatus" class="form-control">
                                <%
                                    if ("Active".equals(bookDtls.getStatus())) {
                                %>
                                <option value="Active">Active</option>
                                <%
                                    } else {
                                %>
                                <option value="Active">Active</option>
                                <option value="Inactive">Inactive</option>
                                <%
                                    }
                                %>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-primary my-2">Update</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>