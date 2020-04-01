<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>循环控制标签-forEach</title>
</head>
<body>

<%
    List<String> fruits = new ArrayList<String>();
    fruits.add("apple");
    fruits.add("orange");
    fruits.add("pear");
    fruits.add("watermelon");
    fruits.add("banana");
    fruits.add("grape");

    request.setAttribute("fruits", fruits);
%>

<%--
    用法1：全部遍历
--%>
<c:forEach var="fruit" items="${fruits}">
    <c:out value="${fruit}"></c:out><br>
</c:forEach>
<hr>


<%--
    用法2：部分遍历
--%>
<c:forEach var="fruit" items="${fruits}" begin="1" end="4">
    <c:out value="${fruit}"></c:out><br>
</c:forEach>
<hr>

<%--
    用法3：部分遍历中指定步长
--%>
<c:forEach var="fruit" items="${fruits}" begin="1" end="4" step="2">
    <c:out value="${fruit}"></c:out><br>
</c:forEach>
<hr>

<%--
    用法4：全部遍历 输出元素的状态
--%>
<c:forEach var="fruit" items="${fruits}" varStatus="fru">
    <c:out value="${fruit}"></c:out><br>
    <c:out value="status: ${fru.index}"></c:out><br>
    <c:out value="status: ${fru.count}"></c:out><br>
    <c:out value="status: ${fru.first}"></c:out><br>
    <c:out value="status: ${fru.last}"></c:out><br>
    <c:out value="=============="></c:out><br>
</c:forEach>
<hr>
</body>
</html>
