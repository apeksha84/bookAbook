<%-- 
    Document   : changestatus
    Created on : 6 Oct, 2019, 10:55:30 PM
    Author     : Apeksha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    
    <%!String sql1,sql2;%>
    
    <%
    
    String id=request.getParameter("id");
    

                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","root1234");
                    
                    
                    
                    
                    sql1 = "select * from books where bookid ='"+id+"'";
                    PreparedStatement statement1 = conn.prepareStatement(sql1);
                    ResultSet rs=statement1.executeQuery();
                    if(rs.next())
                    {
                        if(rs.getString("status").toString().equals("sold")){
                            sql2 = "update books set status= 'available' where bookid = '"+id+"'";
                        }
                        else{
                            sql2 = "update books set status= 'sold' where bookid = '"+id+"'";
                        }
                    
                    PreparedStatement statement2 = conn.prepareStatement(sql2);
                    int i = statement2.executeUpdate();
                    
                    }
                    conn.close();
                    response.sendRedirect("mybooks.jsp");


    %>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
