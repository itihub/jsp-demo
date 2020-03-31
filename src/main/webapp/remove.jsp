<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>表达式控制标签-remove</title>
</head>
<body>

<%--
    remove 标签使用
    var 是指要remove的key键
    注意：remove只能remove对象，不能删除对象里面的属性
--%>
<c:set var="lastName" value="Lily"></c:set>
<c:out value="${lastName}"></c:out>
<c:remove var="lastName"></c:remove>
<c:set var="firstName" value="Wanng"></c:set>
<c:remove var="firstName"></c:remove>
<c:out value="${firstName}"></c:out>

</body>
</html>
