<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>表达式控制标签-catch</title>
</head>
<body>

<%--
    catch标签的用法
    var 发生错误会存在此变量名称中 即 key 键
--%>
<c:catch var="error">
    <%--  模拟出错逻辑  --%>
    <c:set target="aa" property="bb">cc</c:set>
</c:catch>

<%-- 输出错误信息 --%>
<c:out value="${error}"></c:out>

</body>
</html>
