<%-- 
    Document   : approverequest
    Created on : 6 Oct, 2019, 11:15:50 PM
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
    
     <%!String sql1;%>
    
    <%
    
    String id=request.getParameter("id");
    

                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","root1234");
                    
                    
                    
                    
                    sql1 = "update orders set status = 'approved' where orderid ='"+id+"'";
                    
                    
                    PreparedStatement statement2 = conn.prepareStatement(sql1);
                    int i = statement2.executeUpdate();
                    session.setAttribute("message","Buy Request Approved.");
                    response.sendRedirect("dashboard.jsp");


    %>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
