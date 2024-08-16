<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.User" %>
<%@ page import="com.entity.BookDtls" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Old Book</title>
    <%@include file="all_component/allCss.jsp"%>
</head>
<body>
    <%@include file="all_component/navbar.jsp"%>

    <c:if test="${not empty succMsg}">
        <div class="text-center text-success mt-3">${succMsg}</div>
        <c:remove var="succMsg" scope="session"/>
    </c:if>

    <c:if test="${not empty failed}">
        <p class="text-center text-danger">${failed}</p>
        <c:remove var="failed" scope="session"/>
    </c:if>

    <div class="container p-5">
        <table class="table">
            <thead class="bg-primary text-white">
                <tr>
                    <th scope="col">Book Name</th>
                    <th scope="col">Author</th>
                    <th scope="col">Price</th>
                    <th scope="col">Category</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>

            <%
                User user = (User) session.getAttribute("userobj");
                String email = user.getEmail();
                BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
                List<BookDtls> list = dao.getBookByOld(email, "Old");
                for (BookDtls book : list) {
            %>
                <tr>
                    <td><%=book.getBookName()%></td>
                    <td><%=book.getAuthor()%></td>
                    <td><%=book.getPrice()%></td>
                    <td><%=book.getBookCategory()%></td>
                    <td><a href="delete_old_book?em=<%=email%>&&id=<%=book.getId()%>" class="btn btn-sm btn-danger">Delete</a> </td>
                </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </div>

</body>
</html>