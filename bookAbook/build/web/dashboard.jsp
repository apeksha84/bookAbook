<%-- 
    Document   : dashboard
    Created on : 6 Oct, 2019, 11:23:46 PM
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
    <body>
        
        <%
        
    
    if(session.getAttribute("userid")==null){
        out.println("<script> alert('You have to login first !!'); window.location.href = 'index.jsp' ; </script>");
        
    }
        %>
        
       
        
        
        
        <%@ include file="header.jsp" %>
        <div class="container" style="margin-top: 20px;">
            
            <% 
            if(session.getAttribute("message")!=null){
            out.println(session.getAttribute("message"));
            session.setAttribute("message", null);
            }
            
            %>
            
        <h1>Dashboard</h1>
        <hr>
        
        <div class="row">
            <div class="col-md">
                <h3>My Approved Orders</h3>
                
                <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Order ID</th>
      <th scope="col">Book</th>
      <th scope="col">Seller ID</th>
      <th scope="col">Phone</th>
      <th scope="col">Email</th>
      <th scope="col">Price</th>
      
    </tr>
  </thead>
  <tbody>
      <% 
            try{

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                java.sql.Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","root1234");
                String queryString = "select * from orders where buyerid = '"+userid+"' and status = 'approved'";

                PreparedStatement pstatement = connection.prepareStatement(queryString);



                ResultSet rs=pstatement.executeQuery();
                int index = 1;
                while(rs.next()){
                %>
    <tr>
      <th scope="row"><%=index%></th>
      <td><%=rs.getString("orderid")%></td>
      <td><%=rs.getString("booktitle")%></td>
      <td><%=rs.getString("sellerid")%></td>
      <td><%=rs.getString("sellerphone")%></td>
      <td><%=rs.getString("selleremail")%></td>
      <td><%=rs.getString("price")%></td>
      
      
      
      
      
    </tr>
      <%
            index++;
                }

            }catch(Exception ex){
            out.println(ex);
            }
            %>
    
  </tbody>
</table>
                
            </div>
            
            <div class="col-md">
                <h3>My Pending Request</h3>
                
                <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Order ID</th>
      <th scope="col">Book</th>
      <th scope="col">Price</th>
      <th scope="col">Status</th>
      <th scope="col" colspan="2">Option</th>
    </tr>
  </thead>
  <tbody>
      <% 
            try{

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                java.sql.Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","root1234");
                String queryString = "select * from orders where buyerid = '"+userid+"' and status != 'approved'";

                PreparedStatement pstatement = connection.prepareStatement(queryString);



                ResultSet rs=pstatement.executeQuery();
                int index = 1;
                while(rs.next()){
                %>
    <tr>
      <th scope="row"><%=index%></th>
      <td><%=rs.getString("orderid")%></td>
      <td><%=rs.getString("booktitle")%></td>
      <td><%=rs.getString("price")%></td>
      <td><%=rs.getString("status")%></td>
      <td><a class="btn btn-danger" href="deleterequest.jsp?id=<%=rs.getString("orderid")%>">Delete</a></td>
      
      
      
      
      
    </tr>
      <%
            index++;
                }

            }catch(Exception ex){
            out.println(ex);
            }
            %>
    
  </tbody>
</table>
                
            </div>
            
            <div class="col-md">
                <h3>Buyer Requests</h3>
                <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Order ID</th>
      <th scope="col">Book</th>
      <th scope="col">Price</th>
      <th scope="col">Buyer Id</th>
      <th scope="col">Phone</th>
      <th scope="col">Email</th>
      <th scope="col" colspan="2">Option</th>
    </tr>
  </thead>
  <tbody>
      <% 
            try{

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                java.sql.Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","root1234");
                String queryString = "select * from orders where sellerid = '"+userid+"' and status = 'pending'";

                PreparedStatement pstatement = connection.prepareStatement(queryString);



                ResultSet rs=pstatement.executeQuery();
                int index = 1;
                while(rs.next()){
                %>
    <tr>
      <th scope="row"><%=index%></th>
      <td><%=rs.getString("orderid")%></td>
      <td><%=rs.getString("booktitle")%></td>
      <td><%=rs.getString("price")%></td>
      <td><%=rs.getString("buyerid")%></td>
      <td><%=rs.getString("buyerphone")%></td>
      <td><%=rs.getString("buyeremail")%></td>
      <td><a class="btn btn-success" href="approverequest.jsp?id=<%=rs.getString("orderid")%>">Approve</a></td>
      <td><a class="btn btn-danger" href="declinerequest.jsp?id=<%=rs.getString("orderid")%>">Decline</a></td>
      
      
      
      
      
    </tr>
      <%
            index++;
                }

            }catch(Exception ex){
            out.println(ex);
            }
            %>
    
  </tbody>
</table>
            </div>
            
        </div>
    </body>
</html>
