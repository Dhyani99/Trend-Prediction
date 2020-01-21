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

	<title>Add Feedback</title>

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
	
<%-- 	<link rel="stylesheet" href="<%=request.getContextPath() %>/adminResource/css/star.css"> --%>
	<link rel="shortcut icon" href="assets/images/favicon.ico">
	<link href="<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/adminResources/css/icons.css" rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/adminResources/css/style.css" rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/adminResources/css/rating.css" rel="stylesheet" type="text/css">
    <style type="text/css">
.rating {
    float:left;
}

/* :not(:checked) is a filter, so that browsers that don’t support :checked don’t 
   follow these rules. Every browser that supports :checked also supports :not(), so
   it doesn’t make the test unnecessarily selective */
.rating:not(:checked) > input {
    position:absolute;
    top:-9999px;
    clip:rect(0,0,0,0);
}

.rating:not(:checked) > label {
    float:right;
    width:2em;
    padding:0 .01em;
    overflow:hidden;
    white-space:nowrap;
    cursor:pointer;
    font-size:200%;
    line-height:1.2;
    color:#ddd;
    text-shadow:1px 1px #bbb, 2px 2px #666, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:before {
    content: ' ';
}

.rating > input:checked ~ label {
    color: #f70;
    text-shadow:1px 1px #c60, 2px 2px #940, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:hover,
.rating:not(:checked) > label:hover ~ label {
    color: gold;
    text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > input:checked + label:hover,
.rating > input:checked + label:hover ~ label,
.rating > input:checked ~ label:hover,
.rating > input:checked ~ label:hover ~ label,
.rating > label:hover ~ input:checked ~ label {
    color: #ea0;
    text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > label:active {
    position:relative;
    top:2px;
    left:2px;
}
</style>
</head>

<body>
	<jsp:include page="menu.jsp"></jsp:include>
<!-- /.main-menu -->

	<jsp:include page="header.jsp"></jsp:include>
<!-- /.fixed-navbar -->


<div id="notification-popup" class="notice-popup js__toggle" data-space="75">
	<h2 class="popup-title">Your Notifications</h2>
	<!-- /.popup-title -->
	<div class="content">
		<ul class="notice-list">
			<li>
				<a href="#">
					<span class="avatar"><img src="<%=request.getContextPath() %>/adminResource/image/avatar-sm-1.jpg" alt=""></span>
					<span class="name">John Doe</span>
					<span class="desc">Like your post: âContact Form 7 Multi-Stepâ</span>
					<span class="time">10 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="<%=request.getContextPath() %>/adminResource/image
					
					/avatar-sm-2.jpg" alt=""></span>
					<span class="name">Anna William</span>
					<span class="desc">Like your post: âFacebook Messengerâ</span>
					<span class="time">15 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar bg-warning"><i class="fa fa-warning"></i></span>
					<span class="name">Update Status</span>
					<span class="desc">Failed to get available update data. To ensure the please contact us.</span>
					<span class="time">30 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="<%=request.getContextPath() %>/adminResource/image/avatar-1.jpg" alt=""></span>
					<span class="name">Jennifer</span>
					<span class="desc">Like your post: âContact Form 7 Multi-Stepâ</span>
					<span class="time">45 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="<%=request.getContextPath() %>/adminResource/image/avatar-sm-6.jpg" alt=""></span>
					<span class="name">Michael Zenaty</span>
					<span class="desc">Like your post: âContact Form 7 Multi-Stepâ</span>
					<span class="time">50 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="<%=request.getContextPath() %>/adminResource/image/avatar-sm-4.jpg" alt=""></span>
					<span class="name">Simon</span>
					<span class="desc">Like your post: âFacebook Messengerâ</span>
					<span class="time">1 hour</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar bg-violet"><i class="fa fa-flag"></i></span>
					<span class="name">Account Contact Change</span>
					<span class="desc">A contact detail associated with your account has been changed.</span>
					<span class="time">2 hours</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="<%=request.getContextPath() %>/adminResource/image/avatar-sm-7.jpg" alt=""></span>
					<span class="name">Helen 987</span>
					<span class="desc">Like your post: âFacebook Messengerâ</span>
					<span class="time">Yesterday</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="<%=request.getContextPath() %>/adminResource/image/avatar-2.jpg" alt=""></span>
					<span class="name">Denise Jenny</span>
					<span class="desc">Like your post: âContact Form 7 Multi-Stepâ</span>
					<span class="time">Oct, 28</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="<%=request.getContextPath() %>/adminResource/image/avatar-sm-8.jpg" alt=""></span>
					<span class="name">Thomas William</span>
					<span class="desc">Like your post: âFacebook Messengerâ</span>
					<span class="time">Oct, 27</span>
				</a>
			</li>
		</ul>
		<!-- /.notice-list -->
		<a href="#" class="notice-read-more">See more messages <i class="fa fa-angle-down"></i></a>
	</div>
	<!-- /.content -->
</div>
<!-- /#notification-popup -->

<div id="message-popup" class="notice-popup js__toggle" data-space="75">
	<h2 class="popup-title">Recent Messages<a href="#" class="float-right text-danger">New message</a></h2>
	<!-- /.popup-title -->
	<div class="content">
		<ul class="notice-list">
			<li>
				<a href="#">
					<span class="avatar"><img src="<%=request.getContextPath() %>/adminResource/image/avatar-sm-1.jpg" alt=""></span>
					<span class="name">John Doe</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">10 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="<%=request.getContextPath() %>/adminResource/image/avatar-sm-3.jpg" alt=""></span>
					<span class="name">Harry Halen</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">15 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="<%=request.getContextPath() %>/adminResource/image/avatar-sm-4.jpg" alt=""></span>
					<span class="name">Thomas Taylor</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">30 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="<%=request.getContextPath() %>/adminResource/image/avatar-1.jpg" alt=""></span>
					<span class="name">Jennifer</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">45 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="assets/images/avatar-sm-5.jpg" alt=""></span>
					<span class="name">Helen Candy</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">45 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="<%=request.getContextPath() %>/adminResource/image/avatar-2.jpg" alt=""></span>
					<span class="name">Anna Cavan</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">1 hour ago</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar bg-success"><i class="fa fa-user"></i></span>
					<span class="name">Jenny Betty</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">1 day ago</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="<%=request.getContextPath() %>/adminResource/image/avatar-5.jpg" alt=""></span>
					<span class="name">Denise Peterson</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">1 year ago</span>
				</a>
			</li>
		</ul>
		<!-- /.notice-list -->
		<a href="#" class="notice-read-more">See more messages <i class="fa fa-angle-down"></i></a>
	</div>
	<!-- /.content -->
</div>
<!-- /#message-popup -->
<div id="wrapper">
	<div class="main-content">
		<div class="row small-spacing">
			<div class="col-12">
				<div class="box-content">
					<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
					<f:form data-toggle="validator" action="insertFeedback" modelAttribute="feedbackVO" method="post">
					<h1 class="page-title">ADD FEEDBACK</h1>
						<div class="form-group">
							<label for="inputName" class="control-label">Feedback: </label>
							<f:textarea path="feedback" class="form-control" id="inp-type-5" placeholder="Enter your feedback"></f:textarea><br>
						</div>
						<f:hidden path="loginVO.loginId"/>
						<div class="form-group">
							<label for="inp-type-5" class="control-label">Rating: </label><br>		
							<div class="rating">
													
								<f:radiobutton id="star5" path="rating" value="5" /><label for="star5" title="Rocks!"><span class="fas fa-star "></span></label>
								<f:radiobutton id="star4" path="rating" value="4" /><label for="star4" title="Pretty good"><span class="fas fa-star"></span></label>
							    <f:radiobutton id="star3" path="rating" value="3" /><label for="star3" title="Meh"><span class="fas fa-star"></span></label>
							    <f:radiobutton id="star2" path="rating" value="2" /><label for="star2" title="Kinda bad"><span class="fas fa-star"></span></label>
							    <f:radiobutton id="star1" path="rating" value="1" /><label for="star1" title="Sucks big time"><span class="fas fa-star"></span></label>
						    </div>
						</div>
						<div class="form-group">
							<br><br><button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
						</div>
					</f:form>
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-12 -->
		</div>
		<!-- /.row small-spacing -->		
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<!-- /.main-content -->
</div><!--/#wrapper -->
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="<%=request.getContextPath() %>/<%=request.getContextPath() %>/adminResource/js/html5shiv.min.js"></script>
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

	<!-- Validator -->
	<script src="<%=request.getContextPath() %>/adminResource/js/validator.min.js"></script>

	<script src="<%=request.getContextPath() %>/adminResource/js/main.min.js"></script>
<script src="<%=request.getContextPath() %>/adminResource/js/mycommon.js"></script>

	<!-- jQuery  -->
        <script src="<%=request.getContextPath()%>/adminResources/js/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/modernizr.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/detect.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/fastclick.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/jquery.slimscroll.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/jquery.blockUI.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/waves.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/wow.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/jquery.nicescroll.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/jquery.scrollTo.min.js"></script>

        <script type="text/javascript" src="<%=request.getContextPath()%>/adminResources/js/parsley.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function() {
                $('form').parsley();
            });
        </script>

        <script src="<%=request.getContextPath()%>/adminResources/js/app.js"></script>
</body>
</html>