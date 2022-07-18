<%@ taglib prefix="form" uri="http://ww@GetMapping("/*")
public String handle() {
    return "404";
}w.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<div class="container-fluid">

    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <a href="<c:url  value="/paint/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-60"></i><span style="font-size: 160%; ">List of Paints</span>
        </a>
        <a href="<c:url  value="/"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i><span
                style="font-size: 140%; ">Go to Dashboard</span></a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h4 class="m-0 font-weight-bold text-primary">Add new Paint</h4>
        </div>
        <div class="card-body">
            <form:form method="post" modelAttribute="paints">
                <div class="form-group">
                    <label for="name"><strong>Name:</strong></label>
                    <form:input path="name"/><br/>
                    <form:errors path="name" cssStyle="color: #e02d1b"/>
                </div>
                <div class="form-group">
                    <label for="paintsType"><strong>Paint Types:</strong></label>
                    <form:checkboxes path="paintsType" items="${paintsType}"
                                     itemLabel="type" itemValue="id"/><br/>
                    <form:errors path="paintsType" cssStyle="color: #e02d1b"/>
                </div>
                <div class="form-group">
                    <label for="destination"><strong>Destination:</strong></label>
                    <form:select path="destination" items="${destination}"
                                 itemLabel="nameOfDestination" itemValue="id"/><br/>
                </div>
                <div class="form-group">
                    <label for="quantity"><strong>Quantity:</strong></label>
                    <form:input path="quantity"/><br/>
                    <form:errors path="quantity" cssStyle="color: #e02d1b"/>
                </div>

                <div class="form-group">
                    <label for="description"><strong>Description:</strong></label>
                    <form:textarea path="description"/><br/>
                    <form:errors path="description" cssStyle="color: #e02d1b"/>
                </div>
                <div class="form-group">
                    <label for="ingredients"><strong>Ingredients:</strong></label>
                    <form:input path="ingredients"/><br/>
                    <form:errors path="ingredients" cssStyle="color: #e02d1b"/>
                </div>

                <button  class="btn btn-primary">Save</button>

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
<script src="theme/vendor/jquery/jquery.min.js"></script>
<script src="theme/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="theme/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="theme/js/sb-admin-2.min.js"></script>
<script src="theme/vendor/chart.js/Chart.min.js"></script>
<script src="theme/js/demo/chart-area-demo.js"></script>
<script src="theme/js/demo/chart-pie-demo.js"></script>
</body>
</html>




