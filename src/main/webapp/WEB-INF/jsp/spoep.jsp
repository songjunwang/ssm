<%--
  Created by IntelliJ IDEA.
  User: wsj
  Date: 2016/8/16
  Time: 8:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false"%>
<%@ taglib prefix="wsj" uri="/my-tag" %>
<html>
<head>
    <title></title>
</head>
<body>
  <wsj:skipPageOrEvalPage/>
  <h4>欢迎访问我的主页</h4>

  <wsj:havePropertyTag url="http://localhost:8080/ssm/spoep" username="wsj" password="123"></wsj:havePropertyTag>
<br>
  <%
    String[] names = {"jone","jeck","pite"};
    request.setAttribute("names",names);
  %>
  <wsj:iteration items="${names}" var="name">
      ${name}
  </wsj:iteration>
</body>
</html>
