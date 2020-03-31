<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%-- 导入JSTL核心标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:out value="this is our first JSTL demo"/>

<%-- JSP和EL表达式 写法对比 --%>
<%=session.getAttribute("name")%>
<c:out value="${sessionScope.name}"></c:out>


<%-- emtry使用 --%>
<%-- 使用JSP定义一个变量并写到JSP内置对象中(因为EL是在内置对象里取值，不写到内置对象EL取不到值) --%>
<%String username = "zhangsan"; request.setAttribute("username", username);%>
<c:out value="${empty username}"></c:out>

</body>
</html>
