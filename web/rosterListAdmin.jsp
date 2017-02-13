<%@ page import="edu.nvcc.csc.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Clue
  Date: 2/8/2017
  Time: 2:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>The Admin Roster List</title>
</head>
<body>
<%
    List<Student> roster = (List<Student>) session.getAttribute("theRoster");
%>

<table border="2">
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
    </tr>
        <% for(int i = 0; i < roster.size(); i++) { %>
    <tr>
        <td><% out.print(roster.get(i).getFirstName());%></td>
        <td><% out.print(roster.get(i).getLastName());%></td>
        <td><% out.print(roster.get(i).getEmail());%></td>
    </tr> <% } %>
    <a href="questionAdd.jsp">Click here to add a question</a><br>
    <a href="questionList.jsp">Click here to see current question list</a><br>
    <a href="signup.jsp">Click here to register a student</a><br>
    <a href="email.jsp">Click here to email this week's assignments</a><br><br>

</body>
</html>