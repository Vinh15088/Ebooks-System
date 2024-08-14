<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.BookDtls" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>All Recent Book</title>
    <%@include file="all_component/allCss.jsp"%>
    <style type="text/css">
        .crd-ho:hover {
            background-color: #fcf7f7;
        }
    </style>
</head>
<body>
    <%@include file="all_component/navbar.jsp"%>

    <div class="container-fluid">
        <div class="row">
            <%
                BookDAOImpl dao1 = new BookDAOImpl(DBConnect.getConnection());
                List<BookDtls> list1 = dao1.getAllRecentBook();
                for(BookDtls book : list1) {
            %>
            <div class="col-md-3 mt-2 pb-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=book.getPhotoName()%>"
                             style="width: 150px; height: 200px" class="img-thumblin">
                        <p><%=book.getBookName()%></p>
                        <p><%=book.getAuthor()%></p>
                        <p>
                            Categories: <%=book.getBookCategory()%>
                        </p>
                        <div class="col">
                            <a href="" class="btn btn-danger btn-sm"
                                    <%= book.getBookCategory().equals("Old") ? "hidden" : "" %> >
                                <i class="fa fa-cart-shopping"></i> Add Cart
                            </a>
                            <a href="" class="btn btn-success btn-sm ">View Details</a>
                            <a href="" class="btn btn-danger btn-sm "><i class="fa fa-dollar-sign"></i><%=book.getPrice()%></a>
                        </div>

                    </div>
                </div>
            </div>
            <%
                }
            %>

        </div>
    </div>
</body>
</html>