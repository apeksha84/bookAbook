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

public final class sellbook_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 String userid,fname,lname,email,phone;
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header.jsp");
  }

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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");

        
    
    if(session.getAttribute("userid")==null){
        out.println("<script> alert('You have to login first !!'); window.location.href = 'index.jsp' ; </script>");
        
    }
        
      out.write("\n");
      out.write("        \n");
      out.write("       \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script> \n");
      out.write("\n");
      out.write('\n');
 

if(session.getAttribute("userid")!=null){

    userid = session.getAttribute("userid").toString();
    fname = session.getAttribute("fname").toString();
    lname = session.getAttribute("lname").toString();
    email = session.getAttribute("email").toString();
    phone = session.getAttribute("phone").toString();
}


      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
      out.write("    <a class=\"navbar-brand\" href=\"index.jsp\"><img height=\"50px;\" src=\"images/logo.png\"> bookAbook</a>\n");
      out.write("  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("  </button>\n");
      out.write("\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("    <ul class=\"navbar-nav mr-auto\">\n");
      out.write("      <li class=\"nav-item active\">\n");
      out.write("        <a class=\"nav-link\" href=\"index.jsp\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"buybook.jsp\">Buy Book</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"sellbook.jsp\">Sell Book</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"mybooks.jsp\">My Books</a>\n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("    </ul>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("          \n");
      out.write("          \n");
      out.write("          ");
 
          if(session.getAttribute("userid") != null)
          {
          
      out.write("\n");
      out.write("          \n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"dashboard.jsp\">Dashboard</a>\n");
      out.write("      </li>\n");
      out.write("          \n");
      out.write("          <li class=\"nav-item dropdown\">\n");
      out.write("        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("            ");
      out.print(session.getAttribute("fname"));
      out.write(' ');
      out.print(session.getAttribute("lname"));
      out.write("\n");
      out.write("        </a>\n");
      out.write("        <div class=\"dropdown-menu dropdown-menu-right\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">Profile</a>\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">Another action</a>\n");
      out.write("          <div class=\"dropdown-divider\"></div>\n");
      out.write("          <a class=\"dropdown-item\" href=\"logout.jsp\">Logout</a>\n");
      out.write("        </div>\n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("      ");

      }else{
      
      out.write("\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"login.jsp\">Login</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"signup.jsp\">Signup</a>\n");
      out.write("      </li>\n");
      out.write("      ");
 }
          
      out.write("\n");
      out.write("    </ul>\n");
      out.write("    \n");
      out.write("  </div>\n");
      out.write("</nav>");
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("       <div class=\"container\">\n");
      out.write("           <h1>Sell book</h1>\n");
      out.write("           \n");
      out.write("           <div class=\"row\">\n");
      out.write("               \n");
      out.write("               <div class=\"col-md-6\">\n");
      out.write("                   \n");
      out.write("                   <form method=\"post\" action=\"addbook\">\n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <label for=\"formGroupExampleInput\">Book ID</label>\n");
      out.write("    <input type=\"text\" class=\"form-control\" name=\"id\" id=\"formGroupExampleInput\" placeholder=\"Enter Book ID\">\n");
      out.write("  </div>\n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <label for=\"formGroupExampleInput2\">Book Title</label>\n");
      out.write("    <input type=\"text\" class=\"form-control\" name=\"title\" id=\"formGroupExampleInput2\" placeholder=\"Enter the title\">\n");
      out.write("  </div>\n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <label for=\"formGroupExampleInput2\">Book Author</label>\n");
      out.write("    <input type=\"text\" class=\"form-control\" name=\"author\" id=\"formGroupExampleInput2\" placeholder=\"Enter the author\">\n");
      out.write("  </div>\n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <label for=\"formGroupExampleInput2\">Price</label>\n");
      out.write("    <input type=\"text\" class=\"form-control\" name=\"price\" id=\"formGroupExampleInput2\" placeholder=\"Enter the price\">\n");
      out.write("  </div>                     \n");
      out.write("                       \n");
      out.write("  <button type=\"submit\" class=\"btn btn-success\">Submit</button>                     \n");
      out.write("                       \n");
      out.write("</form>\n");
      out.write("                   \n");
      out.write("               </div>\n");
      out.write("               \n");
      out.write("                <div class=\"col-md-6\">\n");
      out.write("                   \n");
      out.write("               </div>\n");
      out.write("              \n");
      out.write("           </div>\n");
      out.write("               \n");
      out.write("           \n");
      out.write("       </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("form-grou");
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
