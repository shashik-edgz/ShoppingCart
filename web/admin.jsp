<%-- 
    Document   : admin
    Created on : Apr 16, 2017, 9:11:09 PM
    Author     : Shashi DIV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <html>
<jsp:include page="components/header.jsp" /> 
<body>
<!-- header -->
         <jsp:include page="components/menu.jsp" /> 
         
         
         
         
                  <div class="register">
                        <div class="container">
                    <form method="post" action="adminAdd" encType="multipart/form-data">
                          <div class="form-group">
                            <label for="exampleInputEmail1">Product Name</label>
                            <input name="title" type="text" class="form-control" id="exampleInputEmail1" placeholder="NAME">
                          </div>
                         <div class="form-group">
                            <label for="exampleInputEmail1">Product ID</label>
                            <input name="id" type="text" class="form-control" id="exampleInputEmail1" placeholder="NAME">
                          </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Description </label>
                            <textarea name="description" class="form-control" rows="5" id="Description"></textarea>
                        </div>
                          <div class="form-group">
                            <label for="exampleInputPassword1">Price</label>
                            <input name="price" type="text" class="form-control" id="exampleInputPassword1" placeholder="Price">
                          </div>
                                                    
                                                    
                          <div class="form-group">
                            <label for="exampleInputFile">File input</label>
                             <input type="file" name="file" />
                            <p class="help-block">Product Image.</p>
                          </div>
                           
                          <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                            <h3>${requestScope["message"]}</h3>
		</div>
	</div>
         
         
         
         
         
         
         
         
         
     	<jsp:include page="components/footer.jsp" />  
    </body>
</html>
