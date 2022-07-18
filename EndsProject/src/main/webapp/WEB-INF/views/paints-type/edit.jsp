<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<div class="container-fluid">

    <div class="container-fluid">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <a href="<c:url  value="/paints-type/add"/>"
               class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                <i class="fas fa-download fa-sm text-white-60"></i><span
                    style="font-size: 160%; ">Add Paint Type</span>
            </a>
            <a href="<c:url  value="/paints-type/list"/>"
               class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                <i class="fas fa-download fa-sm text-white-60"></i><span
                    style="font-size: 160%; ">List of Paints Types</span>
            </a>
            <a href="<c:url  value="/"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                <i class="fas fa-download fa-sm text-white-50"></i><span
                    style="font-size: 140%; ">Go to Dashboard</span></a>
        </div>
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h4 class="m-0 font-weight-bold text-primary"><span
                        style="font-size: 115%; ">Paint Type details</span></h4>
                <div class="card-body">
                    <form:form method="post" modelAttribute="paintsType">
                        <form:hidden path="id"/><br/>
                        <div class="form-group">
                            <label for="type"><span style="font-size: 110%; color: darkslateblue "><b>Paint Type:</b></span></label>
                            <form:input path="type"/><br/>
                            <form:errors path="type" cssStyle="color: #e02d1b"/>
                        </div>
                        <div class="form-group">
                            <label for="description"><span
                                    style="font-size: 110%;color: darkslateblue "><b>Description:</b></span></label>
                            <form:textarea path="description"/><br/>
                            <form:errors path="description" cssStyle="color: #e02d1b"/>
                        </div>
                        <button type="submit" class="btn btn-primary"><span style="font-size: 110%; "><b>Save</b></span>
                        </button>
                        <a href="<c:url  value="/paints-type/list"/>" class="btn btn-primary">
                            <i class="fas fa-download fa-sm text-white-60"></i><b>Cancel</b> </a>
                    </form:form>
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

        <script src="theme/vendor/jquery/jquery.min.js"></script>
        <script src="theme/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="theme/vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="theme/js/sb-admin-2.min.js"></script>
        <script src="theme/vendor/chart.js/Chart.min.js"></script>
        <script src="theme/js/demo/chart-area-demo.js"></script>
        <script src="theme/js/demo/chart-pie-demo.js"></script>
    </div>
</div>