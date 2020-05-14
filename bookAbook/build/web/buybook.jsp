<%-- 
    Document   : buybook.jsp
    Created on : 3 Oct, 2019, 4:04:12 PM
    Author     : Apeksha
--%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
    
    if(session.getAttribute("userid")==null){
        out.println("<script> alert('You have to login first !!'); window.location.href = 'index.jsp' ; </script>");
        
    }
        %>
        
        <%@ include file="header.jsp" %>
        
        
        <div class="container">
            <h1>Books</h1>
            <hr>
            
            <div class="row">
            <% 
            try{

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                java.sql.Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","root1234");
                String queryString = "select * from books where sellerid !='"+userid+"'";

                PreparedStatement pstatement = connection.prepareStatement(queryString);



                ResultSet rs=pstatement.executeQuery();
                
                while(rs.next()){
                %>
                <div class="col-lg-4">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body">
                          <h5 class="card-title"><%=rs.getString("title")%></h5>
                          
                          <h6 class="card-subtitle mb-2 text-muted"><%=rs.getString("status")%></h6>
                          
                          <p class="card-text"><%=rs.getString("price")%></p>
                          <% if(rs.getString("status").equals("sold")){
                          %>
                          <a href="" class="btn btn-secondary">Buy Now</a>
                          <%
                          }else{
                             %>
                          <a href="buy.jsp?id=<%=rs.getString("bookid")%>" class="btn btn-success">Buy Now</a>
                          <%

                            } %>
                          

                        </div>
                    </div>
                </div>
                
                
                <%
                }

            }catch(Exception ex){
            out.println(ex);
            }
            %>
            
            
            
            
            
            
         </div>
            
        </div>
        
    </body>
</html>
