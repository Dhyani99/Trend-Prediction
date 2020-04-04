<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" class="js"><head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Registration</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/style.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/custom.css">

	<!-- Waves Effect -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/waves.min.css">

</head>

<body>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
					
<div id="single-wrapper">
	<f:form data-toggle="validator" action="insert" modelAttribute="registerVO" class="frm-single" method="post">
		<div class="inside">
			<div class="title"><strong>Trend Prediction</strong></div>
			<!-- /.title -->
			<div class="frm-title">Register</div>
			<div class="form-group">
							<label for="inputName" class="control-label"> First Name</label>
							<f:input path="firstName" class="form-control" id="inputName" placeholder="Enter first name" required="true"/>
						</div>
						
						<div class="form-group">
							<label for="inputName" class="control-label"> Last Name</label>
							<f:input path="lastName" class="form-control" id="inputName" placeholder="Enter last name" required="true"/>
						</div>
						
						<div class="form-group">
							<label for="gender" class="control-label"> Gender</label>
							<div class="row">
								<div class="radio col-md-6">
									<f:radiobutton path="gender" value="male" name="Male" id="underwear1" required="true"/>
									<label for="underwear1">Male</label>
								</div>
								<div class="radio col-md-6">
									<f:radiobutton path="gender" value="female" name="Female" id="underwear2" required="true"/>
									<label for="underwear2">Female</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail" class="control-label">Email</label>
							<f:input path="loginVO.username" class="form-control" id="inputEmail" placeholder="Enter email" data-error="That email address is invalid" required="true"/>
							<div class="help-block with-errors"></div>
						</div>
						
						<div class="form-group">
							<label for="inputName" class="control-label"> Contact No</label>
							<f:input path="contactNumber" class="form-control" id="inputName" placeholder="Enter contact number" required="true"/>
						</div>
										
						<div class="form-group">
							<label for="inputPassword" class="control-label">Password</label>
							<div class="row">
								<div class="form-group col-md-6">
									<f:password path="loginVO.password" data-minlength="6" class="form-control" id="inputPassword" placeholder="Enter password" required="true"/>
									<div class="help-block">Minimum of 6 characters</div>
								</div>
								<div class="form-group col-md-6">
									<input type="password"  class="form-control" id="inputPasswordConfirm" data-match="#inputPassword" data-match-error="Whoops, these don't match" placeholder="Confirm password" required="true"/>
									<div class="help-block with-errors"></div>
								</div>
							</div>
						</div>
			
			<!-- /.clearfix -->
			<button type="submit" class="frm-submit">Register<i class="fa fa-arrow-circle-right"></i></button>
			
			<a href="login" class="a-link"><i class="fa fa-sign-in"></i>Already have account? Login.</a>
			
			<!-- /.footer -->
		</div>
		<!-- .inside -->
	</f:form>
	<!-- /.frm-single -->
</div><!--/#single-wrapper -->

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
	<script src="<%=request.getContextPath() %>/adminResource/js/nprogress.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/waves.min.js"></script>

	<script src="<%=request.getContextPath() %>/adminResource/js/main.min.js"></script>
<script src="<%=request.getContextPath() %>/adminResource/js/mycommon.js"></script>

<script src="<%=request.getContextPath() %>/adminResource/js/jquery.min.js"></script>

	<script src="<%=request.getContextPath() %>/adminResource/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/sweetalert.min.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/waves.min.js"></script>
	<!-- Sparkline Chart -->
	<script src="<%=request.getContextPath() %>/adminResource/js/jquery.sparkline.min.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/chart.sparkline.init.min.js"></script>

	<!-- Validator -->
	<script src="<%=request.getContextPath() %>/adminResource/js/validator.min.js"></script>

	<script src="<%=request.getContextPath() %>/adminResource/js/main.min.js"></script>
	<script src="<%=request.getContextPath() %>/adminResource/js/mycommon.js"></script>

</body>
</html>