<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html ng-app="pickApp">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Digital Photo Shop</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- Custom CSS -->
<link href="<c:url value="/resources/css/agency.css" />"
	rel="stylesheet">

<!--this is for Angular JS -->
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>

<!-- Custom Fonts -->

<link
	href="<c:url value="/resources/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css">

<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- jQuery -->
<script src="js/jquery.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<!-- Plugin JavaScript -->
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>


<script src="<c:url value="/resources/js/classie.js" />"></script>
<script src="<c:url value="/resources/js/cbpAnimatedHeader.js" />"></script>


<!-- Custom Theme JavaScript -->
<script src="<c:url value="/resources/js/agency.js" />"></script>

<script>
	function costController($scope) {
		$scope.quantity4Pc = 0;
		$scope.quantity4FourYSix = 0;
		$scope.quantity4FiveYSeven = 0;
		$scope.pc = 3.5;
		$scope.fourYSix = 4.5;
		$scope.fiveYSeven = 7.5;
	}
</script>

<script>
	var pickApp = angular.module('pickApp', []);
	pickApp.controller('NameCtrl', function($scope) {
		//$scope.pickName = 'Pick name is Optional from angualr ';
	});
</script>
</head>

<body id="page-top" class="index">
	<c:url value="/j_spring_security_logout" var="logoutUrl" />
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="#page-top"><img
					src="<c:url value="/resources/img/logo.png" />" height="50"
					width="250" alt="" align="top"></a>
			</div>
			<p class="text-right">
				<kbd> Welcome ${userName}! USER</kbd>
				<a class="page-scroll" href="<c:url value="/logout" />"><kbd>LOGOUT</kbd></a>
			</p>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li class="hidden"><a href="#page-top"></a></li>
					<li><a class="page-scroll">Welcome ${userName} !</a></li>
					<li><a class="page-scroll" href="#printRateList">Photo
							Prints</a></li>
					<li><a class="page-scroll" href="#services">Services</a></li>
					<li><a class="page-scroll" href="#uploadFile">Upload Photo</a></li>

					<li><a class="page-scroll" href="#portfolio">Portfolio</a></li>
					<li><a class="page-scroll" href="#about">About</a></li>
					<li><a class="page-scroll" href="#team">Print Quality</a></li>
					<li><a class="page-scroll" href="#contact">Contact</a></li>
					<%-- 			<li><a class="page-scroll" href="${logoutUrl}">Logout</a></li> --%>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<!-- Header -->
	<header>
		<div class="container">
			<div class="intro-text">
				<div class="intro-lead-in">Welcome To Our Online Digital Photo
					Studio!</div>
				<div class="intro-heading">PickMyClick.in</div>
				<a href="#services" class="page-scroll btn btn-xl">Tell Me More</a>
			</div>
		</div>
	</header>

 <section id="printRateList" class="bg-light-gray">
		<div ng-app="" ng-controller="costController">
			<script>
				function costController($scope) {
					$scope.quantity4Pc = 0;
					$scope.quantity4FourYSix = 0;
					$scope.quantity4FiveYSeven = 0;
					$scope.pc = 3.5;
					$scope.fourYSix = 4.5;
					$scope.fiveYSeven = 7.5;
				}
			</script>
				<table class="table-responsive">
					<thead>
						<tr>
							<th>Print Size</th>
							<th>Quantity</th>
							<th>Glossy Paper</th>
							<th>Matte</th>
							<th>Amount</th>
						</tr>
					</thead>
					<tbody>
						<tr class="info">
							<td>3.5x5 PC Size</td>

							<td><input type="number" min="0" 
								ng-model="quantity4Pc"></td>
							<td>Rs. 3.50</td>
							<td>Rs. 4.0</td>
							<td>Rs. {{(quantity4Pc*pc)}}</td>
						</tr>
						<tr class="danger">
							<td>4x6</td>
							<td><input type="number" min="0" 
								ng-model="quantity4FourYSix"></td>
							<td>Rs. 4.50</td>
							<td>Rs. 5.0</td>
							<td>Rs. {{ (quantity4FourYSix * fourYSix)}}</td>
						</tr>
						<tr class="info">
							<td>5x7</td>
							<td><input type="number" min="0" 
								ng-model="quantity4FiveYSeven"></td>
							<td>Rs. 7.50</td>
							<td>Rs. 8.50</td>
							<td>Rs. {{ (quantity4FiveYSeven * fiveYSeven)}}</td>
						</tr>
						<tr class="warning">
							<td>Total Amount (VAT,CST,Service Tax 2%)</td>
							<td></td>
							<td></td>
							<td></td>
							<td>Rs. {{ (quantity4Pc * pc) +(quantity4FourYSix *
								fourYSix)+(quantity4FiveYSeven * fiveYSeven)}}</td>
						</tr>


					</tbody>
				</table>
	</section>

	<section id="printRateList" class="bg-light-gray">
		<div class="table-responsive">
			<div ng-app="" ng-controller="costController">


				<table class="table">
					<thead>
						<tr>
							<th>Print Size</th>
							<th>Quantity</th>
							<th>Glossy Paper</th>
							<th>Matte</th>
							<th>Amount</th>
						</tr>
					</thead>
					<tbody>
						<tr class="info">
							<td>3.5x5 PC Size</td>

							<td><input type="number" min="0" class="col-lg-3"
								ng-model="quantity4Pc"></td>
							<td>Rs. 3.50</td>
							<td>Rs. 4.0</td>
							<td>Rs. {{(quantity4Pc*pc)}}</td>
						</tr>
						<tr class="danger">
							<td>4x6</td>
							<td><input type="number" min="0" class="col-lg-3"
								ng-model="quantity4FourYSix"></td>
							<td>Rs. 4.50</td>
							<td>Rs. 5.0</td>
							<td>Rs. {{ (quantity4FourYSix * fourYSix)}}</td>
						</tr>
						<tr class="info">
							<td>5x7</td>
							<td><input type="number" min="0" class="col-lg-3"
								ng-model="quantity4FiveYSeven"></td>
							<td>Rs. 7.50</td>
							<td>Rs. 8.50</td>
							<td>Rs. {{ (quantity4FiveYSeven * fiveYSeven)}}</td>
						</tr>
						<tr class="warning">
							<td>Total Amount (VAT,CST,Service Tax 2%)</td>
							<td></td>
							<td></td>
							<td></td>
							<td>Rs. {{ (quantity4Pc * pc) +(quantity4FourYSix *
								fourYSix)+(quantity4FiveYSeven * fiveYSeven)}}</td>
						</tr>


					</tbody>
				</table>

				<!-- 		<input id="input-700" name="kartik-input-700" type="file" multiple=true class="file-loading" data-upload-url="/site/file-upload" data-max-file-count="10">
		 -->

				<%-- <form id="fileupload" class="form-inline" action="<c:url value='/fileUploadIndex' />" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label class="sr-only" for="file">Pick to Upload :</label>
					<input type="file" name="file" class="btn btn-info" value="Pick to Upload">
				</div>
				<button type="submit" class="btn btn-info">Upload</button>
				</form>
				<p class="text-danger">${isUploadedMsg}</p>
			</div> --%>
			</div>
		</div>
	</section>
	<!-- Services Section -->
	<section id="services" class="bg-light-gray">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Services</h2>
					<h3 class="section-subheading text-muted">Lorem ipsum dolor
						sit amet consectetur.</h3>
				</div>
			</div>
			<div class="row text-center">
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fa fa-circle fa-stack-2x text-primary"></i> <i
						class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="service-heading">E-Commerce</h4>
					<p class="text-muted">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Minima maxime quam architecto quo inventore
						harum ex magni, dicta impedit.</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fa fa-circle fa-stack-2x text-primary"></i> <i
						class="fa fa-laptop fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="service-heading">Responsive Design</h4>
					<p class="text-muted">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Minima maxime quam architecto quo inventore
						harum ex magni, dicta impedit.</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fa fa-circle fa-stack-2x text-primary"></i> <i
						class="fa fa-lock fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="service-heading">Web Security</h4>
					<p class="text-muted">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Minima maxime quam architecto quo inventore
						harum ex magni, dicta impedit.</p>
				</div>
			</div>
		</div>
	</section>
	<!-- 	
	<div class="container">
			<div class="jumbotron">
				<h5>Order Details</h5>
				<p>This part Contains order Details</p>
				<p>This part Contains order Details</p>
				<p>This part Contains order Details</p>
				<p>This part Contains order Details</p>
				<p>This part Contains order Details</p>
				<p>This part Contains order Details</p>
			</div>
		</div> -->

	<section id="uploadFile" class="bg-darkest-gray">

		<%-- 	<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Please Upload your Pick's</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
				<form id="fileupload" class="form-inline"
				action="<c:url value='/fileUpload' />" method="post"
				enctype="multipart/form-data" novalidate>
						<!-- it show error related to Data  Binding -->
						<form:errors path="myFileUpload.*"/>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<input type="file" class="form-control" name="file"
										placeholder="Pick your Photo*" id="file" required
										data-validation-required-message="Please upload your Pick">
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Your Pick Name *" id="pickNameId" name="pickName"
										data-validation-required-message="Please enter your Pick Name(Optional).">
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<select class="form-control"
										id="pickSizeId" name="pickSize" required
										data-validation-required-message="Please enter Pick Size.">
										<option>PP</option>
										<option>PC</option>
										<option>4X6</option>
										<option>5X7</option>
										<option>8X10</option>
										</select>
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="quantity"
										placeholder="Quantity:*" id="quantityid" required
										data-validation-required-message="Please enter quantity">
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="paperType"
										placeholder="Paper:*" id="paperTypeId" required
										data-validation-required-message="Please enter Paper Type">
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<select class="form-control" name="paperType"
										 id="paperTypeId" required
										data-validation-required-message="Please enter Paper Type">
										<option>Glossy</option>
										<option>Matte</option>
									</select>
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<textarea class="form-control" name="specialInstraction"
										placeholder="Special Instruction:*" id="specialInstractionId" required
										data-validation-required-message="Please enter Special Instruction">
										</textarea>
									<p class="help-block text-danger"></p>
								</div>		
							</div>
							<div class="clearfix"></div>
							<div class="col-lg-12 text-center">
								<div id="success"></div>
								<button type="submit" class="btn btn-info">Upload</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	 --%>
		<div ng-controller="NameCtrl" class="jumbotron">
			<p class="text-danger">
				<form:errors path="myFileUpload1.pickName" />
			</p>
			<p class="text-danger">
				<form:errors path="myFileUpload1.pickSize" />
			</p>
			<p class="text-danger">
				<form:errors path="myFileUpload1.quantity" />
			</p>
			<p class="text-danger">
				<form:errors path="myFileUpload1.paperType" />
			</p>
			<p class="text-danger">
				<form:errors path="myFileUpload1.specialInstraction" />
			</p>
			<p class="text-danger">
				<form:errors path="myFileUpload1.shippingAddress.houseNo" />
			</p>

			<div class="table-responsive">
				<h2>Please Upload your Pick with Required informations</h2>
				<p class="text-danger">
					<form:errors path="myFileUpload1.*" />
				</p>

				<form name="myForm" id="fileupload" class="form-horizontal"
					action="<c:url value='/user/fileUpload' />" method="POST"
					enctype="multipart/form-data">
					<br>
					<div class="form-group">
						<label class="control-label col-sm-2" for="file">Pick to
							Upload :</label>
						<div class="col-sm-3">
							<p>
								<input type="file" name="file" class="btn btn-info"
									value="Pick to Upload" required>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="pickNameid">Pick
							Name :</label>
						<div class="col-sm-3">
							<input type="text" name="pickName" ng-model="pickName"
								placeholder="Pick Name is Optional" class="form-control"
								id="pickNameid">
						</div>
						<label class="control-label col-sm-2" for="pickSizeid">*Size
							:</label>
						<div class="col-sm-3">
							<select class="form-control" id="pickSizeid" name="pickSize">
								<option>PP</option>
								<option>PC</option>
								<option>4X6</option>
								<option>5X7</option>
								<option>8X10</option>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="quantityid">*Quantity:</label>
						<div class="col-sm-3">
							<input type="text" name="quantity" class="form-control"
								id="quantityid" placeholder="*Quantity is mandatory" required>
						</div>
						<label class="control-label col-sm-2" for="paperTypeid">Paper
							Type :</label>
						<div class="col-sm-3">
							<select class="form-control" id="paperTypeid" name="paperType">
								<option>Glossy</option>
								<option>Matte</option>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="specialInstractionid">Special
							Instraction:</label>
						<div class="col-sm-3">
							<textarea class="form-control" id="specialInstractionid"
								name="specialInstraction" placeholder="Optional">
				</textarea>
						</div>
					</div>
					<h3>Please fill Shipping Address</h3>
					<div class="form-group">
						<label class="control-label col-sm-2" for="houseNoId">*Flat/House/Door</label>
						<div class="col-sm-3">
							<input type="text" name="shippingAddress.houseNo"
								class="form-control" id="houseNoId"
								placeholder="Flat/House/Door No is mandatory" required>
						</div>

						<p class="text-danger">
							<form:errors path="myFileUpload.shippingAddress.houseNo" />
						</p>
						<label class="control-label col-sm-2" for="street1id">*Street
							line 2</label>
						<div class="col-sm-3">
							<input type="text" name="shippingAddress.street1"
								class="form-control" id="street1id"
								placeholder="Street line 2 is mandatory" required>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="cityid">*City</label>
						<div class="col-sm-3">
							<select class="form-control" id="cityid"
								name="shippingAddress.city">
								<option>Bangalore</option>
								<option>Delhi</option>
								<option>Pune</option>
								<option>Jhansi</option>
								<option>Noida</option>
							</select>
						</div>
						<label class="control-label col-sm-2" for="countryid">Country</label>
						<div class="col-sm-3">

							<select class="form-control" id="countryid"
								name="shippingAddress.country">
								<option>INDIA</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="pincodeid">*Pincode</label>
						<div class="col-sm-3">
							<input type="text" name="shippingAddress.pincode"
								class="form-control" id="pincodeid"
								placeholder="Pincode is mandatory" required>
						</div>
					</div>
					<br>
					<div class="form-group">
						<p class="text-center">
							<button type="submit" class="btn btn-info">Upload</button>
						</p>
					</div>
				</form>
			</div>

			<div>
				<table class="table table-condensed">
					<thead>
						<tr>
							<th>Pick Name</th>
							<th>Size</th>
							<th>Quantity</th>
							<th>Paper</th>
							<th>Special Instruction</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${myFileUpload1.pickName}</td>
							<td>${myFileUpload1.pickSize}</td>
							<td>${myFileUpload1.quantity}</td>
							<td>${myFileUpload1.paperType}</td>
							<td>${myFileUpload1.specialInstraction}</td>
						</tr>
					</tbody>
				</table>

				<table class="table table-condensed">
					<thead>
						<tr>
							<th>House No/Street 1</th>
							<th>Street2</th>
							<th>City</th>
							<th>Country</th>
							<th>Pincode</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${myFileUpload1.shippingAddress.houseNo}</td>
							<td>${myFileUpload1.shippingAddress.street1}</td>
							<td>${myFileUpload1.shippingAddress.city}</td>
							<td>${myFileUpload1.shippingAddress.country}</td>
							<td>${myFileUpload1.shippingAddress.pincode}</td>
						</tr>
					</tbody>
				</table>
			</div>


			<p class="text-danger">${isUploadedMsg}</p>
		</div>

	</section>
	<!-- Portfolio Grid Section -->
	<section id="portfolio" class="bg-darkest-gray">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Portfolio</h2>
					<h3 class="section-subheading text-muted">Lorem ipsum dolor
						sit amet consectetur.</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="#portfolioModal1" class="portfolio-link"
						data-toggle="modal">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img
						src="<c:url value="/resources/img/portfolio/roundicons.png" />"
						class="img-responsive" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Round Icons</h4>
						<p class="text-muted">Graphic Design</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="#portfolioModal2" class="portfolio-link"
						data-toggle="modal">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img
						src="<c:url value="/resources/img/portfolio/startup-framework.png" />"
						class="img-responsive" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Startup Framework</h4>
						<p class="text-muted">Website Design</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="#portfolioModal3" class="portfolio-link"
						data-toggle="modal">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img
						src="<c:url value="/resources/img/portfolio/treehouse.png" />"
						class="img-responsive" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Treehouse</h4>
						<p class="text-muted">Website Design</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="#portfolioModal4" class="portfolio-link"
						data-toggle="modal">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img src="<c:url value="/resources/img/portfolio/golden.png"/>"
						class="img-responsive" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Golden</h4>
						<p class="text-muted">Website Design</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="#portfolioModal5" class="portfolio-link"
						data-toggle="modal">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img src="<c:url value="/resources/img/portfolio/escape.png" />"
						class="img-responsive" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Escape</h4>
						<p class="text-muted">Website Design</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="#portfolioModal6" class="portfolio-link"
						data-toggle="modal">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img src="<c:url value="/resources/img/portfolio/dreams.png" />"
						class="img-responsive" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Dreams</h4>
						<p class="text-muted">Website Design</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- About Section -->
	<section id="about" class="bg-light-gray">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">About</h2>
					<h3 class="section-subheading text-muted">Lorem ipsum dolor
						sit amet consectetur.</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<ul class="timeline">
						<li>
							<div class="timeline-image">
								<img class="img-circle img-responsive"
									src="<c:url value="/resources/img/about/1.jpg" />" alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>2009-2011</h4>
									<h4 class="subheading">Our Humble Beginnings</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">Lorem ipsum dolor sit amet,
										consectetur adipisicing elit. Sunt ut voluptatum eius
										sapiente, totam reiciendis temporibus qui quibusdam,
										recusandae sit vero unde, sed, incidunt et ea quo dolore
										laudantium consectetur!</p>
								</div>
							</div>
						</li>
						<li class="timeline-inverted">
							<div class="timeline-image">
								<img class="img-circle img-responsive"
									src="<c:url value="/resources/img/about/2.jpg" />" alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>March 2011</h4>
									<h4 class="subheading">An Agency is Born</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">Lorem ipsum dolor sit amet,
										consectetur adipisicing elit. Sunt ut voluptatum eius
										sapiente, totam reiciendis temporibus qui quibusdam,
										recusandae sit vero unde, sed, incidunt et ea quo dolore
										laudantium consectetur!</p>
								</div>
							</div>
						</li>
						<li>
							<div class="timeline-image">
								<img class="img-circle img-responsive"
									src="<c:url value="/resources/img/about/3.jpg" />" alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>December 2012</h4>
									<h4 class="subheading">Transition to Full Service</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">Lorem ipsum dolor sit amet,
										consectetur adipisicing elit. Sunt ut voluptatum eius
										sapiente, totam reiciendis temporibus qui quibusdam,
										recusandae sit vero unde, sed, incidunt et ea quo dolore
										laudantium consectetur!</p>
								</div>
							</div>
						</li>
						<li class="timeline-inverted">
							<div class="timeline-image">
								<img class="img-circle img-responsive"
									src="<c:url value="/resources/img/about/4.jpg" />" alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>July 2014</h4>
									<h4 class="subheading">Phase Two Expansion</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">Lorem ipsum dolor sit amet,
										consectetur adipisicing elit. Sunt ut voluptatum eius
										sapiente, totam reiciendis temporibus qui quibusdam,
										recusandae sit vero unde, sed, incidunt et ea quo dolore
										laudantium consectetur!</p>
								</div>
							</div>
						</li>
						<li class="timeline-inverted">
							<div class="timeline-image">
								<h4>
									Be Part <br>Of Our <br>Story!
								</h4>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>

	<!-- Team Section -->
	<section id="team" class="bg-darkest-gray">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Our Amazing Team</h2>
					<h3 class="section-subheading text-muted">Lorem ipsum dolor
						sit amet consectetur.</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-4">
					<div class="team-member">
						<img src="<c:url value="/resources/img/team/1.jpg" />"
							class="img-responsive img-circle" alt="">
						<h4>Kay Garland</h4>
						<p class="text-muted">Lead Designer</p>
						<ul class="list-inline social-buttons">
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="team-member">
						<img src="<c:url value="/resources/img/team/2.jpg" />"
							class="img-responsive img-circle" alt="">
						<h4>Larry Parker</h4>
						<p class="text-muted">Lead Marketer</p>
						<ul class="list-inline social-buttons">
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="team-member">
						<img src="<c:url value="/resources/img/team/3.jpg" />"
							class="img-responsive img-circle" alt="">
						<h4>Diana Pertersen</h4>
						<p class="text-muted">Lead Developer</p>
						<ul class="list-inline social-buttons">
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<p class="large text-muted">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit. Aut eaque, laboriosam veritatis,
						quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p>
				</div>
			</div>
		</div>
	</section>

	<!-- Clients Aside -->
	<aside class="clients">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<a href="#"> <img
						src="<c:url value="/resources/img/logos/envato.jpg" />"
						class="img-responsive img-centered" alt="">
					</a>
				</div>
				<div class="col-md-3 col-sm-6">
					<a href="#"> <img
						src="<c:url value="/resources/img/logos/designmodo.jpg" />"
						class="img-responsive img-centered" alt="">
					</a>
				</div>
				<div class="col-md-3 col-sm-6">
					<a href="#"> <img
						src="<c:url value="/resources/img/logos/themeforest.jpg" />"
						class="img-responsive img-centered" alt="">
					</a>
				</div>
				<div class="col-md-3 col-sm-6">
					<a href="#"> <img
						src="<c:url value="/resources/img/logos/creative-market.jpg" />"
						class="img-responsive img-centered" alt="">
					</a>
				</div>
			</div>
		</div>
	</aside>

	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Contact Us</h2>
					<h3 class="section-subheading text-muted">Please write to us
						for any query and feedback.</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<form name="sentMessage" id="contactForm" novalidate>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Your Name *" id="name" required
										data-validation-required-message="Please enter your name.">
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<input type="email" class="form-control"
										placeholder="Your Email *" id="email" required
										data-validation-required-message="Please enter your email address.">
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<input type="tel" class="form-control"
										placeholder="Your Phone *" id="phone" required
										data-validation-required-message="Please enter your phone number.">
									<p class="help-block text-danger"></p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<textarea class="form-control" placeholder="Your Message *"
										id="message" required
										data-validation-required-message="Please enter a message."></textarea>
									<p class="help-block text-danger"></p>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="col-lg-12 text-center">
								<div id="success"></div>
								<button type="submit" class="btn btn-xl">Send Message</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<span class="copyright">Copyright &copy; Your Website
						2014-2015</span>
				</div>
				<div class="col-md-4">
					<ul class="list-inline social-buttons">
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
					</ul>
				</div>
				<div class="col-md-4">
					<ul class="list-inline quicklinks">
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Terms of Use</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>

	<!-- Portfolio Modals -->
	<!-- Use the modals below to showcase details about your portfolio projects! -->

	<!-- Portfolio Modal 1 -->
	<div class="portfolio-modal modal fade" id="portfolioModal1"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content">
			<div class="close-modal" data-dismiss="modal">
				<div class="lr">
					<div class="rl"></div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2">
						<div class="modal-body">
							<!-- Project Details Go Here -->
							<h2>Project Name</h2>
							<p class="item-intro text-muted">Lorem ipsum dolor sit amet
								consectetur.</p>
							<img class="img-responsive"
								src="<c:url value="/resources/img/portfolio/roundicons-free.png" />"
								alt="">
							<p>Use this area to describe your project. Lorem ipsum dolor
								sit amet, consectetur adipisicing elit. Est blanditiis dolorem
								culpa incidunt minus dignissimos deserunt repellat aperiam quasi
								sunt officia expedita beatae cupiditate, maiores repudiandae,
								nostrum, reiciendis facere nemo!</p>
							<p>
								<strong>Want these icons in this portfolio item sample?</strong>You
								can download 60 of them for free, courtesy of <a
									href="https://getdpd.com/cart/hoplink/18076?referrer=bvbo4kax5k8ogc">RoundIcons.com</a>,
								or you can purchase the 1500 icon set <a
									href="https://getdpd.com/cart/hoplink/18076?referrer=bvbo4kax5k8ogc">here</a>.
							</p>
							<ul class="list-inline">
								<li>Date: July 2014</li>
								<li>Client: Round Icons</li>
								<li>Category: Graphic Design</li>
							</ul>
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">
								<i class="fa fa-times"></i> Close Project
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 2 -->
	<div class="portfolio-modal modal fade" id="portfolioModal2"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content">
			<div class="close-modal" data-dismiss="modal">
				<div class="lr">
					<div class="rl"></div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2">
						<div class="modal-body">
							<h2>Project Heading</h2>
							<p class="item-intro text-muted">Lorem ipsum dolor sit amet
								consectetur.</p>
							<img class="img-responsive img-centered"
								src="<c:url value="/resources/img/portfolio/startup-framework-preview.png" />"
								alt="">
							<p>
								<a href="http://designmodo.com/startup/?u=787">Startup
									Framework</a> is a website builder for professionals. Startup
								Framework contains components and complex blocks (PSD+HTML
								Bootstrap themes and templates) which can easily be integrated
								into almost any design. All of these components are made in the
								same style, and can easily be integrated into projects, allowing
								you to create hundreds of solutions for your future projects.
							</p>
							<p>
								You can preview Startup Framework <a
									href="http://designmodo.com/startup/?u=787">here</a>.
							</p>
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">
								<i class="fa fa-times"></i> Close Project
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 3 -->
	<div class="portfolio-modal modal fade" id="portfolioModal3"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content">
			<div class="close-modal" data-dismiss="modal">
				<div class="lr">
					<div class="rl"></div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2">
						<div class="modal-body">
							<!-- Project Details Go Here -->
							<h2>Project Name</h2>
							<p class="item-intro text-muted">Lorem ipsum dolor sit amet
								consectetur.</p>
							<img class="img-responsive img-centered"
								src="<c:url value="/resources/img/portfolio/treehouse-preview.png" />"
								alt="">
							<p>
								Treehouse is a free PSD web template built by <a
									href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>.
								This is bright and spacious design perfect for people or startup
								companies looking to showcase their apps or other projects.
							</p>
							<p>
								You can download the PSD template in this portfolio sample item
								at <a
									href="http://freebiesxpress.com/gallery/treehouse-free-psd-web-template/">FreebiesXpress.com</a>.
							</p>
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">
								<i class="fa fa-times"></i> Close Project
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 4 -->
	<div class="portfolio-modal modal fade" id="portfolioModal4"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content">
			<div class="close-modal" data-dismiss="modal">
				<div class="lr">
					<div class="rl"></div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2">
						<div class="modal-body">
							<!-- Project Details Go Here -->
							<h2>Project Name</h2>
							<p class="item-intro text-muted">Lorem ipsum dolor sit amet
								consectetur.</p>
							<img class="img-responsive img-centered"
								src="<c:url value="/resources/img/portfolio/golden-preview.png" />"
								alt="">
							<p>
								Start Bootstrap's Agency theme is based on Golden, a free PSD
								website template built by <a
									href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>.
								Golden is a modern and clean one page web template that was made
								exclusively for Best PSD Freebies. This template has a great
								portfolio, timeline, and meet your team sections that can be
								easily modified to fit your needs.
							</p>
							<p>
								You can download the PSD template in this portfolio sample item
								at <a
									href="http://freebiesxpress.com/gallery/golden-free-one-page-web-template/">FreebiesXpress.com</a>.
							</p>
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">
								<i class="fa fa-times"></i> Close Project
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 5 -->
	<div class="portfolio-modal modal fade" id="portfolioModal5"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content">
			<div class="close-modal" data-dismiss="modal">
				<div class="lr">
					<div class="rl"></div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2">
						<div class="modal-body">
							<!-- Project Details Go Here -->
							<h2>Project Name</h2>
							<p class="item-intro text-muted">Lorem ipsum dolor sit amet
								consectetur.</p>
							<img class="img-responsive img-centered"
								src="<c:url value="/resources/img/portfolio/escape-preview.png" />"
								alt="">
							<p>
								Escape is a free PSD web template built by <a
									href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>.
								Escape is a one page web template that was designed with
								agencies in mind. This template is ideal for those looking for a
								simple one page solution to describe your business and offer
								your services.
							</p>
							<p>
								You can download the PSD template in this portfolio sample item
								at <a
									href="http://freebiesxpress.com/gallery/escape-one-page-psd-web-template/">FreebiesXpress.com</a>.
							</p>
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">
								<i class="fa fa-times"></i> Close Project
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 6 -->
	<div class="portfolio-modal modal fade" id="portfolioModal6"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content">
			<div class="close-modal" data-dismiss="modal">
				<div class="lr">
					<div class="rl"></div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2">
						<div class="modal-body">
							<!-- Project Details Go Here -->
							<h2>Project Name</h2>
							<p class="item-intro text-muted">Lorem ipsum dolor sit amet
								consectetur.</p>
							<img class="img-responsive img-centered"
								src="<c:url value="/resources/img/portfolio/dreams-preview.png" />"
								alt="">
							<p>
								Dreams is a free PSD web template built by <a
									href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>.
								Dreams is a modern one page web template designed for almost any
								purpose. It’s a beautiful template that’s designed with the
								Bootstrap framework in mind.
							</p>
							<p>
								You can download the PSD template in this portfolio sample item
								at <a
									href="http://freebiesxpress.com/gallery/dreams-free-one-page-web-template/">FreebiesXpress.com</a>.
							</p>
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">
								<i class="fa fa-times"></i> Close Project
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
