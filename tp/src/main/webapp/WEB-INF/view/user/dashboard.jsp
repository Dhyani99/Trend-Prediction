<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Dashboard</title>
	
	<!-- Main Styles -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/style.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/custom.css">
	
	<!-- Themify Icon -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/themify-icons.css">

	<!-- mCustomScrollbar -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/jquery.mCustomScrollbar.min.css">

	<!-- Waves Effect -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/waves.min.css">

	<!-- Sweet Alert -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/sweetalert.css">
	
	<!-- Percent Circle -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/percircle.css">

	<!-- Chartist Chart -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/chartist.min.css">

	<!-- FullCalendar -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/fullcalendar.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/fullcalendar.print.css" media='print'>
	<style>
	
	.cardDescription
	{
		color: white;
	}
	</style>

</head>

<body>
	<jsp:include page="menu.jsp"></jsp:include>
<!-- /.main-menu -->

<jsp:include page="header.jsp"></jsp:include>


<!-- /.fixed-navbar -->
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<div id="wrapper">
	<div class="main-content">
	
		<div class="box-content">
		<h1 class="page-title">DOMAINS</h1>
		<div class="row row-inline-block small-spacing">
		
		<c:forEach var="domain" items="${domainList}">
			<div class="col-xl-4 col-lg-6 col-12">
				<div class="box-content card bordered-all gray js__card card-closed">
					<h4 class="box-title bg-danger with-control">
						<a class="cardDescription" href="displayKeyword?domainId=${domain.id}">${domain.domainName}</a>
						<span class="controls">
							<button type="button" class="control fa fa-minus js__card_minus"></button>
							
						</span>
						<!-- /.controls -->
					</h4>
					<!-- /.box-title -->
					<div class="card-content js__card_content" style="display: none;">
						<p>${domain.domainDescription}</p>
					</div>
				</div>
				<!-- /.box-content -->
			</div>
			</c:forEach>
			
			</div>
			</div>
			
			<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<!-- /.main-content -->
</div><!--/#wrapper -->
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

	<!-- Percent Circle -->
	<script src="<%=request.getContextPath() %>/adminResource/js/percircle.js"></script>

	<!-- Google Chart -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/adminResource/js/loader.js"></script>

	<!-- Chartist Chart -->
	<script src="<%=request.getContextPath() %>/adminResource/js/chartist.min.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/jquery.chartist.init.min.js"></script>

	<!-- FullCalendar -->
	<script src="<%=request.getContextPath() %>/adminResource/js/moment.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/fullcalendar.min.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/fullcalendar.init.js"></script>

	<script src="<%=request.getContextPath() %>/adminResource/js/main.min.js"></script>
<script src="<%=request.getContextPath() %>/adminResource/js/mycommon.js"></script>
</body>
</html>