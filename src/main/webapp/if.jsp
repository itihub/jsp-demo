<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>流程控制标签-if</title>
</head>
<body>

<form action="#" method="post">
    <input type="text" name="score" value="${param.score}">
    <input type="submit">
</form>

<%--
    if 标签用法
    test 属性用于存放判断的条件，一般使用EL表达式来编写
    var 指定变量名称用来存放判断的结果类型为true 或 false
    scope 用来存放var属性存放的范围
--%>
<c:if test="${param.score >= 90}" var="result" scope="application">
    <c:out value="成绩优秀！"></c:out>
</c:if>
<c:if test="${param.score >= 80 && param.score <= 89 }" var="result" scope="application">
    <c:out value="成绩良好！"></c:out>
</c:if>

<%-- 打印判断结果 --%>
<c:out value="${result}"></c:out>

</body>
</html>
