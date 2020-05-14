/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author vallabh
 */
public class addbook extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession(); 
            
String bookid=request.getParameter("id");
String title=request.getParameter("title");
String author=request.getParameter("author");
String price=request.getParameter("price");


        try{
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","root1234");

                    
                    String sql = "INSERT INTO books (bookid, title, author, price, status, sellerid) values (?, ?, ?, ?, ?, ?)";
                    PreparedStatement statement = conn.prepareStatement(sql);
                    statement.setString(1, bookid);
                    statement.setString(2, title);
                    statement.setString(3, author);
                    statement.setString(4, price);
                    statement.setString(5, "available");
                    statement.setString(6, session.getAttribute("userid").toString());
                    
                    int row = statement.executeUpdate();
                    
                     if (row > 0)
                    {   
                        
                        RequestDispatcher rs = request.getRequestDispatcher("sellbook.jsp");
                        rs.forward(request, response);
                        out.println("<div style=\"padding-top:50px\" class=\"container\">New book added successfully !!!</div>");
                    
                    }else{
                         RequestDispatcher rs = request.getRequestDispatcher("sellbook.jsp");
                        rs.include(request, response);
                     out.println("<div style=\"padding-top:50px\" class=\"container\">Something went wrong !!!</div>");
                     
                     
                     }
                     
                     
                     conn.close();
                    
                    
                    
                    
             }catch(Exception e){
                 out.println(e);
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
