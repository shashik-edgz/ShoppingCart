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
@WebServlet(urlPatterns = {"/account"})
public class account extends HttpServlet {

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
            out.println("<title>Servlet account</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet account at " + request.getContextPath() + "</h1>");
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
        
        conModel con  = new conModel();
         Statement stms;
          PrintWriter out = response.getWriter();  
          
         HttpSession  session = request.getSession(false);
         Integer id = (Integer) session.getAttribute("id");
         String address1 = request.getParameter("address1");
         String address2 = request.getParameter("address2");
         String state_Province  = request.getParameter("state_Province");
         String city = request.getParameter("city");
         String zip = request.getParameter("zip");
        String phone = request.getParameter("phone");

       
         
         
        try {
       
         stms = con.connection.createStatement();
             String sql = "insert into shipping (id,address1,address2,state_Province,city,zip,phone) values ('"+id+"','"+address1+"','"+address2+"','"+state_Province+"','"+city+"','"+zip+"','"+phone+"')";
             stms.executeUpdate(sql);
             out.print("<div class=\"alert alert-success alert-dismissible\" role=\"alert\">\n" +
"  <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n" +
"  <strong>Submit Succesfully</strong> \n" +
"</div>");  
        RequestDispatcher rd=request.getRequestDispatcher("account.jsp");  
        rd.include(request, response); 
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
