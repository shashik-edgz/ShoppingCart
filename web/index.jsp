
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
<jsp:include page="components/header.jsp" />  
<body>
<!-- header -->
	<jsp:include page="components/menu.jsp" />
<!-- //header -->
<!-- banner -->
<!--	<div class="banner">
		<div class="container">
			<div class="banner-info animated wow zoomIn" data-wow-delay=".5s">
				<h3>Free Online Shopping</h3>
				<h4>Up to <span>50% <i>Off/-</i></span></h4>
				<div class="wmuSlider example1">
					<div class="wmuSliderWrapper">
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="banner-info1">
									<p>T-Shirts + Formal Pants + Jewellery + Cosmetics</p>
								</div>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="banner-info1">
									<p>Toys + Furniture + Lighting + Watches</p>
								</div>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="banner-info1">
									<p>Tops + Books & Media + Sports</p>
								</div>
							</div>
						</article>
					</div>
				</div>
					<script src="js/jquery.wmuSlider.js"></script> 
					<script>
						$('.example1').wmuSlider();         
					</script> 
			</div>
		</div>
	</div>
	-->
<!-- //banner -->
<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container"> 
			<div class="banner-bottom-grids">
				<div class="banner-bottom-grid-left animated wow slideInLeft" data-wow-delay=".5s">
					<div class="grid">
						<figure class="effect-julia">
							<img src="images/4.jpg" alt=" " class="img-responsive" />
							<figcaption>
								<h3>NSBM <span>Shopping</span><i> Shop anywhere</i></h3>
								<div>
									<p>Sit and Search </p>
									<p>What Do you want </p>
									<p>Yes !!! We  have it</p>
								</div>
							</figcaption>			
						</figure>
					</div>
				</div>
				<div class="banner-bottom-grid-left1 animated wow slideInUp" data-wow-delay=".5s">
					<div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
						<div class="banner-bottom-grid-left-grid1">
							<img src="images/1.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="banner-bottom-grid-left1-pos">
							<p>Awurudu Discount </p>
						</div>
					</div>
					<div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
						<div class="banner-bottom-grid-left-grid1">
							<img src="images/2.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="banner-bottom-grid-left1-position">
							<div class="banner-bottom-grid-left1-pos1">
								<p>Latest New Collections</p>
							</div>
						</div>
					</div>
				</div>
				<div class="banner-bottom-grid-right animated wow slideInRight" data-wow-delay=".5s">
					<div class="banner-bottom-grid-left-grid grid-left-grid1">
						<div class="banner-bottom-grid-left-grid1">
							<img src="images/3.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="grid-left-grid1-pos">
							<p>top and classic designs <span>2017 Collection</span></p>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //banner-bottom -->


<% 
    
         
        try { Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/shopping","root","biri");
               
            Statement st =  conn.createStatement();
       
            
            ResultSet  rs =  st.executeQuery("select * from products");
 
%>









<!-- collections -->
	<div class="new-collections">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">New Collections</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia 
				deserunt mollit anim id est laborum.</p>
			<div class="new-collections-grids">
                            
                            
                            <%  // total = sumrs.getDouble("total");
                                             
              while(rs.next()) { 
                                       %>
				<div class="col-md-3 new-collections-grid">
					<div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
						<div class="new-collections-grid1-image">
							<a href="single.html" class="product-image"><img src="images/7.jpg" alt=" " class="img-responsive" /></a>
							<div class="new-collections-grid1-image-pos">
								<a href="single.jsp?product=<%= rs.getString("id")%>">Quick View</a>
							</div>
							<div class="new-collections-grid1-right">
								<div class="rating">
									<div class="rating-left">
										<img src="<%= rs.getString("image")%>" alt=" " class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="<%= rs.getString("image")%>" alt=" " class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="<%= rs.getString("image")%>" alt=" " class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="images/1.png" alt=" " class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="images/1.png" alt=" " class="img-responsive" />
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</div>
						<h4><a href="single.jsp?product=<%= rs.getString("id")%>"><%= rs.getString("title")%></a></h4>
						
						<div class="new-collections-grid1-left simpleCart_shelfItem">
							<p><span class="item_price"><%= rs.getString("price")%></span></p>
						</div>
					</div>
					
				</div>
                            
				 <%
                   
                }
   rs.close();
         conn.close();
		
        } catch (Exception e) {
        out.print(e);
        }
                                       
%>
				
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //collections -->

<!-- collections-bottom -->
	<div class="collections-bottom">
		<div class="container">
			<div class="collections-bottom-grids">
				<div class="collections-bottom-grid animated wow slideInLeft" data-wow-delay=".5s">
					<h3>45% Offer For <span>Women & Children's</span></h3>
				</div>
			</div>
			<div class="newsletter animated wow slideInUp" data-wow-delay=".5s">
				<h3>Newsletter</h3>
				<p>Join us now to get all news and special offers.</p>
				<form>
					<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
					<input type="email" value="Enter your email address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your email address';}" required="">
					<input type="submit" value="Join Us" >
				</form>
			</div>
		</div>
	</div>
<!-- //collections-bottom -->
<!-- footer -->
	<jsp:include page="components/footer.jsp" />  

<!-- //footer -->
</body>
</html>