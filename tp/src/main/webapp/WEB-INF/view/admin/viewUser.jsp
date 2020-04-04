<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">

<title>View User</title>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!-- Main Styles -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/style.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/custom.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/custom-switch-toggle.css">
<!-- Themify Icon -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/themify-icons.css">

<!-- mCustomScrollbar -->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/adminResource/css/jquery.mCustomScrollbar.min.css">

<!-- Waves Effect -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/waves.min.css">

<!-- Sweet Alert -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/sweetalert.css">

<!-- Data Tables -->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/adminResource/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/adminResource/css/responsive.bootstrap.min.css">

</head>

<body>
	<jsp:include page="menu.jsp"></jsp:include>

	<!-- /.main-menu -->

	<jsp:include page="header.jsp"></jsp:include>
	<!-- /.fixed-navbar -->

		<div id="wrapper">
		<div class="main-content">
			<div class="row small-spacing">
				<div class="col-12">
					<div class="box-content">
						<h4 class="box-title">VIEW USER</h4>
						
						<table id="example"
							class="table table-striped table-bordered display"
							style="width: 100%">
							<thead>
								<tr>
									<th>No.</th>
									<th>User Name</th>
									<th>First Name</th>
									<th>Last Name</th>
									<th>Contact Number</th>
									<th>Action</th>
								</tr>
								
							</thead>
							<tbody>
								<!-- <tr>
									<td>Tiger Nixon</td>
									<td>System Architect</td>
									<td><a href="">Edit</a>/<a href="">Delete</a></td>
								</tr>
 -->
 
 							<c:forEach var="i" items="${userList}" varStatus="j">
								<tr>
									<td>${j.count}</td>
									<td>${i.loginVO.username}</td>
									<td>${i.firstName}</td>
									<td>${i.lastName}</td>
									<td>${i.contactNumber}</td>
									<td>
									<label class="switch">
											<input onclick="toggleUser(${i.loginVO.loginId},this.checked)"
												   type="checkbox" ${i.loginVO.enabled.trim().equals("1")?"checked":""}>
											<span class="slider round"></span>
										</label>
									</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- /.box-content -->
					<jsp:include page="footer.jsp"></jsp:include>
				</div>
				<!-- /.col-12 -->
		<!--/#wrapper -->
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="<%=request.getContextPath() %>/adminResource/js/html5shiv.min.js"></script>
		<script src="<%=request.getContextPath() %>/adminResource/js/respond.min.js"></script>
	<![endif]-->
	<!-- 
		================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<%=request.getContextPath() %>/adminResource/js/customAjaxHandler.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/modernizr.min.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/nprogress.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/sweetalert.min.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/waves.min.js"></script>
	<!-- Sparkline Chart -->
	<script src="<%=request.getContextPath() %>/adminResource/js/jquery.sparkline.min.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/chart.sparkline.init.min.js"></script>

	<!-- Data Tables -->
	<script src="<%=request.getContextPath() %>/adminResource/js/jquery.dataTables.min.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/dataTables.bootstrap4.min.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/dataTables.responsive.min.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/responsive.bootstrap.min.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/datatables.demo.min.js"></script>

	<script src="<%=request.getContextPath() %>/adminResource/js/main.min.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/mycommon.js"></script>
</body>
</html>