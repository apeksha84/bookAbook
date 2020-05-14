<%-- 
    Document   : sellbook.jsp
    Created on : 3 Oct, 2019, 4:04:23 PM
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
           <h1>Sell book</h1>
           
           <div class="row">
               
               <div class="col-md-6">
                   
                   <form method="post" action="addbook">
  <div class="form-group">
    <label for="formGroupExampleInput">Book ID</label>
    <input type="text" class="form-control" name="id" id="formGroupExampleInput" placeholder="Enter Book ID">
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput2">Book Title</label>
    <input type="text" class="form-control" name="title" id="formGroupExampleInput2" placeholder="Enter the title">
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput2">Book Author</label>
    <input type="text" class="form-control" name="author" id="formGroupExampleInput2" placeholder="Enter the author">
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput2">Price</label>
    <input type="text" class="form-control" name="price" id="formGroupExampleInput2" placeholder="Enter the price">
  </div>                     
                       
  <button type="submit" class="btn btn-success">Submit</button>                     
                       
</form>
                   
               </div>
               
                <div class="col-md-6">
                   
               </div>
              
           </div>
               
           
       </div>
        
        
        
    </body>
</html>
