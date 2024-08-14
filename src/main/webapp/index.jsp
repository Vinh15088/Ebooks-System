<%@ page import="java.sql.Connection" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.entity.BookDtls" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<%@ taglib prefix="c" uri="jakarta.tags.core" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>

<!DOCTYPE html>
<html>
<head>
    <title>Ebook: Index</title>
    <%@include file="all_component/allCss.jsp"%>
    <style type="text/css">
        .back-img {
            background: url("img/book1.png");
            height: 50vh;
            width: 100%;
            background-size: cover;
            background-repeat: no-repeat;
        }
        .crd-ho:hover {
            background-color: #fcf7f7;
        }
    </style>
</head>
<body style="background-color: #f7f7f7">
    <%@include file="all_component/navbar.jsp"%>

    <div class="container-fluid back-img">
        <h2 class="text-center text-white">Ebook Management System</h2>
    </div>

<%--    <% Connection conn = DBConnect.getConnection();--%>
<%--        out.println(conn);--%>
<%--    %>--%>

    <%--        Recent Book--%>
    <div class="container">
        <h3 class="text-center mt-4">Recent Book</h3>
        <div class="row">
            <%
                BookDAOImpl dao1 = new BookDAOImpl(DBConnect.getConnection());
                List<BookDtls> list1 = dao1.getRecentBooḳ();
                for(BookDtls book : list1) {
            %>
            <div class="col-md-3">
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
                            <a href="" class="btn btn-danger btn-sm ml-2"
                                    <%= book.getBookCategory().equals("Old") ? "hidden" : "" %> >
                                <i class="fa fa-cart-shopping"></i> Add Cart
                            </a>
                            <a href="view_book.jsp?bid=<%=book.getId()%>" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1"><i class="fa fa-dollar-sign"></i><%=book.getPrice()%></a>
                        </div>

                    </div>
                </div>
            </div>
            <%
                }
            %>
            <div class="text-center mt-2">
                <a href="all_recent_book.jsp" class="btn btn-danger btn-sm">View All</a>
            </div>
        </div>
    </div>
    <%--        End Recent Book--%>
    <hr class="mt-4">


    <%--        New Book--%>
    <div class="container">
        <h3 class="text-center mt-4">New Book</h3>
        <div class="row">
                <%
                    BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConnection());
                    List<BookDtls> list2 = dao2.getNewBooḳ();
                    for(BookDtls book : list2) {
                %>
            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=book.getPhotoName()%>"
                             style="width: 150px; height: 200px" class="img-thumblin">
                        <p><%=book.getBookName()%></p>
                        <p><%=book.getAuthor()%></p>
                        <p>Categories: <%=book.getBookCategory()%></p>
                        <div class="col">
                            <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa fa-cart-shopping"></i> Add Cart</a>
                            <a href="view_book.jsp?bid=<%=book.getId()%>" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1"><i class="fa fa-dollar-sign"></i><%=book.getPrice()%></a>
                        </div>
                    </div>
                </div>
            </div>
                <%
                    }
                %>


            <div class="text-center mt-2">
                <a href="all_new_book.jsp" class="btn btn-danger btn-sm">View All</a>
            </div>
        </div>
    </div>
        <%--            End New Book--%>
    <hr class="mt-4"/>


        <%--        Old Book--%>
    <div class="container">
        <h3 class="text-center mt-4">Old Book</h3>
        <div class="row">
            <%
                BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConnection());
                List<BookDtls> list3 = dao3.getOldBook();
                for(BookDtls book : list3) {
            %>
            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=book.getPhotoName()%>"
                             style="width: 150px; height: 200px" class="img-thumblin">
                        <p><%=book.getBookName()%></p>
                        <p><%=book.getAuthor()%></p>
                        <p>Categories: <%=book.getBookCategory()%></p>
                        <div class="col">
                            <a href="view_book.jsp?bid=<%=book.getId()%>" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1"><i class="fa fa-dollar-sign"></i><%=book.getPrice()%></a>
                        </div>
                    </div>
                </div>
            </div>
            <%
                }
            %>


            <div class="text-center mt-2">
                <a href="all_old_book.jsp" class="btn btn-danger btn-sm">View All</a>
            </div>
        </div>
    </div>
    <%--            End Old Book--%>


    <%@include file="all_component/footer.jsp"%>
</body>
</html>