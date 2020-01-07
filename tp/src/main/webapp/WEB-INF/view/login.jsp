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

	<title>Home</title>
	<link rel="stylesheet" href="adminResource/css/style.min.css">
<link rel="stylesheet" href="adminResource/css/custom.css">

	<!-- Waves Effect -->
	<link rel="stylesheet" href="adminResource/css/waves.min.css">

</head>

<body>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>


<div id="single-wrapper">
	<form action="j_spring_security_check" class="frm-single" method="Post">
		<div class="inside">
			<div class="title"><strong>Trend Prediction</strong></div>
			<!-- /.title -->
			<div class="frm-title">Login</div>
			<!-- /.frm-title -->
			<div class="frm-input"><input type="text" name="username" placeholder="Username" class="frm-inp"/><i class="fa fa-user frm-ico"></i></div>
			<!-- /.frm-input -->
			<div class="frm-input"><input type="password" name="password" placeholder="Password" class="frm-inp"/><i class="fa fa-lock frm-ico"></i></div>
			<!-- /.frm-input -->
			<div class="clearfix margin-bottom-20">
				<!-- <div class="float-left">
					<div class="checkbox primary"><input type="checkbox" id="rememberme"><label for="rememberme">Remember me</label></div>
					/.checkbox
				</div>  -->
				<!-- /.float-left -->
				<div class="float-right"><a href="page-recoverpw.html" class="a-link"><i class="fa fa-unlock-alt"></i>Forgot password?</a></div>
				<!-- /.float-right -->
			</div>
			<!-- /.clearfix -->
			<button type="submit" class="frm-submit">Login<i class="fa fa-arrow-circle-right"></i></button>
			
			<!-- <div class="row small-spacing">
				<div class="col-md-12">
					<div class="txt-login-with txt-center">or login with</div>
					/.txt-login-with
				</div>
				/.col-md-12
				<div class="col-md-6"><button type="button" class="btn btn-sm btn-icon btn-icon-left btn-social-with-text btn-facebook text-white waves-effect waves-light"><i class="ico fa fa-facebook"></i><span>Facebook</span></button></div>
				/.col-md-6
				<div class="col-md-6"><button type="button" class="btn btn-sm btn-icon btn-icon-left btn-social-with-text btn-google-plus text-white waves-effect waves-light"><i class="ico fa fa-google-plus"></i>Google+</button></div>
				/.col-md-6
			</div> -->
			
			<!-- /.row -->
			<a href="page-register.html" class="a-link"><i class="fa fa-key"></i>New User? Register.</a>
			<div class="frm-footer"></div>
			<!-- /.footer -->
		</div>
		<!-- .inside -->
	</form>
	<!-- /.frm-single -->
</div><!--/#single-wrapper -->

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="adminResource/js/html5shiv.min.js"></script>
		<script src="adminResource/js/respond.min.js"></script>
	<![endif]-->
	<!-- 
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="adminResource/js/jquery.min.js"></script>
	<script src="adminResource/js/modernizr.min.js"></script>
	<script src="adminResource/js/bootstrap.min.js"></script>
	<script src="adminResource/js/nprogress.js"></script>
	<script src="adminResource/js/waves.min.js"></script>

	<script src="adminResource/js/main.min.js"></script>
<script src="adminResource/js/mycommon.js"></script>
</body>
</html>