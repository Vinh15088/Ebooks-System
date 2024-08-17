<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">

    <%@include file="all_component/navbar.jsp"%>

    <div class="container text-center mt-3">
        <i class="fa fa-check-circle fa-5x text-success"></i>

        <h1>Thank You</h1>
        <h2>Your Order Successfully</h2>
        <h5>With in 7 Days Your Product will be Delivered In your Address</h5>
        <a href="index.jsp" class="btn btn-primary mt-3">Home</a>
        <a href="user_address.jsp" class="btn btn-danger mt-3">View Order</a>
    </div>

</body>
</html>