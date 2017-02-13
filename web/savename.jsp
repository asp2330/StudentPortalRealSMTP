<%--
  Created by IntelliJ IDEA.
  User: tkanchanawanchai6403
  Date: 1/31/2017
  Time: 3:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="edu.nvcc.csc.Student" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Savename</title>
</head>
<body>
<%!
    List<Student> studentList = new ArrayList<Student>();
%>
<h1>You have signed up for emailing service!</h1>
<%
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String email = request.getParameter("email");
    Student student = new Student(firstName,lastName,email);
    studentList.add(student);
    session.setAttribute("theRoster", studentList);
    out.print("You registered as " + student + " <br/>");
%>

<br>
<a href="rosterList.jsp"><h2>Roster List</h2></a>



</body>
</html>

