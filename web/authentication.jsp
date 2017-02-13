<%@ page import="edu.nvcc.csc.Student" %>
<%@ page import="edu.nvcc.csc.Authentication" %><%--
  Created by IntelliJ IDEA.
  User: tkanc
  Date: 2/1/2017
  Time: 5:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Authentication</title>
</head>
<body>
<%
    String uname = request.getParameter("username");
    String pw = request.getParameter("pw");
    if(Authentication.authen(uname,pw)) {
        response.sendRedirect("adminPage.jsp");

    } else {
        out.print("Incorrect Credentials !"); %>
        <br><a href="index.jsp">Click to go home</a><br>
    <%}%>


</body>
</html>
