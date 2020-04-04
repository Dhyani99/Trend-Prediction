<div class="main-menu">
	<header class="header">
		<a href="dashboard" class="logo">
		<i class="ico  ti-stats-up"></i>Trend Prediction</a>
		<button type="button" class="button-close fa fa-times js__menu_close"></button>
	</header>
	<!-- /.header -->
	<div class="content">
	<%@taglib prefix="x" uri="http://java.sun.com/jstl/core_rt" %>
	<%@ taglib prefix="s" uri="http://java.sun.com/jstl/sql_rt" %>
		<div class="navigation">
			<!-- <h5 class="title">Navigation</h5> -->
			<!-- /.title -->
			<ul class="menu js__accordion">
				<li>
					<a class="waves-effect" href="dashboard"><i class="menu-icon ti-dashboard"></i><span>Dashboard</span></a>
				</li>
				<li>
					<a class="waves-effect parent-item js__control" href="#"><i class="menu-icon ti-search"></i><span>View Keywords</span><span class="menu-arrow fa fa-angle-down"></span></a>
					<ul class="sub-menu js__content">
					<s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/trend_prediction" user="root" password="root" var="i"/>
					<s:query var="j" dataSource="${i}">
						Select * from domain_table where status=true;
					</s:query>
					<x:forEach var="domain" items="${j.rows}">
						<li><span><a href="viewUserKeyword?domainId=${domain.id}">${domain.domain_name}</a></span></li>
					</x:forEach>
						<!-- <li><a href="domainRequest">Domain Request</a></li>
						<li><a href="viewDomainRequest">Domain Request History</a></li> -->
					</ul>
					<!-- /.sub-menu js__content -->
				</li>
				
				
				
			
				<%-- <li>
					<a class="waves-effect parent-item js__control" href="#"><i class="menu-icon  ti-search"></i><span>Manage Keywords</span><span class="menu-arrow fa fa-angle-down"></span></a>
					<ul class="sub-menu js__content">
						<li><a href="loadKeyword">Search Keyword</a></li>
						<!-- <li><a href="icons-material-icons.html">Material Design Icons</a></li>
						<li><a href="icons-material-design-iconic.html">Material Design Iconic Font</a></li>
						<li><a href="icons-themify-icons.html">Themify Icons</a></li> -->
					</ul>
					<!-- /.sub-menu js__content -->
				</li> --%>
				
				
				
				<%-- <li>
					<a class="waves-effect parent-item js__control" href="#"><i class="menu-icon ti-stats-up"></i><span>Manage Prediction</span><span class="menu-arrow fa fa-angle-down"></span></a>
					<ul class="sub-menu js__content">
						<li><a href="viewPrediction">View Prediction</a></li>
						
					</ul>
					<!-- /.sub-menu js__content -->
				</li> --%>
				
				<%-- <li>
					<a class="waves-effect" href="widgets.html"><i class="menu-icon  ti-clipboard"></i><span>Manage Report</span></a>
				</li> --%>
				<li>
					<a class="waves-effect parent-item js__control" href="#"><i class="menu-icon ti-headphone-alt"></i><span>Manage Complain</span><span class="menu-arrow fa fa-angle-down"></span></a>
					<ul class="sub-menu js__content">
						<li><a href="loadComplain">Add Complain</a></li>
						<li><a href="viewUserComplain">View Complain</a></li>
						
					</ul>
					<!-- /.sub-menu js__content -->
				</li>
				<li>
					<a class="waves-effect parent-item js__control" href="#"><i class="menu-icon ti-face-smile"></i><span>Manage feedback</span><span class="menu-arrow fa fa-angle-down"></span></a>
					<ul class="sub-menu js__content">
						<li><a href="loadFeedback">Add Feedback</a></li>
						
					</ul>
					<!-- /.sub-menu js__content -->
				</li>
				
			</ul>
			<!-- /.menu js__accordion -->
		</div>
		<!-- /.navigation -->
	</div>
	<!-- /.content -->
</div>