<%-- 
    Document   : buy
    Created on : 6 Oct, 2019, 11:31:34 PM
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
    
     <%!String sql1,sql2,sql3,sql4,bookid,booktitle,sellerid,buyerid,sellerphone,buyerphone,selleremail,buyeremail,price;%>
    
    <%
    
    String id=request.getParameter("id");
    bookid = id;
    buyerid = session.getAttribute("userid").toString();
    buyerphone = session.getAttribute("phone").toString();
    buyeremail = session.getAttribute("email").toString();


                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","root1234");
                    
                    
                    
                    
                    sql1 = "select * from books where bookid ='"+id+"'";
                    PreparedStatement statement1 = conn.prepareStatement(sql1);
                    ResultSet rs=statement1.executeQuery();
                    if(rs.next())
                    {
                        
                        price = rs.getString("price");
                        sellerid = rs.getString("sellerid");
                        booktitle = rs.getString("title");
                    
                    
                    }
                    
                    
                    sql2 = "select * from users where userid ='"+sellerid+"'";
                    PreparedStatement statement2 = conn.prepareStatement(sql2);
                    ResultSet rs2=statement2.executeQuery();
                    if(rs2.next())
                    {
                        
                        sellerphone = rs2.getString("phone");
                        selleremail = rs2.getString("email");
                    
                    
                    }
                    
                    
                    sql3 = "insert into orders(bookid,price,buyerid,sellerid,sellerphone,buyerphone,buyeremail,selleremail,status,booktitle) values(?,?,?,?,?,?,?,?,?,?)";
                    PreparedStatement statement3 = conn.prepareStatement(sql3);
                    
                    statement3.setString(1, bookid);
                    statement3.setString(2, price);
                    statement3.setString(3, buyerid);
                    statement3.setString(4, sellerid);
                    statement3.setString(5, sellerphone);
                    statement3.setString(6, buyerphone);
                    statement3.setString(7, buyeremail);
                    statement3.setString(8, selleremail);
                    statement3.setString(9, "pending");
                    statement3.setString(10, booktitle);
                    
                    
                    int i=statement3.executeUpdate();
                    
                    
                    
                    session.setAttribute("message","Buy Request sent. Wait for the approval of seller.");
                    response.sendRedirect("dashboard.jsp");
                    
                    
                    
                    
                    conn.close();


    %>
    <body>
        <div class="container">
        <h1>Book request sent</h1>
        <hr>
    
        
        </div>
    </body>
</html>
