<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sell Book</title>
    <%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
    <%@include file="all_component/navbar.jsp"%>

    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4 mt-3">
                <div class="card">
                    <div class="card-body">
                        <h3 class="text-center text-primary p-1">Sell Old Book</h3>

                        <form action="" enctype="multipart/form-data">

                            <div class="form-group py-2">
                                <label for="exampleInputEmail1">Book Name*</label>
                                <input name="bname" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>

                            <div class="form-group py-2">
                                <label for="exampleInputEmail1">Author Name*</label>
                                <input name="author" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>

                            <div class="form-group py-2">
                                <label for="exampleInputPassword1">Price*</label>
                                <input name="price" type="number" class="form-control" id="exampleInputPassword1" aria-describedby="emailHelp">
                            </div>


                            <div class="form-group py-2">
                                <label for="exampleFormControlFile1">Upload Photo</label>
                                <input name="bimg" type="file" class="form-control-file" id="exampleFormControlFile1" aria-describedby="emailHelp">
                            </div>

                            <button type="submit" class="btn btn-primary my-2">Sell</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>