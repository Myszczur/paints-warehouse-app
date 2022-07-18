<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">

    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h4 class="m-0 font-weight-bold text-primary"><span style="font-size: 110%; color: firebrick ">Are you sure you want to delete the destiny of the paints ID: ${paints.id}?</span>
            </h4>
        </div>
        <div class="card-body">
                <input type="hidden" name="id" value="${paints.id}"/>
                  <a href="<c:url  value="/paint/del?id=${paints.id}"/>" class="btn btn-warning">
                      <i class="fas fa-download fa-sm text-white-60"></i><b>Yes</b> </a>
                <a href="<c:url  value="/paint/list"/>" class="btn btn-success">
                    <i class="fas fa-download fa-sm text-white-60"></i><b>Cancel</b> </a>
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
<script src="theme/vendor/jquery/jquery.min.js"></script>
<script src="theme/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="theme/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="theme/js/sb-admin-2.min.js"></script>
<script src="theme/vendor/chart.js/Chart.min.js"></script>
<script src="theme/js/demo/chart-area-demo.js"></script>
<script src="theme/js/demo/chart-pie-demo.js"></script>
</body>
</html>