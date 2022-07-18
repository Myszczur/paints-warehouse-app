<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <a href="<c:url  value="/paint/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-60"></i><span style="font-size: 160%; ">Paint list</span>
        </a>
        <a href="<c:url  value="/"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i><span
                style="font-size: 140%; ">Go to Dashboard</span></a>

    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h4 class="m-0 font-weight-bold text-primary">PZ -  paints list</h4>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table">
                    <tr>
                        <th><h4><strong>Id</strong></h4></th>
                        <th><h4><strong>Name</strong></h4></th>
                        <th><h4><strong>Type</strong></h4></th>
                        <th><h4><strong>Quantity</strong></h4></th>
                        <th><h4><strong>Delivery</strong></h4></th>
                        <th><h4><strong>Action</strong></h4></th>
                    </tr>
                    <c:forEach items="${pzpaint}" var="pzpaint">
                        <tr>
                            <td><strong>${pzpaint.id}</strong></td>
                            <td><strong>${pzpaint.name}</strong></td>
                            <td><c:forEach items="${pzpaint.paintsType}" var="paintsType">
                                <strong>${paintsType.type}</strong>,
                                </c:forEach>
                            <td><strong>+${pzpaint.quantity}L</strong></td>
                            <td><strong>${pzpaint.incomeOn}</strong></td>
                            <td>
                                <a href='<c:url value="/pzpaint/show/${pzpaint.id}"/>'><strong>Show</strong></a>
                            </td>
                        </tr>
                    </c:forEach>
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
</body>
</html>


