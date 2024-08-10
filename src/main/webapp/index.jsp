<%@ page import="java.sql.Connection" %>
<%@ page import="DB.DBConnect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<%@ taglib prefix="c" uri="jakarta.tags.core" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
            background: white;
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
            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/HP1_posters.jpg"
                             style="width: 150px; height: 200px" class="img-thumblin">
                        <p>Corcerers Stone</p>
                        <p>J. K. Rowling</p>
                        <p>Categories: New</p>
                        <div class="col">
                            <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa fa-cart-shopping"></i> Add Cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/Harry_Potter_2.jpg"
                             style="width: 150px; height: 200px" class="img-thumblin">
                        <p>Chamber of Secrets</p>
                        <p>J. K. Rowling</p>
                        <p>Categories: New</p>
                        <div class="col">
                            <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa fa-cart-shopping"></i> Add Cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">289</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/Harry_Potter_3.jpg"
                             style="width: 150px; height: 200px" class="img-thumblin">
                        <p>Prisoner of Azkaban</p>
                        <p>J. K. Rowling</p>
                        <p>Categories: New</p>
                        <div class="col">
                            <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa fa-cart-shopping"></i> Add Cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">229</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/Harry_Potter_4.jpg"
                             style="width: 150px; height: 200px" class="img-thumblin">
                        <p>Goblet of Fire</p>
                        <p>J. K. Rowling</p>
                        <p>Categories: New</p>
                        <div class="col">
                            <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa fa-cart-shopping"></i> Add Cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">219</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-center mt-2">
                <a href="" class="btn btn-danger btn-sm">View All</a>
            </div>
        </div>
    </div>
    <%--        End Recent Book--%>
    <hr class="mt-4">


    <%--        New Book--%>
    <div class="container">
        <h3 class="text-center mt-4">New Book</h3>
        <div class="row">
            <div class="col-md-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/Harry_Potter_6.jpg"
                             style="width: 150px; height: 200px" class="img-thumblin">
                            <p>Order of the Phoenix</p>
                            <p>J. K. Rowling</p>
                            <p>Categories: New</p>
                            <div class="col">
                                <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                                <a href="" class="btn btn-danger btn-sm ml-1">269</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="book/Harry_Potter_7.jpg"
                                 style="width: 150px; height: 200px" class="img-thumblin">
                            <p>Half-Blood Prince</p>
                            <p>J. K. Rowling</p>
                            <p>Categories: New</p>
                            <div class="col">
                                <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                                <a href="" class="btn btn-danger btn-sm ml-1">249</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="book/Harry_Potter_8.jpg"
                                 style="width: 150px; height: 200px" class="img-thumblin">
                            <p>Deathly Hallows</p>
                            <p>J. K. Rowling</p>
                            <p>Categories: New</p>
                            <div class="col">
                                <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                                <a href="" class="btn btn-danger btn-sm ml-1">239</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="book/Flash%20ss8.jpg"
                                 style="width: 150px; height: 200px" class="img-thumblin">
                            <p>Flash Seasson 8</p>
                            <p>Greg Berlanti</p>
                            <p>Categories: New</p>
                            <div class="col">
                                <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                                <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="text-center mt-2">
                    <a href="" class="btn btn-danger btn-sm">View All</a>
                </div>
            </div>
        </div>
        <%--            End New Book--%>
    <hr class="mt-4"/>


        <%--        Old Book--%>
    <div class="container">
                <h3 class="text-center mt-4">Old Book</h3>

                <div class="row">
                    <div class="col-md-3">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <img alt="" src="book/Flash%20ss9.jpg"
                                     style="width: 150px; height: 200px" class="img-thumblin">
                                <p>Flash Seasson 9</p>
                                <p>Greg Berlanti</p>
                                <p>Categories: New</p>
                                <div class="col">
                                    <a href="" class="btn btn-danger btn-sm ml-1">View Details</a>
                                    <a href="" class="btn btn-danger btn-sm ml-1">319</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <img alt="" src="book/The%20Lord%20of%20the%20Rings%201.jpg"
                                     style="width: 150px; height: 200px" class="img-thumblin">
                                <p>The Lord of the Rings 1</p>
                                <p>Peter Jackson</p>
                                <p>Categories: New</p>
                                <div class="col">
                                    <a href="" class="btn btn-danger btn-sm ml-1">View Details</a>
                                    <a href="" class="btn btn-danger btn-sm ml-1">289</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <img alt="" src="book/The%20Lord%20of%20the%20Rings%202.jpg"
                                     style="width: 150px; height: 200px" class="img-thumblin">
                                <p>The Lord of the Rings 2</p>
                                <p>Peter Jackson</p>
                                <p>Categories: New</p>
                                <div class="col">
                                    <a href="" class="btn btn-danger btn-sm ml-1">View Details</a>
                                    <a href="" class="btn btn-danger btn-sm ml-1">269</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <img alt="" src="book/The%20Lord%20of%20the%20Rings%203.jpg"
                                     style="width: 150px; height: 200px" class="img-thumblin">
                                <p>The Lord of the Rings 3</p>
                                <p>Peter Jackson</p>
                                <p>Categories: New</p>
                                <div class="col">
                                    <a href="" class="btn btn-danger btn-sm ml-1">View Details</a>
                                    <a href="" class="btn btn-danger btn-sm ml-1">279</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="text-center mt-2">
                        <a href="" class="btn btn-danger btn-sm">View All</a>
                    </div>
                </div>
        </div>
    <%--            End Old Book--%>


    <%@include file="all_component/footer.jsp"%>
</body>
</html>