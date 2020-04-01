<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>URL操作标签的用法-import</title>
</head>
<body>

<%--
    导入网络上的绝对路径
    预防加载网络资源出错从而影响JSP正常运行，使用catch来进行捕获 健壮代码
--%>
<c:catch var="error">

    <c:import url="http://www.baidu.com"></c:import>

</c:catch>
<c:out value="${error}"></c:out><br>


<%--
    导入相对路径文件
--%>
<c:catch var="error">
    <c:import url="example.txt" charEncoding="UTF-8"></c:import>
</c:catch>
<c:out value="${error}"></c:out><br>

<%--
    导入到内置对象中并打印
--%>
<c:catch var="error">
    <c:import url="example.txt" charEncoding="UTF-8" var="example" scope="session"></c:import>
</c:catch>
<c:out value="Import标签存储到Session ${sessionScope.example}"></c:out><br>
<c:out value="${error}"></c:out><br>

<%--
    context属性的用法
--%>
<c:catch var="error">
    <c:import url="/index.html" context="/examples"></c:import>
</c:catch>
<c:out value="${error}"></c:out><br>


</body>
</html>
