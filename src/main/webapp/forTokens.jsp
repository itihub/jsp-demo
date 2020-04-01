<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>循环控制标签-forTokens</title>
</head>
<body>

<%--
    forTokens标签的用法
        items指定被迭代的字符串
        delims指定使用的分隔符
        var指定用来存放遍历到的成员

--%>
<c:forTokens items="010-23891-2321" delims="-" var="num">
    <c:out value="${num}"></c:out><br>
</c:forTokens>

</body>
</html>
