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

	<title>Home - SpaceX Template</title>

	<!-- Main Styles -->
	<link rel="stylesheet" href="adminResource/css/style.min.css">
<link rel="stylesheet" href="adminResource/css/custom.css">
	
	<!-- Themify Icon -->
	<link rel="stylesheet" href="adminResource/css/themify-icons.css">

	<!-- mCustomScrollbar -->
	<link rel="stylesheet" href="adminResource/css/jquery.mCustomScrollbar.min.css">

	<!-- Waves Effect -->
	<link rel="stylesheet" href="adminResource/css/waves.min.css">

	<!-- Sweet Alert -->
	<link rel="stylesheet" href="adminResource/css/sweetalert.css">
	
	<!-- Percent Circle -->
	<link rel="stylesheet" href="adminResource/css/percircle.css">

	<!-- Chartist Chart -->
	<link rel="stylesheet" href="adminResource/css/chartist.min.css">

	<!-- FullCalendar -->
	<link rel="stylesheet" href="adminResource/css/fullcalendar.min.css">
	<link rel="stylesheet" href="adminResource/css/fullcalendar.print.css" media='print'>

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
					<span class="avatar"><img src="adminResource/image/avatar-sm-1.jpg" alt=""></span>
					<span class="name">John Doe</span>
					<span class="desc">Like your post: “Contact Form 7 Multi-Step”</span>
					<span class="time">10 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResource/image/avatar-sm-2.jpg" alt=""></span>
					<span class="name">Anna William</span>
					<span class="desc">Like your post: “Facebook Messenger”</span>
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
					<span class="avatar"><img src="adminResource/image/avatar-1.jpg" alt=""></span>
					<span class="name">Jennifer</span>
					<span class="desc">Like your post: “Contact Form 7 Multi-Step”</span>
					<span class="time">45 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="aminResources/image/avatar-sm-6.jpg" alt=""></span>
					<span class="name">Michael Zenaty</span>
					<span class="desc">Like your post: “Contact Form 7 Multi-Step”</span>
					<span class="time">50 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResource/image/avatar-sm-4.jpg" alt=""></span>
					<span class="name">Simon</span>
					<span class="desc">Like your post: “Facebook Messenger”</span>
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
					<span class="avatar"><img src="adminResource/image/avatar-sm-7.jpg" alt=""></span>
					<span class="name">Helen 987</span>
					<span class="desc">Like your post: “Facebook Messenger”</span>
					<span class="time">Yesterday</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResource/image/avatar-2.jpg" alt=""></span>
					<span class="name">Denise Jenny</span>
					<span class="desc">Like your post: “Contact Form 7 Multi-Step”</span>
					<span class="time">Oct, 28</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResource/image/avatar-sm-8.jpg" alt=""></span>
					<span class="name">Thomas William</span>
					<span class="desc">Like your post: “Facebook Messenger”</span>
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
					<span class="avatar"><img src="adminResource/image/avatar-sm-1.jpg" alt=""></span>
					<span class="name">John Doe</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">10 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResource/image/avatar-sm-3.jpg" alt=""></span>
					<span class="name">Harry Halen</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">15 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResource/image/avatar-sm-4.jpg" alt=""></span>
					<span class="name">Thomas Taylor</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">30 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResource/image/avatar-1.jpg" alt=""></span>
					<span class="name">Jennifer</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">45 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResource/image/avatar-sm-5.jpg" alt=""></span>
					<span class="name">Helen Candy</span>
					<span class="desc">Amet odio neque nobis consequuntur consequatur a quae, impedit facere repellat voluptates.</span>
					<span class="time">45 min</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span class="avatar"><img src="adminResource/image/avatar-2.jpg" alt=""></span>
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
					<span class="avatar"><img src="adminResource/image/avatar-5.jpg" alt=""></span>
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
			<div class="col-xl-3 col-12">
				<div class="box-content">
					<div class="statistics-box with-icon">
						<i class="ico ti-apple text-inverse"></i>
						<h2 class="counter text-inverse">2561</h2>
						<p class="text">Product Sales</p>
					</div>
					<!-- .statistics-box .with-icon -->
				</div>
				<!-- /.box-content -->

				<div class="box-content">
					<div class="statistics-box with-icon">
						<i class="ico ti-android text-success"></i>
						<h2 class="counter text-success">3562</h2>
						<p class="text">Visitors</p>
					</div>
					<!-- .statistics-box .with-icon -->
				</div>
				<!-- /.box-content -->

				<div class="box-content">
					<div class="statistics-box with-icon">
						<i class="ico ti-user text-primary"></i>
						<h2 class="counter text-primary">283</h2>
						<p class="text">Members</p>
					</div>
					<!-- .statistics-box .with-icon -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-3 col-12 -->
			<div class="col-xl-9 col-12">
				<div class="box-content">
					<h4 class="box-title">Statistics</h4>
					<!-- /.box-title -->
					<div class="dropdown js__drop_down">
						<a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
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
					<div id="svg-animation-chartist-chart" class="chartist-chart" style="height: 314px"></div>
					<!-- /#svg-animation-chartist-chart.chartist-chart -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-9 col-12 -->
		</div>
		<!-- /.row small-spacing -->

		<div class="row small-spacing">

			<div class="col-xl-4 col-12">
				<div class="box-content">
					<h4 class="box-title text-info">Site Traffic</h4>
					<!-- /.box-title -->
					<div class="dropdown js__drop_down">
						<a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
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
					<div class="content widget-stat">
						<div id="traffic-sparkline-chart-1" class="left-content margin-top-15"></div>
						<!-- /#traffic-sparkline-chart-1 -->
						<div class="right-content">
							<h2 class="counter text-info">278</h2>
							<!-- /.counter -->
							<p class="text text-info">Visitors Income</p>
							<!-- /.text -->
						</div>
						<!-- .right-content -->
					</div>
					<!-- /.content widget-stat -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-4 col-12 -->

			<div class="col-xl-4 col-12">
				<div class="box-content">
					<h4 class="box-title text-success">Trade Traffic</h4>
					<!-- /.box-title -->
					<div class="dropdown js__drop_down">
						<a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
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
					<div class="content widget-stat">
						<div id="traffic-sparkline-chart-2" class="left-content margin-top-10"></div>
						<!-- /#traffic-sparkline-chart-2 -->
						<div class="right-content">
							<h2 class="counter text-success">36%</h2>
							<!-- /.counter -->
							<p class="text text-success">Total Income</p>
							<!-- /.text -->
						</div>
						<!-- .right-content -->
					</div>
					<!-- /.content widget-stat -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-4 col-12 -->

			<div class="col-xl-4 col-12">
				<div class="box-content">
					<h4 class="box-title text-success">Sales Traffic</h4>
					<!-- /.box-title -->
					<div class="dropdown js__drop_down">
						<a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
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
					<div class="content widget-stat">
						<div id="traffic-sparkline-chart-3" class="left-content"></div>
						<!-- /#traffic-sparkline-chart-3 -->
						<div class="right-content">
							<h2 class="counter text-danger">849 <i class="fa fa-usd"></i></h2>
							<!-- /.counter -->
							<p class="text text-danger">Credit Earned</p>
							<!-- /.text -->
						</div>
						<!-- .right-content -->
					</div>
					<!-- /.content widget-stat -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-4 col-12 -->
		</div>
		<!-- /.row small-spacing -->

		<div class="row small-spacing">
			<div class="col-xl-4 col-12">
				<div class="box-content">
					<h4 class="box-title">Activity</h4>
					<!-- /.box-title -->
					<div class="dropdown js__drop_down">
						<a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
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
					<div class="activity-list">
						<div class="activity-item">
							<div class="bar bg-primary">
								<div class="dot bg-primary"></div>
								<!-- /.dot -->
							</div>
							<!-- /.bar -->
							<div class="content">
								<div class="date">10 min</div>
								<!-- /.date -->
								<div class="text">
									Harry has finished "Amaza HTML" task
								</div>
								<!-- /.text -->
							</div>
							<!-- /.content -->
						</div>
						<!-- /.activity-item -->
						<div class="activity-item">
							<div class="bar bg-danger">
								<div class="dot bg-danger"></div>
								<!-- /.dot -->
							</div>
							<!-- /.bar -->
							<div class="content">
								<div class="date">15 min</div>
								<!-- /.date -->
								<div class="text">
									You completed your task
								</div>
								<!-- /.text -->
							</div>
							<!-- /.content -->
						</div>
						<!-- /.activity-item -->
						<div class="activity-item">
							<div class="bar bg-success">
								<div class="dot bg-success"></div>
								<!-- /.dot -->
							</div>
							<!-- /.bar -->
							<div class="content">
								<div class="date">30 min</div>
								<!-- /.date -->
								<div class="text">
									New updated has been installed
								</div>
								<!-- /.text -->
							</div>
							<!-- /.content -->
						</div>
						<!-- /.activity-item -->
						<div class="activity-item">
							<div class="bar bg-violet">
								<div class="dot bg-violet"></div>
								<!-- /.dot -->
							</div>
							<!-- /.bar -->
							<div class="content">
								<div class="date">1 hour ago</div>
								<!-- /.date -->
								<div class="text">Write some comments</div>
								<!-- /.text -->
							</div>
							<!-- /.content -->
						</div>
						<!-- /.activity-item -->
						<div class="activity-item">
							<div class="bar bg-warning">
								<div class="dot bg-warning"></div>
								<!-- /.dot -->
							</div>
							<!-- /.bar -->
							<div class="content">
								<div class="date">1 day ago</div>
								<!-- /.date -->
								<div class="text">4 friends request accepted</div>
								<!-- /.text -->
							</div>
							<!-- /.content -->
						</div>
						<!-- /.activity-item -->
						<div class="activity-item">
							<div class="bar bg-orange">
								<div class="dot bg-orange"></div>
								<div class="last-dot bg-orange"></div>
								<!-- /.dot -->
							</div>
							<!-- /.bar -->
							<div class="content">
								<div class="date">12 days ago</div>
								<!-- /.date -->
								<div class="text">Daisy has joined your team</div>
								<!-- /.text -->
							</div>
							<!-- /.content -->
						</div>
						<!-- /.activity-item -->
					</div>
					<!-- /.activity-list -->
					<a href="#" class="activity-link">View all activity <i class="fa fa-angle-down"></i></a>
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-4 col-12 -->

			<div class="col-xl-8 col-12">
				<div class="box-content">
					<h4 class="box-title">Purchases</h4>
					<!-- /.box-title -->
					<div class="dropdown js__drop_down">
						<a href="#" class="dropdown-icon glyphicon glyphicon-option-vertical js__drop_down_button"></a>
						<ul class="sub-menu">
							<li><a href="#">Product</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else there</a></li>
							<li class="split"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
						<!-- /.sub-menu -->
					</div>
					<!-- /.dropdown js__dropdown -->
					<table class="table table-striped margin-bottom-10">
						<thead>
							<tr>
								<th style="width:40%;">Product</th>
								<th>Price</th>
								<th>Date</th>
								<th>State</th>
								<th style="width:5%;"></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Amaza Themes</td>
								<td>$71</td>
								<td>Nov 12,2016</td>
								<td class="text-success">Completed</td>
								<td><a href="#"><i class="fa fa-plus-circle"></i></a></td>
							</tr>
							<tr>
								<td>Macbook</td>
								<td>$142</td>
								<td>Nov 10,2016</td>
								<td class="text-danger">Cancelled</td>
								<td><a href="#"><i class="fa fa-plus-circle"></i></a></td>
							</tr>
							<tr>
								<td>Samsung TV</td>
								<td>$200</td>
								<td>Nov 01,2016</td>
								<td class="text-warning">Pending</td>
								<td><a href="#"><i class="fa fa-plus-circle"></i></a></td>
							</tr>
							<tr>
								<td>Ninja Admin</td>
								<td>$200</td>
								<td>Oct 28,2016</td>
								<td class="text-warning">Pending</td>
								<td><a href="#"><i class="fa fa-plus-circle"></i></a></td>
							</tr>
							<tr>
								<td>Galaxy Note 5</td>
								<td>$200</td>
								<td>Oct 28,2016</td>
								<td class="text-success">Completed</td>
								<td><a href="#"><i class="fa fa-plus-circle"></i></a></td>
							</tr>
							<tr>
								<td>CleanUp Themes</td>
								<td>$71</td>
								<td>Oct 22,2016</td>
								<td class="text-success">Completed</td>
								<td><a href="#"><i class="fa fa-plus-circle"></i></a></td>
							</tr>
							<tr>
								<td>Facebook WP Plugin</td>
								<td>$10</td>
								<td>Oct 15,2016</td>
								<td class="text-success">Completed</td>
								<td><a href="#"><i class="fa fa-plus-circle"></i></a></td>
							</tr>
							<tr>
								<td>Iphone 7</td>
								<td>$100</td>
								<td>Oct 12,2016</td>
								<td class="text-warning">Pending</td>
								<td><a href="#"><i class="fa fa-plus-circle"></i></a></td>
							</tr>
							<tr>
								<td>Nova House</td>
								<td>$100</td>
								<td>Oct 12,2016</td>
								<td class="text-warning">Pending</td>
								<td><a href="#"><i class="fa fa-plus-circle"></i></a></td>
							</tr>
							<tr>
								<td>Repair Cars</td>
								<td>$35</td>
								<td>Oct 12,2016</td>
								<td class="text-warning">Pending</td>
								<td><a href="#"><i class="fa fa-plus-circle"></i></a></td>
							</tr>
							
						</tbody>
					</table>
					<!-- /.table -->
				</div>
				<!-- /.box-content -->
			</div>
			<!-- /.col-xl-6 col-12 -->
		</div>
		<!-- /.row -->		
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<!-- /.main-content -->
</div><!--/#wrapper -->
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
	<script src="adminResource/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="adminResource/js/nprogress.js"></script>
	<script src="adminResource/js/sweetalert.min.js"></script>
	<script src="adminResource/js/waves.min.js"></script>
	<!-- Sparkline Chart -->
	<script src="adminResource/js/jquery.sparkline.min.js"></script>
	<script src="adminResource/js/chart.sparkline.init.min.js"></script>

	<!-- Percent Circle -->
	<script src="adminResource/js/percircle.js"></script>

	<!-- Google Chart -->
	<script type="text/javascript" src="adminResource/js/loader.js"></script>

	<!-- Chartist Chart -->
	<script src="adminResource/js/chartist.min.js"></script>
	<script src="adminResource/js/jquery.chartist.init.min.js"></script>

	<!-- FullCalendar -->
	<script src="adminResource/js/moment.js"></script>
	<script src="adminResource/js/fullcalendar.min.js"></script>
	<script src="adminResource/js/fullcalendar.init.js"></script>

	<script src="adminResource/js/main.min.js"></script>
<script src="adminResource/js/mycommon.js"></script>
</body>
</html>