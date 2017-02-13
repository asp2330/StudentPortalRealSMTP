<%--
  Created by IntelliJ IDEA.
  User: Clue
  Date: 2/8/2017
  Time: 6:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add question</title>
</head>
<body>
<form method="post" action="questionSave.jsp">
    Question Body <textarea rows="5" cols="50" type="text" name="questionBody"></textarea> <br/>
    <input type="submit"/>
</form>

<form method="post" action="questionSave2.jsp">
    Question Body <textarea rows="5" cols="50" type="text" name="questionBodyChange"></textarea> <br/>
    Change Question Number<input type="number" name="questionNumberChange"/><br/>
    <input type="submit"/>
</form>
<br><br><br>
<a href="questionList.jsp">List of current question list</a><br>
<a href="adminPage.jsp">Back to Admin Page</a>



</body>
</html>

