<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>流程控制标签-choose、when、otherwise</title>
</head>
<body>

<form action="#" method="post">
    <input type="text" name="score" value="${param.score}">
    <input type="submit">
</form>

<c:choose>

    <%--  成绩大于等于90，小于等于100  优秀  --%>
    <c:when test="${param.score >= 90 && param.score <= 100}">
        <c:out value="优秀"></c:out>
    </c:when>
    <%--  成绩大于等于80，小于90  良好  --%>
    <c:when test="${param.score >= 80 && param.score < 90}">
        <c:out value="良好"></c:out>
    </c:when>
    <%--  成绩大于等于70，小于80  中等  --%>
    <c:when test="${param.score >= 70 && param.score < 80}">
        <c:out value="中等"></c:out>
    </c:when>
    <%--  成绩大于等于60，小于70  及格  --%>
    <c:when test="${param.score >= 60 && param.score < 70}">
        <c:out value="及格"></c:out>
    </c:when>
    <%--  成绩小于60， 大于等于0  不及格  --%>
    <c:when test="${param.score < 60 && param.score >= 0}">
        <c:out value="不及格"></c:out>
    </c:when>

    <%--  小于0 大于100  不及格  --%>
    <c:otherwise>
        <c:out value="您的输入有问题"></c:out>
    </c:otherwise>
</c:choose>

</body>
</html>
