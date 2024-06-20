/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Account;
import dal.UserDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
public class user extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String action = request.getParameter("action");

        if (action.equals("login")) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String rem = request.getParameter("rem");
            UserDAO dao = new UserDAO();

            Account user = dao.getUser(email, password);

            if (user == null) {
                request.setAttribute("errorMessage", "Tài khoản không tồn tại!");
                request.getRequestDispatcher("View/User/loginRegister.jsp").forward(request, response);
            } else {
                if (email.equals(user.getUser_email()) && password.equals(user.getUser_pass())) {
                    Cookie user_email = new Cookie("email", email);
                    Cookie pass = new Cookie("pass", password);
                    Cookie r = new Cookie("rem", rem);
                    request.getSession().setAttribute("user", user);
                    if (rem != null) {
                        user_email.setMaxAge(60 * 60 * 24);
                        pass.setMaxAge(60 * 60 * 24);
                        r.setMaxAge(60 * 60 * 24);
                    } else {
                        user_email.setMaxAge(0);
                        pass.setMaxAge(0);
                        r.setMaxAge(0);
                    }
                    response.addCookie(user_email);
                    response.addCookie(pass);
                    response.addCookie(r);
                    if (!user.isIsAdmin()) {

                        response.sendRedirect("View/User/Home.jsp");
                    } else {
                        response.sendRedirect("View/Admin/adminHome.jsp");
                    }
                } else {
                    request.setAttribute("errorMessage", "Tài khoản hoặc mật khẩu không đúng!");
                    request.getRequestDispatcher("View/User/loginRegister.jsp").forward(request, response);
                }
            }
        }

        if (action.equals("logout")) {
            request.getSession().removeAttribute("user");
            response.sendRedirect("View/User/Home.jsp");
        }
        if (action.equals("register")) {
            String regisEmail = request.getParameter("user_email");
            String pass = request.getParameter("password");
            String username = request.getParameter("username");

            UserDAO dao = new UserDAO();

            if (dao.checkEmailExisted(regisEmail)) {
                response.sendRedirect("View/User/loginRegister.jsp?emailTaken=true&regisEmail=" + regisEmail + "&regis=true");
            }else{
                Account account= new Account(0, username, regisEmail, pass,false);
                dao.addUser(account);
                response.sendRedirect("View/User/loginRegister.jsp?modalMess=Account created successfully! Please login");
            }
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
