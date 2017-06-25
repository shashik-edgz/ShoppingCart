<%-- 
    Document   : account
    Created on : Apr 15, 2017, 2:49:16 PM
    Author     : Shashi DIV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
       <jsp:include page="components/header.jsp" />  

    <body>
        <jsp:include page="components/menu.jsp" /> 
        <!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Account</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
        
        <div class="register">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Account </h3>
                         
			<p class="est animated wow zoomIn" data-wow-delay=".5s"></p>
			<div class="login-form-grids">
				<h5 class="animated wow slideInUp" data-wow-delay=".5s">Shipping information</h5>
                                <form class="animated wow slideInUp" data-wow-delay=".5s" action="account" method="POST">
                                    
					<input name="address1" type="text" placeholder="Address Line1" required=" " >
                                        <input name="address2" type="text" placeholder="Address Line2" required=" " >
                                        <input name="state_Province" type="text" placeholder="State/Province" required=" " >
                                        <input name="city" type="text" placeholder="City" required=" " >
                                        <input name="zip" type="text" placeholder="Zip/Postel Code" required=" " >
                                        <input name="phone" type="text" placeholder="Phone Number" required=" " >
				
					
					<input type="submit" value="Submit">
				</form>
			</div>
                        
			
		</div>
	</div>
        
        <jsp:include page="components/footer.jsp" />  

    </body>
</html>
