/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.Admin;

import Model.Account;
import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author HP
 */
public class customermanager extends HttpServlet {

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
        HttpSession session = request.getSession();
        Account user = (Account) session.getAttribute("user");
        String action = request.getParameter("action");
        if (user==null||user.isIsAdmin()) {
            if (action == null) {
                UserDAO udao = new UserDAO();
                List<Account> user1 = udao.getAllUser();
                request.setAttribute("user", user1);
                request.getRequestDispatcher("View/Admin/customer.jsp").forward(request, response);
            } else {
                if (action.equals("updateUserRole")) {
                    String user_id = request.getParameter("id");
                    String isAdmin = request.getParameter("role");
                    int id = Integer.parseInt(user_id);
                    boolean role = false;
                    if(isAdmin.equals("Admin")){
                        role=true;
                    }
                    UserDAO dao = new UserDAO();
                    dao.setAdmin(id, role);
                    response.sendRedirect(request.getContextPath()+"/customermanager");
                }
                
                if(action.equals("deleteUser")){
                    String userId=request.getParameter("id");
                    try {
                        int id=Integer.parseInt(userId);
                        UserDAO dao = new UserDAO();
                        dao.deleteUser(id);
                        response.sendRedirect(request.getContextPath()+"/customermanager");
                    } catch (NumberFormatException e) {
                    }
                }
            }
        } else {
            response.sendRedirect("user?action=login");
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
        processRequest(request, response);
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
        processRequest(request, response);
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
