<%-- 
    Document   : login.jsp
    Created on : 4 Oct, 2019, 2:00:25 PM
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
        <title>Signup</title>
        <link rel="stylesheet" href="css/style.css">
            </head>
    <body style="background-color:#132548;">
       <%@ include file="header.jsp" %>  
        
       
       <%
    if(session.getAttribute("userid")!=null){
    response.sendRedirect("index.jsp");
    }
String userid=request.getParameter("userid");
String pass=request.getParameter("pass");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String queryString;
PreparedStatement pstatement = null;

System.out.println(userid);

if(userid!=null && pass!=null){
    
try{

Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","root1234");

queryString = "INSERT INTO users (userid, fname, lname, email, phone, password) values (?, ?, ?, ?, ?, ?)";

pstatement = conn.prepareStatement(queryString);

                    pstatement.setString(1, userid);
                    pstatement.setString(2, fname);
                    pstatement.setString(3, lname);
                    pstatement.setString(4, email);
                    pstatement.setString(5, phone);
                    pstatement.setString(6, pass);

int returnedRows=pstatement.executeUpdate();


        if(returnedRows > 0)
        {
            out.println("<script>alert('Successfully registered');</script>");
            
        }
        else{
        out.println("<script>alert('SNot registered');</script>");
        }
conn.close();

}
catch(Exception ex){
out.println(ex);
}
}


%>
       
       
       
       
       
        
        
        <div class="box">
<form action="signup.jsp" method="post">
<input type="text" name="fname" placeholder="First Name" oninput="inputOn()" required class="input1"/><br><br>
<input type="text" name="lname" placeholder="Last Name" oninput="inputOn()" required class="input1"/><br><br>
<input type="email" name="email" placeholder="Email" oninput="inputOn()" required class="input1"/><br><br>
<input type="text" name="phone" placeholder="Mobile No" oninput="inputOn()" required class="input1"/><br><br>

<input type="text" name="userid" placeholder="User Name" oninput="inputOn()" required class="input1"/><br><br>
<input type="password" name="pass" placeholder="Password" oninput="inputOn()" required class="input1"/><br><br>
<input type="submit" class="button2"/>
</form>
<div id="snackbar">hello</div>
</div>
    </body>
</html>
