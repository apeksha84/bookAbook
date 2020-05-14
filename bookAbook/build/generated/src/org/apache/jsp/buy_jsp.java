package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.util.*;
import javax.sql.*;
import java.io.*;
import java.util.*;

public final class buy_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

String sql1,sql2,sql3,sql4,bookid,booktitle,sellerid,buyerid,sellerphone,buyerphone,selleremail,buyeremail,price;
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("        \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("     ");
      out.write("\n");
      out.write("    \n");
      out.write("    ");

    
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


    
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("        <h1>Book request sent</h1>\n");
      out.write("        <hr>\n");
      out.write("    \n");
      out.write("        \n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
