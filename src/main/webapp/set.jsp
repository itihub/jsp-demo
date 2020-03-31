<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
    实例化JavaBean
    id 实例化名称
    class 所在位置
--%>
<jsp:useBean id="person" class="org.example.Person"></jsp:useBean>
<html>
<head>
    <title>表达式控制标签-set</title>
</head>
<body>

<%--
    方式一：存值到scope中
    var 属性相当于key 键
    value 属性相当与value 值
    scope 指定以键值对的方式存在那个scope中
--%>
<c:set value="today" var="day" scope="request"></c:set>
<%-- 验证存储 --%>
<c:out value="${day}"></c:out><br>

<%--
    方式二：存值到scope中
    var 属性相当于key 键
    将value 值写到两个标签中
    scope 指定以键值对的方式存在那个scope中
--%>
<c:set var="age" scope="application">eleven</c:set>
<%-- 验证存储 --%>
<c:out value="${age}"></c:out><br>

<%--
    存值到JavaBean属性中
    target 是指给哪个对象赋值，也就是实例化对象的名字（要用EL表达式）
    property 是指对象属性的名字
--%>
<c:set target="${person}" property="name" value="张三"></c:set>
<%-- 验证JavaBean存储 --%>
<c:out value="${person.name}"></c:out><br>

<c:set target="${person}" property="age" value="18"></c:set>
<c:out value="${person.age}"></c:out><br>
<c:set target="${person}" property="address">北京市 北京市 朝阳区</c:set>
<c:out value="${person.address}"></c:out><br>

</body>
</html>
