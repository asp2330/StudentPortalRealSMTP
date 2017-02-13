<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Int" %>
<%@ page import="edu.nvcc.csc.Question" %><%--
  Created by IntelliJ IDEA.
  User: Clue
  Date: 2/8/2017
  Time: 5:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Setting the Questions</title>
</head>
<body>
<%!
    List<Question> questionList = new ArrayList<Question>();


%>

<%
    String questionBody = request.getParameter("questionBody");
    int questionNumber = questionList.size()+1;
    Question question = new Question(questionNumber, questionBody);
    questionList.add(question);
    session.setAttribute("theQuestions", questionList);


%>

<% out.print("Question number "+questionNumber+" added to list of questions"); %>

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
    <a href="questionAdd.jsp">>back to add question</a><br>
    <a href="adminPage.jsp">>back to Admin Page</</a>

</body>
</html>
