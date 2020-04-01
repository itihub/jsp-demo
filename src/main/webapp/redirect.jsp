<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>URL操作标签的用法-redirect</title>
</head>
<body>

<c:redirect url="firstDemo.jsp">
    <c:param name="username">Lily</c:param>
    <c:param name="password">password</c:param>
</c:redirect>

</body>
</html>
