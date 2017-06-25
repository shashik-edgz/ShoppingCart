/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
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
@WebServlet(urlPatterns = {"/cartCheck"})
public class cartCheck extends HttpServlet {

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
            out.println("<title>Servlet cartCheck</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet cartCheck at " + request.getContextPath() + "</h1>");
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
        List<cartEnp> list = new ArrayList<cartEnp>();

          PrintWriter out = response.getWriter();  
           HttpSession  session = request.getSession(false);
      if(session.getAttribute("id")==null){
      response.sendRedirect("login.jsp");
      }
         Integer id = (Integer) session.getAttribute("id");
        try {
               conModel con  = new conModel();
            Statement st =  con.connection.createStatement();
             ResultSet  rs =  st.executeQuery("SELECT products.title, products.price, products.image,cart.sale_id FROM cart INNER JOIN products ON products.id=cart.p_id WHERE cart.user_id="+id);
             
              while(rs.next()) {
                    cartEnp cart = new cartEnp();
                    cart.setpName(rs.getString("title"));
                    cart.setPrice(rs.getDouble("price"));
                    cart.setImg(rs.getString("image"));
                    cart.setSaleNo(rs.getInt("sale_id"));

                    list.add(cart);
                }

        
            request.setAttribute("list",list);

        RequestDispatcher rd= request.getRequestDispatcher("checkout.jsp");
            rd.forward(request, response);
        
            rs.close();
         con.connection.close();
                 

			
        } catch (Exception e) {
        out.print(e);
        }
        
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
