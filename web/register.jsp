
<!DOCTYPE html>
<html>
    <jsp:include page="components/header.jsp" />  
    
    <body>
         <jsp:include page="components/menu.jsp" /> 
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Register Page</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- register -->
	<div class="register">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Register Here</h3>
                         
			<p class="est animated wow zoomIn" data-wow-delay=".5s"></p>
			<div class="login-form-grids">
				<h5 class="animated wow slideInUp" data-wow-delay=".5s">profile information</h5>
                                <form class="animated wow slideInUp" data-wow-delay=".5s" action="register" method="POST">
					<input name="firstname" type="text" placeholder="First Name..." required=" " >
                                        <input name="lastname" type="text" placeholder="Last Name..." required=" " >
				
				
				<h6 class="animated wow slideInUp" data-wow-delay=".5s">Login information</h6>
				<input name="username" type="text" placeholder="user name" required=" " >
					<input name="email" type="email" placeholder="Email Address" required=" " >
                                        <input name="password" type="password" placeholder="Password" required=" " >
					
					<input type="submit" value="Register">
				</form>
			</div>
			<div class="register-home animated wow slideInUp" data-wow-delay=".5s">
				<a href="index.html">Home</a>
			</div>
		</div>
	</div>
<!-- //register -->
<!-- footer -->
<jsp:include page="components/footer.jsp" />  

<!-- //footer -->
</body>
</html>