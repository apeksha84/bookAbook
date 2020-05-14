<%-- 
    Document   : index
    Created on : 3 Oct, 2019, 3:40:03 PM
    Author     : Apeksha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book A Book</title>
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <div class="container">
            
            
            <img src="images/img3.png">
            <img src="images/img1.png">
            
          <div class="jumbotron">
            <h1 class="display-4">Welcome <% if(session.getAttribute("userid")!=null){ %> <%=fname%> <%}%> to bookAbook</h1>
            
            <p class="lead">Read what you love,Love what you read</p>
            <hr class="my-4">
                       <a class="btn btn-primary btn-lg" href="buybook.jsp" role="button">Buy Book</a>
            <a class="btn btn-primary btn-lg" href="sellbook.jsp" role="button">Sell Book</a>
          </div>
            
            
            
        </div>
    </body>
</html>
