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

	<title>Trend Prediction</title>

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

</head>

<body>
	<jsp:include page="menu.jsp"></jsp:include>
<!-- /.main-menu -->

<jsp:include page="header.jsp"></jsp:include>

<%@taglib prefix="x" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="s" uri="http://java.sun.com/jstl/sql_rt" %>
<!-- /.fixed-navbar -->


<div id="wrapper">
	<div class="main-content">
		<div class="row small-spacing">
			
				<!-- /.box-content -->
			<div class="col-xl-4 col-12">
				<div class="box-content">
					<div class="statistics-box with-icon">
						<i class="ico ti-user text-success"></i>
						<s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/trend_prediction" user="root" password="root" var="userVariable"/>
						<s:query var="users" dataSource="${userVariable}">
							Select count(*) as user from login where enabled=1 and role='ROLE_USER';
						</s:query>
						<x:forEach var="userCount" items="${users.rows}">
							<h2 class="counter text-success">${userCount.user}</h2>
						</x:forEach>
						<p class="text">Active Users</p>
					</div>
					<!-- .statistics-box .with-icon -->
				</div>
				<!-- /.box-content -->
			</div>
			<div class="col-xl-4 col-12">
				<div class="box-content">
					<div class="statistics-box with-icon">
						<i class="ico ti-user text-danger"></i>
						<s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/trend_prediction" user="root" password="root" var="userVariable"/>
						<s:query var="users" dataSource="${userVariable}">
							Select count(*) as user from login where enabled=0 and role='ROLE_USER';
						</s:query>
						<x:forEach var="userCount" items="${users.rows}">
							<h2 class="counter text-danger">${userCount.user}</h2>
						</x:forEach>
						<p class="text">Blocked Users</p>
					</div>
					<!-- .statistics-box .with-icon -->
				</div>
				<!-- /.box-content -->
			</div>
			<div class="col-xl-4 col-12">
				<div class="box-content">
					<div class="statistics-box with-icon">
						<i class="ico  ti-comments-smiley text-warning"></i>
						<s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/trend_prediction" user="root" password="root" var="feedbackVariable"/>
						<s:query var="feedbacks" dataSource="${feedbackVariable}">
							Select count(*) as feedback from feedback_table where status=b'1';
						</s:query>
						<x:forEach var="feedbackCount" items="${feedbacks.rows}">
							<h2 class="counter text-warning">${feedbackCount.feedback}</h2>
						</x:forEach>
						<p class="text">Number of feedbacks</p>
					</div>
					<!-- .statistics-box .with-icon -->
				</div>
			</div>
			</div>
			
			<div class="row small-spacing">
			
				<!-- /.box-content -->
			<div class="col-xl-4 col-12">
				<div class="box-content">
					<div class="statistics-box with-icon">
						<i class="ico  ti-check-box text-primary"></i>
						<s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/trend_prediction" user="root" password="root" var="complainVariable"/>
						<s:query var="complains" dataSource="${complainVariable}">
							Select count(*) as complain from complain_table where complain_status='Resolved';
						</s:query>
						<x:forEach var="complainCount" items="${complains.rows}">
							<h2 class="counter text-primary">${complainCount.complain}</h2>
						</x:forEach>
						<p class="text">Complains Resolved</p>
					</div>
					<!-- .statistics-box .with-icon -->
				</div>
				<!-- /.box-content -->
			</div>
			<div class="col-xl-4 col-12">
				<div class="box-content">
					<div class="statistics-box with-icon">
						<i class="ico ti-pencil-alt text-gray"></i>
						<s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/trend_prediction" user="root" password="root" var="complainVariable"/>
						<s:query var="complains" dataSource="${complainVariable}">
							Select count(*) as complain from complain_table where complain_status='Pending';
						</s:query>
						<x:forEach var="complainCount" items="${complains.rows}">
							<h2 class="counter text-gray">${complainCount.complain}</h2>
						</x:forEach>
						<p class="text">Pending Complains</p>
					</div>
					<!-- .statistics-box .with-icon -->
				</div>
				<!-- /.box-content -->
			</div>
			</div>
		<!-- /.row small-spacing -->

		
		<!-- /.row small-spacing -->

		
		<!-- /.row -->		
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