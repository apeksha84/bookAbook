
    
    
    
    
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script> 

<%! String userid,fname,lname,email,phone;%>
<% 

if(session.getAttribute("userid")!=null){

    userid = session.getAttribute("userid").toString();
    fname = session.getAttribute("fname").toString();
    lname = session.getAttribute("lname").toString();
    email = session.getAttribute("email").toString();
    phone = session.getAttribute("phone").toString();
}

%>





<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="index.jsp"><img height="50px;" src="images/logo.png"> bookAbook</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="buybook.jsp">Buy Book</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="sellbook.jsp">Sell Book</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="mybooks.jsp">My Books</a>
      </li>
      
      
    </ul>
      
      
      <ul class="nav navbar-nav navbar-right">
          
          
          <% 
          if(session.getAttribute("userid") != null)
          {
          %>
          
          <li class="nav-item">
        <a class="nav-link" href="dashboard.jsp">Dashboard</a>
      </li>
          
          <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <%=session.getAttribute("fname")%> <%=session.getAttribute("lname")%>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Profile</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="logout.jsp">Logout</a>
        </div>
      </li>
      
      
      
      
      <%
      }else{
      %>
      
      
      
      <li class="nav-item">
        <a class="nav-link" href="login.jsp">Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="signup.jsp">Signup</a>
      </li>
      <% }
          %>
    </ul>
    
  </div>
</nav>