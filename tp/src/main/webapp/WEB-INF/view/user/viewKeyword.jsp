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

<title>View Keyword</title>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!-- Main Styles -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/style.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/custom.css">

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
						<h4 class="box-title">Default</h4>
						<!-- /.box-title -->
						<div class="dropdown js__drop_down">
							<a href="#"
								class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
							<ul class="sub-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else there</a></li>
								<li class="split"></li>
								<li><a href="#">Separated link</a></li>
							</ul>
							<!-- /.sub-menu -->
						</div>
						<!-- /.dropdown js__dropdown -->
						<table id="example"
							class="table table-striped table-bordered display"
							style="width: 100%">
							<thead>
								<tr>
									<th>No.</th>
									<th>Keyword Name</th>
									<th>Year</th>
									<th>Frequency</th>
									<th>Patent Number</th>
									<th>Domain Name</th>
								</tr>
								
							</thead>
							<tbody>
								
 							<c:forEach var="i" items="${keywordList}" varStatus="j">
								<tr>
									<td>${j.count}</td>
									<td>${i.keyword}</td>
									<td>${i.year}</td>
									<td>${i.frequency}</td>
									<td>${i.patent}</td>
									<td>${i.domainVO.domainName}</td>
									<%-- <td><a href="editKeyword.html?id=${i.id}"><i class="menu-icon fa fa-edit" aria-hidden="true"></i></a><c:out value=" "></c:out>&nbsp&nbsp&nbsp&nbsp<a href="deleteKeyword.html?id=${i.id}"><i class="menu-icon fa fa-trash-alt" aria-hidden="true"></i></a></td> --%>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- /.box-content -->
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