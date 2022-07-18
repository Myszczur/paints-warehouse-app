<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <a href="<c:url  value="/projects/add"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-60"></i><span style="font-size: 160%; ">Add Project</span>
        </a>
        <a href="<c:url  value="/projects/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-60"></i><span
                style="font-size: 160%; ">List of Projects</span>
        </a>
        <a href="<c:url  value="/"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i><span
                style="font-size: 140%; ">Go to Dashboard</span></a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h4 class="m-0 font-weight-bold text-primary"><span
                    style="font-size: 115%; ">Project details</span></h4>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table">
                    <div class="form-group">
                        <tr>
                            <td><label><h4><span style="color:darkblue; "><b>Id:</b></span></h4></label>
                                <label><h5><span style="font-size: 130%">${projects.id}</h5></label></td>
                        </tr>
                    </div>
                    <div class="form-group">
                        <tr>
                            <td><label><h4><span style="color:darkblue; "><b>Name:</b></span></h4></label>
                                <label><h5><span style="font-size: 130%">${projects.nameOfProject}</h5></label>
                            </td>
                        </tr>
                    </div>
                    <div class="form-group">
                        <tr>
                            <td><label><h4><span style="color:darkblue; "><b>Description:</b></span></h4></label>
                                <label><h5><span style="font-size: 130%">${projects.description}</span></h5></label>
                            </td>
                        </tr>
                    </div>
                    <div class="form-group">
                        <tr>
                            <td><label><h4><span style="color:darkblue; "><b>Address:</b></span></h4></label>
                                <label><h5><span style="font-size: 130%">${projects.address}</span></h5></label>
                            </td>
                        </tr>
                    </div>
                    <div class="form-group">
                        <tr>
                            <td><label><h4><span style="color:darkblue; "><b>Start Date:</b></span></h4></label>
                                <label><h5><span style="font-size: 130%">${projects.startDate}</span></h5></label>
                            </td>
                        </tr>
                    </div>
                    <div class="form-group">
                        <tr>
                            <td><label><h4><span style="color:darkblue; "><b>Ends Date:</b></span></h4></label>
                                <label><h5><span style="font-size: 130%">${projects.endsDate}</span></h5></label>
                            </td>
                        </tr>
                    </div>
                    <div class="form-group">
                        <tr>
                            <td><label><h4><span style="color:darkblue; "><b>Updated:</b></span></h4></label>
                                <label><h5><span style="font-size: 130%">${projects.updatedOn}</span></h5></label>
                            </td>
                        </tr>
                    </div>
                    <div>
                        <tr>
                            <th>
                                <a href="<c:url value="/projects/edit?id=${projects.id}"/>"
                                   class="btn btn-primary">
                                    <i class="fas fa-download fa-sm text-white-60"></i><b>Edit</b> </a>
                                </th>
                        </tr>
                    </div>
                </table>
            </div>
        </div>
    </div>
</div>
<footer class="sticky-footer bg-white">
    <div class="container my-auto">
        <div class="copyright text-center my-auto">
            <span>Copyright &copy; By Myszczur 2022</span>
        </div>
    </div>
</footer>
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>
<script src="theme/vendor/jquery/jquery.min.js"></script>
<script src="theme/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="theme/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="theme/js/sb-admin-2.min.js"></script>
<script src="theme/vendor/chart.js/Chart.min.js"></script>
<script src="theme/js/demo/chart-area-demo.js"></script>
<script src="theme/js/demo/chart-pie-demo.js"></script>
</body>
</html>


