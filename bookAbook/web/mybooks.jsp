<%-- 
    Document   : mybooks
    Created on : 6 Oct, 2019, 9:56:56 PM
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
        <h1>My Books</h1>
        <hr>
        <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Book ID</th>
      <th scope="col">Title</th>
      <th scope="col">Author</th>
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
                String queryString = "select * from books where sellerid = '"+userid+"'";

                PreparedStatement pstatement = connection.prepareStatement(queryString);



                ResultSet rs=pstatement.executeQuery();
                int index = 1;
                while(rs.next()){
                %>
    <tr>
      <th scope="row"><%=index%></th>
      <td><%=rs.getString("bookid")%></td>
      <td><%=rs.getString("title")%></td>
      <td><%=rs.getString("author")%></td>
      <td><%=rs.getString("price")%></td>
      <% 
      if(rs.getString("status").toString().equals("sold")){
      %>
      <td><a class="btn btn-secondary" href="changestatus.jsp?id=<%=rs.getString("bookid")%>"><%=rs.getString("status")%> | change</a></td>
      <%
      }else{
      %>
      <td><a class="btn btn-success" href="changestatus.jsp?id=<%=rs.getString("bookid")%>"><%=rs.getString("status")%> | change</a></td>
      <%

      }
      %>
      <td><a class="btn btn-danger" href="deletebook.jsp?id=<%=rs.getString("bookid")%>">Delete</a></td>
      
      
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
    </body>
</html>
