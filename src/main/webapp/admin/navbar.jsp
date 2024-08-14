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

        <div class="col-md-3 text-white">
            <c:if test="${not empty userobj}">
                <a class="btn btn-success"><i class="fa fa-user"></i> ${userobj.name}</a>
                <a data-bs-toggle="modal" data-bs-target="#exampleModal"
                   class="btn btn-primary">
                    <i class="fa fa-right-to-bracket"></i> Logout</a>
            </c:if>

            <c:if test="${empty userobj}">
                <a href="../login.jsp" class="btn btn-success"><i class="fa fa-right-to-bracket"></i> Login</a>
                <a href="../register.jsp" class="btn btn-primary"><i class="fa fa-user-plus"></i> Register</a>
            </c:if>

        </div>
    </div>
</div>

<%--Logout Modal--%>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title fs-5" id="exampleModalLabel"></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <div class="modal-body text-center">
                <h4>Do you want logout</h4>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <a href="../logout" type="button" class="btn btn-primary text-white">Logout</a>
            </div>

            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>
<%--End logout--%>


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><i class="fa fa-house"></i></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="home.jsp">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>

            </ul>
        </div>

    </div>
</nav>