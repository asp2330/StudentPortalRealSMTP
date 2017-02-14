<%@ page import="edu.nvcc.csc.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="edu.nvcc.csc.Question" %>
<%@ page import="edu.nvcc.csc.emailMethod" %><%--
  Created by IntelliJ IDEA.
  User: Clue
  Date: 2/8/2017
  Time: 9:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<Student> roster = (List<Student>) session.getAttribute("theRoster");
    List<Question> assignments = (List<Question>) session.getAttribute("theQuestions");
    int array[] = emailMethod.RNGNoDupe(assignments.size());
    String mailSmtpHost = "localhost";
%>

<%
    for (int i=0; i < roster.size(); i++)
    {
        String mailTo = roster.get(i).getEmail();
        String mailFrom = "Professor@gmail.com";
        String mailSubject = "This Week's Assignment";
        String mailText = "Here is your problem this week " + assignments.get(array[i]);

        emailMethod.sendEmail(mailTo, mailFrom, mailSubject, mailText, mailSmtpHost);
    }
%>
<br>This weeks assignments successfully sent.<br>
<a href="adminPage.jsp">Back to Admin Page</a>
</body>
</html>
