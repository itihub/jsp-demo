<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>表达式控制标签-out</title>
</head>
<body>

<%-- 使用out标签输出常量 --%>
<c:out value="常量"></c:out><br>

<%-- 使用out标签输出变量 --%>
<%
    session.setAttribute("name", "Jessica");
%>
<c:out value="${sessionScope.name}"></c:out><br>

<%-- default 属性：当变量不存在时，输出default属性值 --%>
<c:out value="${sex}" default="not sex"></c:out><br>

<%-- escapeXml 转义输出： 默认true开启    --%>
<c:out value="&ltout标签&gt"></c:out><br>
<c:out value="&ltout标签&gt" escapeXml="false"></c:out><br>

</body>
</html>
