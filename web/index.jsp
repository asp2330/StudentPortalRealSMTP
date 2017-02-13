<%@ page import="edu.nvcc.csc.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>CSC200 Course Portal</title>
  </head>
  <body>
  <h1>Welcome to CSC200 Course Portal!</h1>

  <form method="post" action="authentication.jsp">
    Username<input type="text" name="username"/>
    Password<input type="password" name="pw"/>
    <input type="submit" value="submit"/>
  </form>
  <a href="signup.jsp">Signup Here</a><br>
  <a href="rosterList.jsp">Roster List</a>


  </body>
</html>
