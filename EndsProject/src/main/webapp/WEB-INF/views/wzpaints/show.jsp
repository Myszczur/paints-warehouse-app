<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<div class="container-fluid">
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <a href="<c:url  value="/wzpaint/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
      <i class="fas fa-download fa-sm text-white-60"></i><span style="font-size: 160%; ">Wz - List</span>
    </a>
    <a href="<c:url  value="/"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
      <i class="fas fa-download fa-sm text-white-50"></i><span
            style="font-size: 140%; ">Go to Dashboard</span></a>
  </div>
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h4 class="m-0 font-weight-bold text-primary"><span
              style="font-size: 115%; ">WZ - details</span></h4>
    </div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table">
          <div class="form-group">
            <tr>
              <td><label><h4><span style="color:darkblue; "><b>Id:</b></span></h4></label>
                <label><h5><span style="font-size: 130%">${wzpaint.id}</span></h5></label></td>
            </tr>
          </div>
          <div class="form-group">
            <tr>
              <td><label><h4><span style="color:darkblue; "><b>Name:</b></span></h4></label>
                <label><h5><span style="font-size: 130%">${wzpaint.name}</span></h5></label></td>
            </tr>
          </div>
          <div class="form-group">
            <tr>
              <td><label><h4><span style="color:darkblue; "><b>Name:</b></span></h4></label>
                <label><h5><span style="font-size: 130%">${wzpaint.paintsType.type}</span></h5></label></td>
            </tr>
          </div>
          <div class="form-group">
            <tr>
              <td><label><h4><span style="color:darkblue; "><b>Ingredients:</b></span></h4></label>
                <label><h5><span style="font-size: 130%">${wzpaint.ingredients}</span></h5></label></td>
            </tr>
          </div>
          <div class="form-group">
            <tr>
              <td><label><h4><span style="color:darkblue; "><b>Destination:</b></span></h4></label>
                <h5><span style="font-size: 130%">${wzpaint.destination.nameOfDestination}</span>
                </h5></td>
            </tr>
          </div>
          <div class="form-group">
            <tr>
              <td><label><h4><span style="color:darkblue; "><b>Quantity:</b></span></h4></label>
                <label><h5><span style="font-size: 130%">${wzpaint.quantity}L</span></h5></label></td>
            </tr>
          </div>
          <div class="form-group">
            <tr>
              <td><label><h4><span style="color:darkblue; "><b>Project:</b></span></h4></label>
                <label><h5><span style="font-size: 130%">${wzpaint.projects.nameOfProject}</span></h5></label></td>
            </tr>
          </div>
          <div class="form-group">
            <tr>
              <td><label><h4><span style="color:darkblue; "><b>Description:</b></span></h4></label>
                <label><h5><span style="font-size: 130%">${wzpaint.description}</span></h5></label>
              </td>
            </tr>
          </div>
          <div class="form-group">
            <tr>
              <td><label><h4><span style="color:darkblue; "><b>Released:</b></span></h4></label>
                <label><h5><span style="font-size: 130%">${wzpaint.releaseOn}</span></h5></label>
              </td>
            </tr>
          </div>


          <div>
            <tr>
              <th>
                <a href="<c:url value="/wzpaints/del/${wzpaint.id}"/>"
                   class="btn btn-warning">
                  <i class="fas fa-download fa-sm text-white-60"></i><span style="color: #e02d1b"><b>Delete</b> </span>
                </a>
                <a href="<c:url value="/pzpaint/list"/>"
                   class="btn btn-success">
                  <i class="fas fa-download fa-sm text-white-60"></i><span style="color: #e02d1b"><b>Cancel</b> </span>
                </a></th>
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


