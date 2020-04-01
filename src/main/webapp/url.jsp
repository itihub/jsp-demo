<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>URL操作标签的用法-url</title>
</head>
<body>


<%--
    动态生成url
--%>

<%-- 伪代码 --%>
<c:if test="${1<3}">
    <c:set var="partUrl">aa</c:set>
</c:if>

<c:url value="http://localhost:8088/${partUrl}" var="newUrl" scope="session"></c:url>

<a href="${newUrl}">newURL</a>

</body>
</html>
