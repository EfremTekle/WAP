<%@ page import="lab.quizzes.model.entities.Quiz" %><%--
  Created by IntelliJ IDEA.
  User: pogoromuald
  Date: 2019-08-07
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0074)http://mumstudents.org/cs472/2018-09-RS/Homework/2/resources/skeleton.html -->
<html lang="en">

<head>

  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
  <style>
    <%@ include file="/acces/style.css" %>
  </style>
  <title>Clean Screen Lab</title>
  <link href="<%=request.getContextPath()%>/acces/style.css" type="text/css" rel="stylesheet">
</head>
<%
  HttpSession ses = request.getSession(false);
  Object[][] tQuiz = (Object[][]) ses.getAttribute("tQuiz");
  Integer curQ = (Integer) ses.getAttribute("numQuiz");
  System.out.println("current Quiz : "+curQ);
  Quiz quiz = (Quiz)tQuiz[curQ][0];
%>
<body class="grid-container">
<div class="item1">Week 3 Lab Assignment 4 : Quiz
  By <%=(String) ses.getAttribute("firstName") + " " + (String) ses.getAttribute("lastName")%>
</div>

<div class="item2">
  <span>Quizzes : </span>
  <ul>
    <% String output = "";
      int score=0;
      for (int i = 0; i < tQuiz.length; i++) {
        Integer j = (Integer) tQuiz[i][1];
        String css = "";
        String pass = "";
        if (j == 1) {
          css = "quizPass";
          pass = " : Good";
          score++;
        }
        if (j == 2) {
          css = "quizFail";
          pass = " : Wrong";
        }
        output += "<li class=" + css + ">Q[" + (i + 1) + "] " + pass + "</li>";
      }
    %>
    <%=output %>

  </ul>
</div>
<div class="item4">
  <span>Here is your Score : <span><%=score+"/"+(tQuiz.length-1)%></span></span>
</div>
<!--<div class="item3"></div>-->
<div class="item6">

</div>

</body>

</html>
