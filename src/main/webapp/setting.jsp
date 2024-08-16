<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Setting</title>
    <%@include file="all_component/allCss.jsp"%>

    <style type="text/css">
        a {
            text-decoration: none;
            color: black;
        }
        a:hover {
            text-decoration: none;
        }
    </style>
</head>
<body style="background-color: #f7f7f7">
    <c:if test="${empty userobj}">
        <c:redirect url="login.jsp"/>
    </c:if>


    <%@include file="all_component/navbar.jsp"%>

    <div class="container">
        <h3 class="text-center mt-3">Hello, ${userobj.name}</h3>

        <div class="row p-5">
            <div class="col-md-4">
                <a  href="sell_book.jsp">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="text-primary">
                                <i class="fa fa-book-open fa-3x"></i>
                            </div>
                            <h3>Sell Old Book</h3>
                            <h3 style="visibility: hidden">Hehe</h3>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4">
                <a  href="old_book.jsp">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="text-primary">
                                <i class="fa fa-book-open fa-3x"></i>
                            </div>
                            <h3>Old Book</h3>
                            <h3 style="visibility: hidden">Hehe</h3>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4">
                <a  href="edit_profile.jsp">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="text-primary">
                                <i class="fa fa-pen-to-square fa-3x"></i>
                            </div>
                            <h3>Login & Security (Edit Profile)</h3>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 mt-3">
                <a  href="user_address.jsp">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="text-warning">
                                <i class="fa fa-location-dot fa-3x"></i>
                            </div>
                            <h3>Your Address</h3>
                            <p>Edit Address</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 mt-3">
                <a  href="order.jsp">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="text-danger">
                                <i class="fa fa-box-open fa-3x"></i>
                            </div>
                            <h3>My Order</h3>
                            <p>Track your Order</p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 mt-3">
                <a  href="help_line.jsp">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="text-primary">
                                <i class="fa fa-circle-user fa-3x"></i>
                            </div>
                            <h3>Help Center</h3>
                            <p>24/7 Service</p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <%@include file="all_component/footer.jsp"%>
</body>
</html>