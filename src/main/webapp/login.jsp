<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ebook: Login</title>
    <%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
    <%@include file="all_component/navbar.jsp"%>

    <div class="container p-2">
        <div class="row mt-2">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body ">
                        <h4 class="text-center">Login</h4>
                        <form>
                            <div class="form-group mt-2">
                                <label for="email">Email address</label>
                                <input type="email" class="form-control" id="email" aria-describedby="emailHelp" required="required">
                            </div>
                            <div class="form-group mt-2">
                                <label for="password">Password</label>
                                <input type="email" class="form-control" id="password" aria-describedby="emailHelp" required="required">
                            </div>
                            <div class="text-center mt-2">
                                <button type="submit" class="btn btn-primary">Login</button><br/>
                                <a href="register.jsp">Create Account</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@include file="all_component/footer.jsp"%>
</body>
</html>