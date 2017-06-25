
<html>
   <jsp:include page="components/header.jsp" />  
    
    <body>
         <jsp:include page="components/menu.jsp" /> 
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Login Page</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- login -->
	<div class="login">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Login Form</h3>
			
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
                            <form action="userLogin" method="POST">
                                <input name="username" type="text" placeholder="username" required=" " >
                                <input name="password" type="password" placeholder="Password" required=" " >
					
					<input type="submit" value="Login">
				</form>
			</div>
			<h4 class="animated wow slideInUp" data-wow-delay=".5s">For New People</h4>
			<p class="animated wow slideInUp" data-wow-delay=".5s"><a href="register.jsp">Register Here</a> (Or) go back to <a href="index.html">Home<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></p>
		</div>
	</div>
<!-- //login -->

<jsp:include page="components/footer.jsp" />  

</body>
</html>