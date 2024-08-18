<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.BookDtls" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>All New Book</title>
    <%@include file="all_component/allCss.jsp"%>
    <style type="text/css">
        .crd-ho:hover {
            background-color: #fcf7f7;
        }
    </style>
</head>
<body>
    <%
        User user = (User) session.getAttribute("userobj");
    %>

    <c:if test="${not empty addCart}">
        <div id="toast" style="
        min-width: 300px;
        position: fixed;
        bottom: 30px;
        left: 50%;
        margin-left: -150px;
        background: #333;
        padding: 10px;
        color: white;
        text-align: center;
        z-index: 1;
        font-size: 18px;
        visibility: visible;
        box-shadow: 0px 0px 100px #000;
        opacity: 1;
        transition: opacity 2s ease-in-out;">
                ${addCart}
        </div>

        <!-- T?o hi?u ?ng m? d?n -->
        <c:choose>
            <c:when test="${!empty addCart}">
                <style>
                    #toast {
                        animation: fadeOutToast 2s 2.5s forwards;
                    }

                    @keyframes fadeOutToast {
                        from {
                            opacity: 1;
                        }
                        to {
                            opacity: 0;
                        }
                    }
                </style>
            </c:when>
        </c:choose>

        <c:remove var="addCart" scope="session"/>
    </c:if>


    <%@include file="all_component/navbar.jsp"%>

    <div class="container-fluid">
        <div class="row">
            <%
                BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConnection());
                List<BookDtls> list2 = dao2.getAllNewBook();
                for(BookDtls book : list2) {
            %>
            <div class="col-md-3 pb-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=book.getPhotoName()%>"
                             style="width: 150px; height: 200px" class="img-thumblin">
                        <p><%=book.getBookName()%></p>
                        <p><%=book.getAuthor()%></p>
                        <p>Categories: <%=book.getBookCategory()%></p>
                        <div class="col">
                            <%
                                if(user == null) {
                            %>
                            <a href="login.jsp" class="btn btn-danger btn-sm ml-2"><i class="fa fa-cart-shopping"></i> Add Cart</a>
                            <%
                            } else {
                            %>
                            <a href="cart?bid=<%=book.getId()%>&&uid=<%=user.getId()%>" class="btn btn-danger btn-sm ml-2"><i class="fa fa-cart-shopping"></i> Add Cart</a>
                            <%
                                }
                            %>

                            <a href="view_book.jsp?bid=<%=book.getId()%>" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1"><i class="fa fa-dollar-sign"></i><%=book.getPrice()%></a>
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