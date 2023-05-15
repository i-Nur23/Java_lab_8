<%
  String sum = request.getParameter("total");
  String[] elements = request.getParameterValues("element");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Три</title>
</head>
<body>
<h1>Результат: </h1>
<ul>
  <%
    for (var element : elements){%>
    <li><%=element%></li>
  <%}%>
</ul>
<hr/>
<p>Сумма: <%=sum%></p>
<button onclick="back()">
  Заново
</button>
</body>
<script>
  const back = () => {
    window.location.href='main.jsp'
  }
</script>
</html>
