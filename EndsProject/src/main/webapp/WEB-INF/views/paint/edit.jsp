<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<div class="container-fluid">

    <div class="container-fluid">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <a href="<c:url  value="/paint/add"/>"
               class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                <i class="fas fa-download fa-sm text-white-60"></i><span
                    style="font-size: 160%; ">Add new Paint</span>
            </a>
            <a href="<c:url  value="/paint/list"/>"
               class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                <i class="fas fa-download fa-sm text-white-60"></i><span
                    style="font-size: 160%; ">List of Paints</span>
            </a>
            <a href="<c:url  value="/"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                <i class="fas fa-download fa-sm text-white-50"></i><span
                    style="font-size: 140%; ">Go to Dashboard</span></a>
        </div>
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h4 class="m-0 font-weight-bold text-primary"><span
                        style="font-size: 115%; ">Paint details</span></h4>
                <div class="card-body">
                    <form:form method="post" modelAttribute="paints">
                    <form:hidden path="id"/><br/>
                    <div class="form-group">
                        <label for="name"><span
                                style="font-size: 110%; color: darkslateblue "><b>Name:</b></span></label>
                        <form:input path="name"/><br/>
                        <form:errors path="name" cssStyle="color: #e02d1b"/>
                    </div>
                    <div class="form-group">
                        <label for="quantity"><span
                                style="font-size: 110%; color: darkslateblue "><b>Paint Types:</b></span></label>
                        <form:checkboxes path="paintsType" items="${paintsType}"
                                         itemLabel="type" itemValue="id"/><br/>
                        <form:errors path="paintsType" cssStyle="color: #e02d1b"/>
                    </div>
                    <label for="quantity"><span
                            style="font-size: 110%; color: darkslateblue "><b>Destination:</b></span></label>
                    <form:select path="destination" items="${destination}"
                                 itemLabel="nameOfDestination" itemValue="id"/><br/>
                </div>
                <div class="form-group">
                    <label for="name"><span
                        style="font-size: 110%; color: darkslateblue "><b>Quantity:</b></span></label>
                    <form:input path="quantity"/><br/>
                    <form:errors path="quantity" cssStyle="color: #e02d1b"/>
                </div>
                <div class="form-group">
                    <label for="description"><span
                            style="font-size: 110%; color: darkslateblue "><b>Description:</b></span></label>
                    <form:textarea path="description"/><br/>
                    <form:errors path="description" cssStyle="color: #e02d1b"/>
                </div>
                <div class="form-group">
                    <label for="ingredients"><span
                            style="font-size: 110%; color: darkslateblue "><b>Ingredients:</b></span></label>
                    <form:input path="ingredients"/><br/>
                    <form:errors path="ingredients" cssStyle="color: #e02d1b"/>
                </div>

                <button type="submit" class="btn btn-primary"><span style="font-size: 110%; "><b>Save</b></span>
                </button>
                <a href="<c:url  value="/paint/list"/>" class="btn btn-primary">
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