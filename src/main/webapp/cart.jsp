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

    <div class="container">
        <div class="row p-2">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h3 class="text-center text-success">Your Selected Item</h3>
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">First</th>
                                <th scope="col">Last</th>
                                <th scope="col">Handle</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>Mark</td>
                                <td>Otto</td>
                                <td>@mdo</td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>Jacob</td>
                                <td>Thornton</td>
                                <td>@fat</td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td colspan="2">Larry the Bird</td>
                                <td>@twitter</td>
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
                                    <input type="text" class="form-control" id="inputName" value="">
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="inputPassword">Password</label>
                                    <input type="password" class="form-control" id="inputPassword" >
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="inputPhoneNumber">Phone Number</label>
                                    <input type="number" class="form-control" id="inputPhoneNumber" >
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="inputAddress">Address</label>
                                    <input type="text" class="form-control" id="inputAddress" >
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="inputLandmark">Landmark</label>
                                    <input type="text" class="form-control" id="inputLandmark" >
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="inputCity">City</label>
                                    <input type="text" class="form-control" id="inputCity" >
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="inputState">State</label>
                                    <input type="text" class="form-control" id="inputState" >
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="inputPinCode">Pin code</label>
                                    <input type="text" class="form-control" id="inputPinCode" >
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