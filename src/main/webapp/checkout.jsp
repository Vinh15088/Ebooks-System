<%@ page import="com.DAO.CartDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.User" %>
<%@ page import="com.entity.Cart" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cart Page</title>
    <%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">

    <%@include file="all_component/navbar.jsp"%>

    <c:if test="${empty userobj}">
        <c:redirect url="login.jsp"></c:redirect>
    </c:if>


    <c:if test="${not empty succMsg}">
        <div class="alert alert-success" role="alert">
            ${succMsg}
        </div>
        <c:remove var="succMsg" scope="session"/>
    </c:if>

    <c:if test="${not empty failedMsg}">
        <div class="alert alert-danger" role="alert">
                ${failedMsg}
        </div>
        <c:remove var="failedMsg" scope="session"/>
    </c:if>

    <div class="container">
        <div class="row p-2">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h3 class="text-center text-success">Your Selected Item</h3>
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">Book Name</th>
                                <th scope="col">Author</th>
                                <th scope="col">Price</th>
                                <th scope="col">Action</th>
                            </tr>
                            </thead>
                            <tbody>

                            <%
                                User user = (User) session.getAttribute("userobj");
                                CartDAOImpl dao = new CartDAOImpl(DBConnect.getConnection());
                                List<Cart> list = dao.getBookByUser(user.getId());

                                double totalPrice = 0.00;
                                for(Cart cart : list) {
                                    totalPrice += cart.getPrice();
                            %>
                            <tr>
                                <th scope="row"><%=cart.getBookName()%></th>
                                <td><%=cart.getAuthor()%></td>
                                <td><%=cart.getPrice()%></td>
<%--                                <td><%=cart.getTotalPrice()%></td>--%>
                                <td>
                                    <a href="remove_book?bid=<%=cart.getbId()%>&&uid=<%=cart.getuId()%>" class="btn btn-sm btn-danger">Remove</a>
                                </td>
                            </tr>

                            <%
                                }
                            %>
                            <tr>
                                <td>Total Price</td>
                                <td></td>
                                <td></td>
                                <td><%=totalPrice%></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <form>
                            <h3 class="text-center text-success">Your Details for Order</h3>
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="inputName">Name</label>
                                    <input type="text" class="form-control" id="inputName" value="<%=user.getName()%>">
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="inputPassword">Email</label>
                                    <input type="email" class="form-control" id="inputPassword" value="<%=user.getEmail()%>">
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="inputPhoneNumber">Phone Number</label>
                                    <input type="number" class="form-control" id="inputPhoneNumber" value="<%=user.getPhno()%>">
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="inputAddress">Address</label>
                                    <input type="text" class="form-control" id="inputAddress" value="<%=user.getAddress()%>">
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="inputLandmark">Landmark</label>
                                    <input type="text" class="form-control" id="inputLandmark" value="<%=user.getLandmark()%>">
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="inputCity">City</label>
                                    <input type="text" class="form-control" id="inputCity" value="<%=user.getCity()%>">
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="inputState">State</label>
                                    <input type="text" class="form-control" id="inputState" value="<%=user.getState()%>">
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="inputPinCode">Pin code</label>
                                    <input type="text" class="form-control" id="inputPinCode" value="<%=user.getPincode()%>">
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Payment Mode</label>
                                <select class="form-control">
                                    <option>--Select--</option>
                                    <option>Cash on Delivery</option>
                                </select>
                            </div>

                            <div class="text-center pt-2">
                                <button class="btn btn-warning">Order Now</button>
                                <a href="index.jsp" class="btn btn-success">Continue Shopping</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</body>
</html>