<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="container-fluid"
     style="height: 10px"; background-color: #303f9f></div>

<div class="container-fluid p-3 bg-light">
    <div class="row">
        <div class="col-md-3 text-success">
            <h3><i class="fa fa-book"></i> Ebooks</h3>
        </div>

        <div class="col-md-6">
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-primary" type="submit">Search</button>
            </form>
        </div>

        <c:if test="${not empty userobj}">
            <div class="col-md-3 text-white">
                <a href="checkout.jsp"><i class="fa fa-cart-plus fa-2x"></i></a>
                <a href="login.jsp" class="btn btn-success"><i class="fa fa-user-plus"></i> ${userobj.name}</a>
                <a href="logout" class="btn btn-primary"><i class="fa fa-right-to-bracket"></i> Logout</a>
            </div>
        </c:if>

        <c:if test="${empty userobj}">
            <div class="col-md-3 text-white">
                <a href="login.jsp" class="btn btn-success"><i class="fa fa-right-to-bracket"></i> Login</a>
                <a href="register.jsp" class="btn btn-primary"><i class="fa fa-user-plus"></i> Register</a>
            </div>
        </c:if>

    </div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><i class="fa fa-house"></i></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.jsp">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="all_recent_book.jsp"><i class="fa fa-book"></i> Recent Book</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="all_new_book.jsp"><i class="fa fa-book"></i> New Book</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="all_old_book.jsp"><i class="fa fa-book"></i> Old Book</a>
                </li>
            </ul>
        </div>

        <form class="form-inline my-2 my-lg-0 ml-4">
            <a href="setting.jsp" class="btn btn-light my-2 my-sm-0" type="submit"><i class="fa fa-gear"></i> Setting</a>
            <button class="btn btn-light my-2 my-sm-0" type="submit"><i class="fa fa-phone"></i> Contact Us</button>
        </form>
    </div>
</nav>