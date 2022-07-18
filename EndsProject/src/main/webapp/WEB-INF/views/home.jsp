<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>AppPaintWarehouse - Dashboard</title>


    <link href="theme/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">


    <link href="<c:url value="/theme/css/sb-admin-2.css"/>" rel="stylesheet">


</head>

<body id="page-top">

<!-- Page Wrapper -->
<%@ include file="/slidebar.jsp" %>

<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

    <!-- Main Content -->
    <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

            <!-- Sidebar Toggle (Topbar) -->
            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                <i class="fa fa-bars"></i>
            </button>
            <!-- Topbar Search -->
            <div class="input-group">
                <span style="font-size: 120%; color: #1c294e "> <strong>Chuck Norris:&nbsp;&nbsp;</strong> </span>  <span style="font-size: 120%; color: #e02d1b ">${joke}</span>
            </div>


            <!-- Topbar Navbar -->
            <ul class="navbar-nav ml-auto">

                <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                <li class="nav-item dropdown no-arrow d-sm-none">
                    <a class="nav-link dropdown-toggle" href="paint/list" id="searchDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-search fa-fw"></i>
                    </a>
                    <!-- Dropdown - Messages -->
                    <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                         aria-labelledby="searchDropdown">
                        <form class="form-inline mr-auto w-100 navbar-search">
                            <div class="input-group">
                                <input type="text" class="form-control bg-light border-0 small"
                                       placeholder="Search for..." aria-label="Search"
                                       aria-describedby="basic-addon2">
                                <div class="input-group-append">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fas fa-search fa-sm"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </li>

                <!-- Nav Item - User Information -->
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie Luna</span>
                        <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
                    </a>
                    <!-- Dropdown - User Information -->
                    <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                         aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">
                            <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                            Profile
                        </a>
                        <a class="dropdown-item" href="#">
                            <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                            Settings
                        </a>
                        <a class="dropdown-item" href="#">
                            <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                            Activity Log
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                            <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                            Logout
                        </a>
                    </div>
                </li>

            </ul>

        </nav>


        <div class="container-fluid">


            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                <h1 class="h3 mb-0 text-gray-800">Paints Management System Dashboard</h1>
                <a href="/wzpaints/pdfreport" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                        class="fas fa-download fa-sm text-white-50"></i> Generate WZ Report</a>
            </div>

            <!-- Content Row -->
            <div class="row">

                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-primary shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Last 7
                                        released
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">-${wzpaints1}L</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-success shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Last 7
                                        incomes
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">+${pzpaints1}L</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-info shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Weather</div>
                                    <div class="row no-gutters align-items-center">
                                        <div class="col">
                                            <span style="color: #1c294e "> Temperature:</span><span
                                                style="color: #e02d1b "> ${weather.temperature}</span>,
                                            <span style="color: #1c294e "> Pressure:</span><span
                                                style="color: #e02d1b ">${weather.pressure}</span>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Pending Requests Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-warning shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Atmosphere
                                    </div>
                                    <span style="color: #1c294e "> Humidity:</span><span
                                        style="color: #e02d1b "> ${weather.humidity}</span>,
                                    <span style="color: #1c294e "> Wind Speed:</span><span
                                        style="color: #e02d1b ">${weather.windSpeed}</span>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-comments fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Content Row -->

            <div class="row">

                <!-- Area Chart -->
                <div class="col-xl-8 col-lg-7">
                    <div class="card shadow mb-4">
                        <!-- Card Header - Dropdown -->
                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <h6 class="m-0 font-weight-bold text-primary">Availability</h6>
                        </div>
                        <!-- Card Body -->
                        <div class="card-body">
                            <div class="chart-area">

                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <th><h6><strong>Id</strong></h6></th>
                                            <th><h6><strong>Name</strong></h6></th>
                                            <th><h6><strong>Paint Type</strong></h6></th>
                                            <th><h6><strong>Quantity</strong></h6></th>
                                            <th><h6><strong>Ingredients</strong></h6></th>
                                        </tr>
                                        <c:forEach items="${paints}" var="paints">
                                            <tr>
                                                <td><strong><span style="color: #1c294e ">${paints.id}</span></strong>
                                                </td>
                                                <td><strong><span style="color: #6f42c1 ">${paints.name}</span></strong>
                                                </td>
                                                <td><c:forEach items="${paints.paintsType}" var="paintsType">
                                                    <strong><span
                                                            style="color: #1c294e ">${paintsType.type}</span></strong>,
                                                </c:forEach>
                                                </td>
                                                <td><strong><span
                                                        style="color: #e02d1b ">${paints.quantity}L</span></strong>
                                                </td>
                                                <td><strong><span
                                                        style="color: #1c294e ">${paints.ingredients}</span></strong>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Pie Chart -->
                <div class="col-xl-4 col-lg-5">
                    <div class="card shadow mb-4">
                        <!-- Card Header - Dropdown -->
                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <h6 class="m-0 font-weight-bold text-primary">Available Projects</h6>
                            <div class="dropdown no-arrow">
                                <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                   data-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                     aria-labelledby="dropdownMenuLink">
                                </div>

                            </div>
                        </div>
                        <!-- Card Body -->
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <tr>
                                        <th><h6><strong>Id</strong></h6></th>
                                        <th><h6><strong>Name</strong></h6></th>
                                        <th><h6><strong>Address</strong></h6></th>
                                        <th><h6><strong>Ends Date</strong></h6></th>
                                    </tr>
                                    <c:forEach items="${projects}" var="projects">
                                        <tr>
                                            <td><strong><span style="color: #1c294e ">${projects.id}</span></strong>
                                            </td>
                                            <td><strong><span
                                                    style="color: #6f42c1 ">${projects.nameOfProject}</span></strong>
                                            </td>
                                            <td><strong><span
                                                    style="color: #1c294e ">${projects.address}</span></strong></td>
                                            <td><strong><span
                                                    style="color: #e02d1b ">${projects.endsDate}</span></strong></td>
                                        </tr>
                                    </c:forEach>
                                </table>
                            </div>
                            <div class="mt-4 text-center small">
                    <span class="mr-2">
                      <i class="fas fa-circle text-primary"></i>
                    </span>
                                <span class="mr-2">
                      <i class="fas fa-circle text-success"></i>
                    </span>
                                <span class="mr-2">
                      <i class="fas fa-circle text-info"></i>
                    </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Content Row -->
            <div class="row">

                <!-- Content Column -->
                <div class="col-xl-8 col-lg-7">
                    <div class="card shadow mb-4">
                        <!-- Card Header - Dropdown -->
                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <h6 class="m-0 font-weight-bold text-primary">Last WZ Paint</h6>
                            <%--                    <div class="dropdown no-arrow">--%>
                            <%--                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
                            <%--                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>--%>
                            <%--                        </a>--%>
                            <%--                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">--%>
                            <%--                            <div class="dropdown-header">Dropdown Header:</div>--%>
                            <%--                            <a class="dropdown-item" href="#">Action</a>--%>
                            <%--                            <a class="dropdown-item" href="#">Another action</a>--%>
                            <%--                            <div class="dropdown-divider"></div>--%>
                            <%--                            <a class="dropdown-item" href="#">Something else here</a>--%>
                            <%--                        </div>--%>
                            <%--                    </div>--%>
                        </div>
                        <!-- Card Body -->
                        <div class="card-body">
                            <div class="chart-area">

                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <th><h6><strong>Id</strong></h6></th>
                                            <th><h6><strong>Name</strong></h6></th>
                                            <th><h6><strong>Paint Type</strong></h6></th>
                                            <th><h6><strong>Quantity</strong></h6></th>
                                            <th><h6><strong>Released</strong></h6></th>
                                            <th><h6><strong>Ingredients</strong></h6></th>
                                        </tr>
                                        <c:forEach items="${wzpaints}" var="wzpaints">
                                            <tr>
                                                <td><strong><span style="color: #1c294e ">${wzpaints.id}</span></strong>
                                                </td>
                                                <td><strong><span
                                                        style="color: #6f42c1 ">${wzpaints.name}</span></strong></td>
                                                <td><strong><span
                                                        style="color: #6f42c1 ">${wzpaints.paintsType.type}</span></strong>
                                                </td>
                                                </td>
                                                <td><strong><span style="color: #6f42c1 ">-${wzpaints.quantity}L</span></strong>
                                                </td>
                                                <td><strong><span
                                                        style="color: #1c294e ">${wzpaints.releaseOn}</span></strong>
                                                </td>
                                                <td><strong><span
                                                        style="color: #6f42c1 ">${wzpaints.ingredients}</span></strong>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </table>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-5">
                    <div class="card shadow mb-4">
                        <!-- Card Header - Dropdown -->
                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <h6 class="m-0 font-weight-bold text-primary">Available Paints Types</h6>
                            <%--                    <div class="dropdown no-arrow">--%>
                            <%--                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown"--%>
                            <%--                           aria-haspopup="true" aria-expanded="false">--%>
                            <%--                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>--%>
                            <%--                        </a>--%>

                            <%--                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"--%>
                            <%--                             aria-labelledby="dropdownMenuLink">--%>
                            <%--                        </div>--%>

                            <%--                    </div>--%>
                        </div>
                        <!-- Card Body -->
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <tr>
                                        <th><h6><strong>Id</strong></h6></th>
                                        <th><h6><strong>Paint Type</strong></h6></th>
                                        <th><h6><strong>Added</strong></h6></th>
                                    </tr>
                                    <c:forEach items="${paintsTypes}" var="paintsTypes">
                                        <tr>
                                            <td><strong><span style="color: #1c294e ">${paintsTypes.id}</span></strong>
                                            </td>
                                            <td><strong><span
                                                    style="color: #6f42c1 ">${paintsTypes.type}</span></strong></td>
                                            <td><strong><span
                                                    style="color: #6f42c1 ">${paintsTypes.addedOn}</span></strong></td>
                                        </tr>
                                    </c:forEach>
                                </table>
                            </div>
                            <div class="mt-4 text-center small">
                    <span class="mr-2">
                      <i class="fas fa-circle text-primary"></i>
                    </span>
                                <span class="mr-2">
                      <i class="fas fa-circle text-success"></i>
                    </span>
                                <span class="mr-2">
                      <i class="fas fa-circle text-info"></i>
                    </span>
                            </div>
                        </div>
                    </div>
                </div>
                <%--    </div>--%>
                <div class="row">

                    <!-- Content Column -->
                    <div class="col-xl-8 col-lg-7">
                        <div class="card shadow mb-4">
                            <!-- Card Header - Dropdown -->
                            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                <h6 class="m-0 font-weight-bold text-primary">Last PZ Paint</h6>
                            </div>
                            <!-- Card Body -->
                            <div class="card-body">
                                <div class="chart-area">

                                    <div class="table-responsive">
                                        <table class="table">
                                            <tr>
                                                <th><h6><strong>Id</strong></h6></th>
                                                <th><h6><strong>Name</strong></h6></th>
                                                <th><h6><strong>Paint Type</strong></h6></th>
                                                <th><h6><strong>Quantity</strong></h6></th>
                                                <th><h6><strong>Income</strong></h6></th>
                                                <th><h6><strong>Ingredients</strong></h6></th>
                                            </tr>
                                            <c:forEach items="${pzpaints}" var="pzpaints">
                                                <tr>
                                                    <td><strong><span
                                                            style="color: #1c294e ">${pzpaints.id}</span></strong>
                                                    </td>
                                                    <td><strong><span
                                                            style="color: #6f42c1 ">${pzpaints.name}</span></strong>
                                                    </td>
                                                    <td><c:forEach items="${pzpaints.paintsType}" var="paintsType">
                                                        <strong><span style="color: #1c294e ">${paintsType.type}</span></strong>,
                                                    </c:forEach>
                                                    </td>
                                                    <td><strong><span
                                                            style="color: #6f42c1 ">+${pzpaints.quantity}L</span></strong>
                                                    </td>
                                                    <td><strong><span
                                                            style="color: #1c294e ">${pzpaints.incomeOn}</span></strong>
                                                    </td>
                                                    <td><strong><span
                                                            style="color: #6f42c1 ">${pzpaints.ingredients}</span></strong>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </table>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-5">
                        <div class="card shadow mb-4">
                            <!-- Card Header - Dropdown -->
                            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                <h6 class="m-0 font-weight-bold text-primary">Available Destinations</h6>
                                <%--                        <div class="dropdown no-arrow">--%>
                                <%--                            <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown"--%>
                                <%--                               aria-haspopup="true" aria-expanded="false">--%>
                                <%--                                <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>--%>
                                <%--                            </a>--%>

                                <%--                            <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"--%>
                                <%--                                 aria-labelledby="dropdownMenuLink">--%>
                                <%--                            </div>--%>

                                <%--                        </div>--%>
                            </div>
                            <!-- Card Body -->
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <th><h6><strong>Id</strong></h6></th>
                                            <th><h6><strong>Name</strong></h6></th>
                                            <th><h6><strong>Updated</strong></h6></th>
                                        </tr>
                                        <c:forEach items="${destinations}" var="destinations">
                                            <tr>
                                                <td><strong><span
                                                        style="color: #1c294e ">${destinations.id}</span></strong></td>
                                                <td><strong><span
                                                        style="color: #6f42c1 ">${destinations.nameOfDestination}</span></strong>
                                                </td>
                                                <td><strong><span
                                                        style="color: #1c294e ">${destinations.updatedOn}</span></strong>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </table>
                                </div>
                                <div class="mt-4 text-center small">
                    <span class="mr-2">
                      <i class="fas fa-circle text-primary"></i>
                    </span>
                                    <span class="mr-2">
                      <i class="fas fa-circle text-success"></i>
                    </span>
                                    <span class="mr-2">
                      <i class="fas fa-circle text-info"></i>
                    </span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 mb-4">

                        <!-- Illustrations -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Last PZ Pddaints</h6>
                            </div>
                            <div class="card-body">
                                <div class="text-center">
                                    <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;"
                                         src="theme/img/undraw_posting_photo.svg" alt="">
                                </div>
                                <p>Add some quality, svg illustrations to your project courtesy of <a target="_blank"
                                                                                                      rel="nofollow"
                                                                                                      href="https://undraw.co/">unDraw</a>,
                                    a constantly updated collection of beautiful svg images that you can use completely
                                    free and
                                    without
                                    attribution!</p>
                                <a target="_blank" rel="nofollow" href="https://undraw.co/">Browse Illustrations on
                                    unDraw
                                    &rarr;</a>
                            </div>
                        </div>

                        <!-- Approach -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Development Approach</h6>
                            </div>
                            <div class="card-body">
                                <p>SB Admin 2 makes extensive use of Bootstrap 4 utility classes in order to reduce CSS
                                    bloat
                                    and
                                    poor
                                    page performance. Custom CSS classes are used to create custom components and custom
                                    utility
                                    classes.</p>
                                <p class="mb-0">Before working with this theme, you should become familiar with the
                                    Bootstrap
                                    framework,
                                    especially the utility classes.</p>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright &copy; Myszczur 2019</span>
                </div>
            </div>
        </footer>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="theme/login.html">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="theme/vendor/jquery/jquery.min.js"></script>
<script src="theme/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="theme/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="theme/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="theme/vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="theme/js/demo/chart-area-demo.js"></script>
<script src="theme/js/demo/chart-pie-demo.js"></script>

</body>

</html>

