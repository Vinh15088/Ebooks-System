<%@ page import="com.entity.User" %>
<%@ page import="com.DAO.BookOrderDDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.Book_Order" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Order Book</title>
    <%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">

    <c:if test="${empty userobj}">
        <c:redirect url="login.jsp"></c:redirect>
    </c:if>

    <%@include file="all_component/navbar.jsp"%>

    <div class="container">
        <h3 class="text-center text-primary mt-3 p-1">Your Order</h3>
        <table class="table table-striped mt-3">
            <thead class="bg-primary text-white">
            <tr>
                <th scope="col">Order Id</th>
                <th scope="col">Name</th>
                <th scope="col">Book Name</th>
                <th scope="col">Author</th>
                <th scope="col">Price</th>
                <th scope="col">Payment Type</th>
            </tr>
            </thead>
            <tbody>

            <%
                User user = (User) session.getAttribute("userobj");
                BookOrderDDAOImpl dao = new BookOrderDDAOImpl(DBConnect.getConnection());
                List<Book_Order> list = dao.getBookOrder(user.getEmail());
                for (Book_Order book : list) {
            %>
            <tr>
                <th scope="row"><%=book.getId()%></th>
                <td><%=book.getUserName()%></td>
                <td><%=book.getBookName()%></td>
                <td><%=book.getAuthor()%></td>
                <td><%=book.getPrice()%></td>
                <td><%=book.getPaymentType()%></td>
            </tr>

            <%
                }
            %>

            </tbody>
        </table>
    </div>

</body>
</html>
