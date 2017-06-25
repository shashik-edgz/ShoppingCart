
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.io.PrintWriter"%>

<!DOCTYPE html>
<html>
   
   <jsp:include page="components/header.jsp" />  
    
    <body>
         <jsp:include page="components/menu.jsp" /> 
           <%! double total ; %> 
     <% 
    
             session = request.getSession(false);
      if(session.getAttribute("id")==null){
      response.sendRedirect("login.jsp");
      }
         Integer id = (Integer) session.getAttribute("id");
        try { Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/shopping","root","biri");
               
            Statement st =  conn.createStatement();
          //  Statement st1 =  conn.createStatement();
            
            ResultSet  rs =  st.executeQuery("SELECT products.title, products.price, products.image,cart.sale_id FROM cart INNER JOIN products ON products.id=cart.p_id WHERE cart.user_id="+id);
     //  ResultSet sumrs = st.executeQuery("SELECT SUM(products.price) AS total FROM cart INNER JOIN products ON products.id=cart.p_id WHERE cart.user_id="+id);
 
%>
	
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Checkout Page</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- checkout -->
	<div class="checkout">
		<div class="container">
                
			<div class="checkout-right animated wow slideInUp" data-wow-delay=".5s">
				<table class="timetable_sub">
					<thead>
						<tr>
							<th>SL No.</th>	
							<th>Product</th>
							
							<th>Product Name</th>
							 
							<th>Price</th>
							<th>Remove</th>
						</tr>
					</thead>
                                        
                                   
                                        <!-- java -->
                                        
                                   
                                        <%! int count = 0; %> 
                                        <%  // total = sumrs.getDouble("total");
                                             
              while(rs.next()) { 
                                 count++;       %>
                                  
					<tr class="rem<%=count%>">
						<td class="invert"><%= rs.getString("sale_id") %></td>
						<td class="invert-image"><a href="single.html"><img src="<%= rs.getString("image") %>" alt=" " class="img-responsive" /></a></td>
						
						<td class="invert"><%= rs.getString("title") %></td>
						 
						<td class="invert">RS. <%= rs.getDouble("price") %></td>
						<td class="invert">
							<div class="rem">
								<div class="cls close<%=count%>"></div>
							</div>
							<script>$(document).ready(function(c) {
								$('.close<%=count%>').on('click', function(c){
									$('.rem<%=count%>').fadeOut('slow', function(c){
										$('.rem<%=count%>').remove();
									});
									});	  
								});
						   </script>
						</td>
					</tr>
                                        
                                        
                                        <%
                   
                }
   rs.close();
         conn.close();
		
        } catch (Exception e) {
        out.print(e);
        }
                                       
%>
					
								<!--quantity-->
									<script>
									$('.value-plus').on('click', function(){
										var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
										divUpd.text(newVal);
									});

									$('.value-minus').on('click', function(){
										var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
										if(newVal>=1) divUpd.text(newVal);
									});
									</script>
								<!--quantity-->
				</table>
			</div>
			<div class="checkout-left">	
                                <h3 class="animated wow slideInLeft" data-wow-delay=".5s">Your shopping cart contains: <span><%=count%></span></h3>
				<div class="checkout-left-basket animated wow slideInLeft" data-wow-delay=".5s">
					<h4>Continue to basket</h4>
					<ul>
						
                                            <li>Total <i>-</i> <span><%= total %></span></li>
					</ul>
				</div>
				<div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
					<a href="single.html"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Continue Shopping</a>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //checkout -->
<!-- footer -->
<jsp:include page="components/footer.jsp" />  

<!-- //footer -->
</body>
</html>