/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Shashi DIV
 */
@WebServlet(urlPatterns = {"/cart"})
public class cart extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet cart</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet cart at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      HttpSession  session = request.getSession(false);
      if(session.getAttribute("id")==null){
      response.sendRedirect("login.jsp");
      }
         Integer id = (Integer) session.getAttribute("id");
         
         String p_id = request.getParameter("p_id");
      //   String qun = request.getParameter("qun");
       //  Integer qunI = Integer.parseInt(qun);
       
         conModel con  = new conModel();
         Statement stms;
          PrintWriter out = response.getWriter(); 
          try {
       
         stms = con.connection.createStatement();
             String sql = "insert into cart (p_id,user_id,qun) values ('"+p_id+"','"+id+"','8')";
             stms.executeUpdate(sql);
             out.printf("Added");
//             out.print("<div class=\"alert alert-success alert-dismissible\" role=\"alert\">\n" +
//"  <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n" +
//"  <strong>Account Create Succesfuly</strong> \n" +
//"</div>");  
//        RequestDispatcher rd=request.getRequestDispatcher("register.jsp");  
//        rd.include(request, response); 
             stms.close();
             con.connection.close();
          } catch (Exception e) {
      System.err.println( e.getClass().getName() + ": " + e.getMessage() );
      System.exit(0);
        
        
    }
          
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
