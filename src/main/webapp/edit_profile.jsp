<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Edit Profile</title>
    <%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
    <%@include file="all_component/navbar.jsp"%>

    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4 mt-3">
                <div class="card">
                    <div class="card-body">
                        <h3 class="text-center text-primary p-1">Edit Profile</h3>

                        <form action="register" >
                            <div class="form-group mt-2">
                                <label for="fullName">Name*</label>
                                <input type="text" class="form-control" id="fullName" aria-describedby="emailHelp" required="required" name="fname">
                            </div>
                            <div class="form-group mt-2">
                                <label for="email">Email address*</label>
                                <input type="email" class="form-control" id="email" aria-describedby="emailHelp" required="required" name="email">
                            </div>
                            <div class="form-group mt-2">
                                <label for="phoneNumber">Phone*</label>
                                <input type="text" class="form-control" id="phoneNumber" aria-describedby="emailHelp" required="required" name="phno">
                            </div>
                            <div class="form-group mt-2">
                                <label for="exampleInputPassword1">Password*</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required="required" name="password">
                            </div>
                            <button type="submit" class="btn btn-primary mt-2">Update</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>