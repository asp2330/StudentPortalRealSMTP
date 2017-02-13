<%@ page import="edu.nvcc.csc.Question" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Clue
  Date: 2/8/2017
  Time: 7:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    List<Question> questionList = (List<Question>) session.getAttribute("theQuestions");

    String questionBodyChange = request.getParameter("questionBodyChange");
    int questionNumberChange = Integer.parseInt(request.getParameter("questionNumberChange"));
    Question questionAlt = new Question(questionNumberChange, questionBodyChange);
    questionList.set(questionNumberChange-1,questionAlt);
%>
<% out.print("Question number "+questionNumberChange+" has been updated "); %>

<table border="2">
    <tr>
        <th>Question Number</th>
        <th>Question</th>

    </tr>
        <% for(int i = 0; i < questionList.size(); i++) { %>
    <tr>
        <td><% out.print(questionList.get(i).getQuestionNumber());%></td>
        <td><% out.print(questionList.get(i).getQuestionBody());%></td>
    </tr>
        <% } %><br>
</body>
<a href="questionAdd.jsp">>back to add question</a><br>
<a href="adminPage.jsp">>back to Admin Page</</a>

</html>
