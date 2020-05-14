<%-- 
    Document   : login.jsp
    Created on : 4 Oct, 2019, 2:40:25 PM
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
        <title>Login</title>
        <link rel="stylesheet" href="css/style.css">
        
<%@ include file="header.jsp" %>  
    </head>
    <body style="background-color:#132548;">
        
        
        
        
                <%
    if(session.getAttribute("userid")!=null){
    response.sendRedirect("index.jsp");
    }
String userid=request.getParameter("userid");
String pass=request.getParameter("pass");
String queryString;
PreparedStatement pstatement = null;


if(userid!=null && pass!=null){
try{

Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","root1234");
queryString = "select * from users where userid='"+userid+"'";

pstatement = connection.prepareStatement(queryString);



ResultSet rs=pstatement.executeQuery();


if(rs.next())
{
        if(rs.getString("password").equals(pass))
            {
            out.println("welcome"+rs.getString("fname"));
            session.setAttribute("userid",userid);
            
            session.setAttribute("fname", rs.getString("fname"));
            session.setAttribute("lname", rs.getString("lname"));
            session.setAttribute("email", rs.getString("email"));
            session.setAttribute("phone", rs.getString("phone"));
            
            
            

            response.sendRedirect("index.jsp");
            }
            else
            {
                                      out.println("<div style=\"padding-top:80px\" class=\"container\"><div class=\"alert alert-danger fade in alert-dismissible\">\n" +
"  <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\n" +
"  <strong>Wrong Password!</strong> Try again.\n" +
"</div></div>");
            session.invalidate();
            // response.sendRedirect("login.html");
            }
}
else{
session.invalidate();
                                        out.println("<div style=\"padding-top:80px\" class=\"container\"><div class=\"alert alert-danger fade in alert-dismissible\">\n" +
"  <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>\n" +
"  <strong>Username is not Registered!</strong> Signup first.\n" +
"</div></div>");
  //out.println("<script>alert('Username is not registered');</script>");
}

connection.close();

}
catch(Exception ex){
out.println(ex);
}
}


%>
        
        <div class="box">
<form action="login.jsp" method="post">
<input type="text" required class="input1" id="uname" name="userid" placeholder="Username" oninput="inputOn()" onblur="checkUser()"/>
<br><br>
<input type="password" required class="input1" name="pass" placeholder="Password"/>
<br><br>
<input type="submit" value="Submit" class="button2" />
<h3 style="color:white;"> Not yet registered ? <a href="signup.jsp">Signup</a></h3>

</form>
<div id="snackbar">hello</div>
</div>
    </body>
</html>
