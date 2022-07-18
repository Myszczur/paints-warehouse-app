<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <a href="<c:url  value="/paint/add"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-60"></i><span style="font-size: 160%; ">Add new Paint</span>
        </a>
        <a href="<c:url  value="/pzpaint/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-60"></i><span style="font-size: 160%; ">PZ - list</span>
        </a>
        <a href="<c:url  value="/wzpaints/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-60"></i><span style="font-size: 160%; ">WZ - list</span>
        </a>
        <a href="<c:url  value="/"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i><span
                style="font-size: 140%; ">Go to Dashboard</span></a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h4 class="m-0 font-weight-bold text-primary">Paints Status</h4>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table">
                    <tr>
                        <th><h5><strong>Id</strong></h5></th>
                        <th><h5><strong>Name</strong></h5></th>
                        <th><h5><strong>Paint Type</strong></h5></th>
                        <th><h5><strong>Quantity</strong></h5></th>
                        <th><h5><strong>Ingredients</strong></h5></th>
                        <th><h5><strong>Action</strong></h5></th>
                        <th><h5><strong>PZ</strong></h5></th>
                        <th><h5><strong>WZ</strong></h5></th>
                        <th><h5><strong>Atest</strong></h5></th>
                    </tr>
                    <c:forEach items="${paints}" var="paints">
                        <tr>
                            <td><strong>${paints.id}</strong></td>
                            <td><strong>${paints.name}</strong></td>
                            <td><c:forEach items="${paints.paintsType}" var="paintsType">
                                <strong>${paintsType.type}</strong>,
                            </c:forEach>
                            </td>
                            <td><strong>${paints.quantity}L</strong></td>
                            <td><strong>${paints.ingredients}</strong></td>
                            <td>
                            <a href='<c:url value="/paint/show/${paints.id}"/>'><strong>Show</strong></a>
                            </td>
                            <td>
                                <a href='<c:url value="/paint/income?id=${paints.id}"/>'><strong>Add income</strong></a>
                            </td>
                            <td>
                                <a href='<c:url value="/paint/release?id=${paints.id}"/>'><strong>Add release</strong></a>
                            </td>
                            <td>
                                <a href='<c:url value="/upload/files/${paints.name}.pdf"/>'><strong>Atest</strong></a>

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
<script src="theme/vendor/jquery/jquery.min.js"></script>
<script src="theme/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="theme/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="theme/js/sb-admin-2.min.js"></script>
<script src="theme/vendor/chart.js/Chart.min.js"></script>
<script src="theme/js/demo/chart-area-demo.js"></script>
<script src="theme/js/demo/chart-pie-demo.js"></script>
</body>
</html>


