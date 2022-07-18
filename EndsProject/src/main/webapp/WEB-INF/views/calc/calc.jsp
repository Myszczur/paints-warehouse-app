<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
            <form:form method="get" modelAttribute="calc">
                <div class="form-group">
                    <label for="a"><strong>Set A:</strong></label>
                    <form:input path="a"/><br/>
                    <form:errors path="a" cssStyle="color: #e02d1b"/>
                </div>
                <div class="form-group">
                    <label for="r"><strong>Set R:</strong></label>
                    <form:input path="r"/><br/>
                    <form:errors path="r" cssStyle="color: #e02d1b"/>
                </div>

                <div class="form-group">
                    <label for="h"><strong>Set H:</strong></label>
                    <form:input path="h"/><br/>
                    <form:errors path="h" cssStyle="color: #e02d1b"/>
                </div>
                <button  class="btn btn-primary">Calculate</button>
            </form:form>
        </div>
        <div class="form-group">
            <span style="font-size: 140%; color: #e02d1b "> <strong>${result}</strong></span>
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




